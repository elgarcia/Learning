#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <pthread.h>
#include <stdbool.h>

#define NUM_THREADS 5
#define Leer 0
#define Escribir 1
#define MAX_CLIENTS 5

// Mutex
pthread_mutex_t mutex;

// Estructura lista pipes
struct pipes_libres_t{
int lista_pipes_libres[MAX_CLIENTS];
int n_pipes_libres;
};

int main(int argc, char **argv)
{
// String  que se usa para mostrar mensajes y lectura de bytes
ssize_t readbytes;
char Buffer[30];
int Buffer_PID[30];

// creacion de los pipes

int nombre_ficheros_html[2];
pipe(nombre_ficheros_html);
int solicitud_acceso_servidor[2];
pipe(solicitud_acceso_servidor);
int aceptar_acceso_servidor[2];
pipe(aceptar_acceso_servidor);

// Estructura lista pipes
struct pipes_libres_t Pipeslibres[2];

// Funciones lista pipes
void init_pipes_libres(){
	int i, a=0;
	for (int j=0;j<2;j++){
	for(i=0; i < MAX_CLIENTS; i++){
	if (Pipeslibres[j].lista_pipes_libres[i] == 1){
	a++;
		}
	}
	Pipeslibres[j].n_pipes_libres = a;
	}
	}
int buscar_pipes_libres(){
	int i, id_pipe_http = -1;
	for(i=0; i < MAX_CLIENTS; i++){
	if (Pipeslibres[1].lista_pipes_libres[i] == 1){
	id_pipe_http = i;
	Pipeslibres[1].lista_pipes_libres[i] = 0;
			}
	}
	return id_pipe_http;
	}

void liberar_pipes_libres(int id_pipe){
	for (int i=0; i<2; i++){
	Pipeslibres[i].lista_pipes_libres[id_pipe] = 0;
	}
	}
// Proceso maestro
FILE * master;

master= fopen("listado_html.txt","r");

while(!feof(master)){
fgets(Buffer,30,master);
printf("%s",Buffer);
}
close(nombre_ficheros_html[0]); // Cerramos porque voy a escribir
write(nombre_ficheros_html[1],Buffer,30);
close(nombre_ficheros_html[1]);

printf("\n");

fclose(master);

// Fijar la cantidad de procesos a crear

static const int PROCESOS=5; // 2 clientes y un servidor
int estado_numero;

// CREACION PROCESO SERVIDOR

int pid = fork();
int id_pipe_http;
if (pid==0){
// Creacion de threads

void* pthread_function(int thread_id) {
 char Buffer4[30];
 char nombre_fichero[30];

 pthread_mutex_lock(&mutex);
 printf("I'm thread number %d in mutual exclusión\n",thread_id);
// Busca id_pipe_http
 id_pipe_http = buscar_pipes_libres();
// Situa id_pipe_http
 write(aceptar_acceso_servidor[1], id_pipe_http, 1);
 close(aceptar_acceso_servidor[1]);
// Lee string GET
 read(Pipeslibres[1].lista_pipes_libres[id_pipe_http], Buffer4, 100);
// Comprueba si existe archivo
 write(nombre_fichero, nombre_ficheros_html[1], 30);
 close(nombre_fichero);
 FILE *archivo;
 archivo= fopen(nombre_fichero,"r");
 if (archivo==NULL) {
 fputs("Error, archivo no encontrado", Pipeslibres[2].lista_pipes_libres[id_pipe_http]);
 exit(1);
 }
 else{
 char Buf[256];
 while(!feof(archivo)){
 fgets(Buf, 256, archivo);
 printf("%s", Buf);
 fclose(archivo);
 }
 write(Pipeslibres[2].lista_pipes_libres[id_pipe_http], Buf, 256);
 close(Pipeslibres[2].lista_pipes_libres[id_pipe_http]);
 }

 pthread_mutex_unlock(&mutex);
}

//Lee peticion Cliente

    char Buffer3[30];
    int pid;
    pid = fork();
    if (pid==0) {
    long int i;
    pthread_t thread[NUM_THREADS];

// Lectura de cada solicitud Cliente

    for(i=0; i < PROCESOS; i++){

    close(solicitud_acceso_servidor[1]);
    read(solicitud_acceso_servidor[0], Buffer3, 30);
// Init mutex
    pthread_mutex_init(&mutex,NULL);
// Creacion de threads
    pthread_create(thread+i,NULL,(void* (*)(void*))pthread_function,(void*)(i));
    }
// Wait for threads
    for (i=0;i<NUM_THREADS;++i) {
    pthread_join(thread[i],NULL);
    }
    }
}

// CREACION PROCESOS CLIENTES
for(estado_numero = 0; estado_numero < PROCESOS; estado_numero++)
{
    char Buffer2[30];
    int pid, ID;
    pid = fork();
    if (pid==0) {

    close(nombre_ficheros_html[1]); // Cerramos escritura, porque voy a leer
    readbytes=read(nombre_ficheros_html[0], Buffer2,30); //Lectura del fichero.
// Pide acceso al servidor
    close(solicitud_acceso_servidor[0]);
    ID=getpid();
    fgets(Buffer_PID,30,ID);
    write(solicitud_acceso_servidor[1],Buffer_PID,30);
    close(solicitud_acceso_servidor[1]);
// Obtiene la posicion id_pipe_http
    close(aceptar_acceso_servidor[1]);
    read(aceptar_acceso_servidor[0], id_pipe_http , 1);
    close(aceptar_acceso_servidor[0]);
// Genera string comando GET
    char Comando_GET[] = "GET nombre_ficheros_html[0]  HTTP/1.1 Host:localhost";
// Escribe string del comando Get
    write(Pipeslibres[1].lista_pipes_libres[id_pipe_http], Comando_GET, 100);
    close(Pipeslibres[1].lista_pipes_libres[id_pipe_http]);
// Lee el contenido del fichero servidor
    FILE* contenido;
    contenido = fopen("salida_pid_proceso_cliente.html", "a");
    while(!feof(contenido)){
    fgets(Pipeslibres[2].lista_pipes_libres[id_pipe_http], 256, contenido);
    printf("%s", Pipeslibres[2].lista_pipes_libres[id_pipe_http]);
    fclose(contenido);
    }
    wait();
    }
    else {
    if (pid==-1){
    printf("Error al hacer el fork()");
    exit(1);
    }
    break;
    }
 }
 wait();
}


