/*
	El proposito de este programa es convertir un string
	en una cadena de caracteres, para asi invertir el orden
	de este.
	Una vez hecho esto buscamos cuantas veces sale la letra
	'o' en el string y devolvemos el nuemero de veces que
	aparece.
	Antes de printar el resultado devolvemos el array de caracteres
	a string en un nuevo string de nombre new_message.
*/

string originalMessage = "The quick brown fox jumps over the lazy dog.";

char[] charMessage = originalMessage.ToCharArray();
Array.Reverse(charMessage);

int letterCount = 0;

foreach (char letter in charMessage) 
{ 
	if (letter == 'o') 
	{ 
		letterCount++; 
	} 
}

string new_message = new String(charMessage);

Console.WriteLine(new_message);
Console.WriteLine($"'o' appears {letterCount} times.");