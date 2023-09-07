#!/bin/bash

function menu
{
echo "1.Recomendación rápida de restaurante"
echo "2.Recomendación detallada de restaurante"
echo "3.Consultar parámetros recomendación"
echo "4.Ajustar parámetras recomendación"
echo "5.Salir"
echo "-----------------------"
echo "Introduzca una opción (1/2/3/4/5)"
}

mpreu1="medium"
mpreu2="medium"
mpreu3="medium"
valor_preu=0.4
mdresscode1="informal"
mdresscode2="casual"
mdresscode3="casual"
valor_dresscode=0.1
malcohol1="Wine-Beer"
malcohol2="Wine-Beer"
malcohol3="Wine-Beer"
valor_alcohol=0.2
msmokingarea1="none"
msmokingarea2="not-permitted"
msmokingarea3="none"
msmokingarea4="not-permitted"
msmokingarea5="none"
valor_smokingarea=0.1
maccessibility1="partially"
maccessibility2="completely"
maccessibility3="partially"
valor_accessibility=0.2

clear
while true
do
menu
read -r tecla

case "$tecla" in
  1)
     num_l=$(cat rating_final.csv | wc -l)
     x=1
     z=1
     declare -A rat
     declare -A IDs
     declare -A puntuacion

     for (( i=1; i<=$num_l; i++))
	do

	j=$(cut -d "," -f 2,3 rating_final.csv | sort | cut -d "," -f 1 | head -$i | tail -1)
	k=$(cut -d "," -f 2,3 rating_final.csv | sort | cut -d "," -f 2 | head -$i | tail -1)

	if [ "$i" = 1 ]; then

	IDs[1]=$(cut -d "," -f 2,3 rating_final.csv | sort | cut -d "," -f 1 | head -1 | tail -1)
	puntuacion[1]=$(cut -d "," -f 2,3 rating_final.csv | sort | cut -d "," -f 2 | head -1 | tail -1)

	else
                if [ "$j" = "${IDs[$x]}" ]; then
                puntuacion[$x]=$((puntuacion[$x] + $k))
		((z++))
		else
			rat[$x]=$(echo "scale=2; ${puntuacion[$x]}/$z" | bc)
			((x++))
			z=1
			IDs[$x]=$j
			puntuacion[$x]=$k
		fi
	fi

	done

	num_rat=0
	rat_mayor=0

	for(( j=1; j<=$x; j++))
	do
	if [ "${rat[$j]}" > "$rat_mayor" ]; then
	rat_mayor=${rat[$j]}
	num_rat=$j
	fi

	done


	restaurant_rec=$(cat geoplaces2.csv | cut -d "," -f 1,5 | sort | cut -d "," -f 2 | head -$num_rat | tail -1)
	valors_preu=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 6 | head -$num_rat | tail -1)
	valors_dresscode=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 4 | head -$num_rat | tail -1)
	valors_alcohol=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 2 | head -$num_rat | tail -1)
	valors_smokingarea=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 3 | head -$num_rat | tail -1)
	valors_accesibility=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 5 | head -$num_rat | tail -1)

	if [ "$valors_preu" = "$mpreu1" ] || [ "$valors_preu" = "$mpreu2"] || [ "$valors_preu" = "$mpreu3" ];then
	valors_preu=$(echo "$valor_preu de price +")
	else
		valors_preu=$(echo " ")
		valor_preu=0
	fi

	if [ "$valors_dresscode" = "$mdresscode1" ] || [ "$valors_dresscode" = "$mdresscode2" ] || [ "$valors_dresscode" = "$mdresscode3" ];then
        valors_dresscode=$(echo "$valor_dresscode de dress_code +")
        else
                valors_dresscode=$(echo " ")
		valor_dresscode=0
        fi

	if [ "$valors_alcohol" = "$malcohol1" ] || [ "$valors_alcohol" = "$malcohol2" ] || [ "$valors_alcohol" = "$malcohol3" ];then
        valors_alcohol=$(echo "$valor_alcohol de alcohol +")
        else
                valors_alcohol=$(echo " ")
		valor_alcohol=0
        fi

	if [ "$valors_smokingarea" = "$msmokingarea1" ] || [ "$valors_smokingarea" = "$msmokingarea2" ] || [ "$valors_smokingarea" = "$msmokingarea3" ] || [ "$valors_smokingarea" = "$msmokingarea4" ] || [ "$valors_smokingarea" = "$msmokingarea5" ];then
        valors_smokingarea=$(echo "$valor_smokingarea de smoking_area +")
        else
                valors_smokingarea=$(echo " ")
		valor_smokingarea=0
        fi

	if [ "$valors_accesibility" = "$maccessibility1" ] || [ "$valors_accesibility" = "$maccessibility2" ] || [ "$valors_accesibility" = "$maccessibility3" ];then
        valors_accesibility=$(echo "$valor_accessibility de accesibility")
        else
                valors_accesibility=$(echo " ")
		valor_accesibility=0
        fi

	valorec=$(echo $valor_preu + $valor_dresscode + $valor_alcohol + $valor_smokingarea + $valor_accesibility | bc -l)

	clear
	echo "Restaurante recomendado: $restaurant_rec: ${rat[$num_rat]};
Valor recomendado: $valorec ( $valors_preu $valors_dresscode $valors_alcohol $valors_smokingarea $valors_accesibility)"
	echo " "
	read -n 1 -s -r -p "Pulsa cualquier tecla para continuar"
	clear
;;
  2)
	clear
	i=0
	while [ $i -eq 0 ]
	do
	echo "Indique valores para price(M,L,H): "
	read -r price

	if [ "$price" = "M" ];then
	i=1
	price1="medium"
	price2="medium"
	else
		if [ "$price" = "L" ];then
		i=1
		price1="low"
		price2="low"
		else
			if [ "$price" = "H" ];then
        		i=1
			price1="high"
			price2="high"
			else
				if [ "$price" = "M,L" ];then
        			i=1
				price1="medium"
				price2="low"
				else
					if [ "$price" = "M,H" ];then
				        i=1
					price1="medium"
					price2="high"
					else
						if [ "$price" = "L.M" ];then
       						i=1
						price1="medium"
        					price2="low"
						else
							if [ "$price" = "H,M" ];then
        						i=1
							price1="medium"
							price2="high"
							else
       	        			        		echo "Valor introducido incorrecto, vuelva a introducir valores"
        						fi
						fi
					fi
				fi
			fi
		fi
	fi

	done

	i=0
	while [ $i -eq 0 ]
	do
	echo "Indique valores para dress_code(I,C,F): "
	read -r dresscode

	if [ "$dresscode" = "I" ];then
	i=1
	dresscode1="informal"
	dresscode2="informal"
	else
		if [ "$dresscode" = "C" ];then
		i=1
		dresscode1="casual"
		dresscode2="casual"
		else
			if [ "$dresscode" = "F" ];then
			i=1
			dresscode1="formal"
			dresscode2="formal"
			else
				if [ "$dresscode" = "I,C" ];then
				i=1
				dresscode1="informal"
				dresscode2="casual"
				else
					if [ "$dresscode" = "C,I" ];then
					i=1
                	                dresscode1="informal"
        	                        dresscode2="casual"
	                                else
						if [ "$dresscode" = "F,C" ];then
						i=1
						dresscode1="formal"
						dresscode2="casual"
						else
							if [ "$dresscode" = "C,F" ];then
							i=1
                	                                dresscode1="formal"
        	                                        dresscode2="casual"
	                                                else
								echo "Valor introducido incorrecto, vuelva a introducir valores"
							fi
						fi
					fi
				fi
			fi
		fi
	fi

	done

	i=0
        while [ $i -eq 0 ]
        do
	echo "Indique valores para alcohol(N,W,F): "
	read -r alcohol
	if [ "$alcohol" = "N" ];then
	i=1
	alcohol1="No_Alcohol_Served"
	alcohol2="No_Alcohol_Served"
	else
        	if [ "$alcohol" = "W" ];then
		i=1
		alcohol1="Wine-Beer"
		alcohol2="Wine-Beer"
		else
			if [ "$alcohol" = "F" ];then
			i=1
			alcohol1="Full_Bar"
			alcohol2="Full_Bar"
			else
				if [ "$alcohol" = "W,F" ];then
				i=1
				alcohol1="Wine-Beer"
				alcohol2="Full_Bar"
				else
					if [ "$alcohol" = "F,W" ];then
					i=1
                	                alcohol1="Wine-Beer"
        	                        alcohol2="Full_Bar"
	                                else
					        echo "Valor introducido incorrecto, vuelva a introducir valores"
        				fi
				fi
			fi
		fi
	fi
        done

	i=0
        while [ $i -eq 0 ]
        do
	echo "Indique valores para smoking_area(0,B,P,S,N): "
	read -r smokingarea
	if [ "$smokingarea" = "0" ];then
	i=1
	smokingarea1="none"
	smokingarea2="none"
	smokingarea3="none"
	else
		if [ "$smokingarea" = "B" ];then
		i=1
		smokingarea1="only at bar"
		smokingarea2="only at bar"
		smokingarea3="only at bar"
		else
			if [ "$smokingarea" = "P" ];then
			i=1
			smokingarea1="permitted"
			smokingarea2="permitted"
			smokingarea3="permitted"
			else
				if [ "$smokingarea" = "S" ];then
				i=1
				smokingarea1="section"
				smokingarea2="section"
				smokingarea3="section"
				else
					if [ "$smokingarea" = "N" ];then
					i=1
					smokingarea1="not-permitted"
					smokingarea2="not-permitted"
					smokingarea3="not-permitted"
					else
						if [ "$smokingarea" = "N,0" ];then
						i=1
						smokingarea1="not-permitted"
						smokingarea2="none"
						smokingarea3="none"
						else
							if [ "$smokingarea" = "0,N" ];then
							i=1
                                                	smokingarea1="not-permitted"
                                                	smokingarea2="none"
							smokingarea3="none"
                                                	else
								if [ "$smokingarea" = "B,P,S" ];then
								i=1
								smokingarea1="only at bar"
								smokingarea2="permitted"
								smokingarea3="section"
								else
									if [ "$smokingarea" = "B,P" ];then
									i=1
                        	                                        smokingarea1="only at bar"
                	                                                smokingarea2="permitted"
        	                                                        smokingarea3="permitted"
	                                                                else
										if [ "$smokingarea" = "P,B" ];then
										i=1
                        	                                                smokingarea1="only at bar"
                	                                                        smokingarea2="permitted"
        	                                                                smokingarea3="permitted"
	                                                                        else
											if [ "$smokingarea" = "P,S" ];then
											i=1
											smokingarea1="permitted"
											smokingarea2="section"
											smokingarea3="section"
											else
												if [ "$smokingarea" = "S,P" ];then
                                                                                        	i=1
                                                                                        	smokingarea1="permitted"
                                                                                        	smokingarea2="section"
                                                                                        	smokingarea3="section"
                                                                                        	else
													if [ "$smokingarea" = "B,S" ];then
													i=1
                        	                                                                        smokingarea1="only at bar"
                	                                                                                smokingarea2="section"
        	                                                                                        smokingarea3="section"
	                                                                                                else
														if [ "$smokingarea" = "S,B" ];then
                                	                                                                        i=1
                        	                                                                                smokingarea1="only at bar"
                	                                                                                        smokingarea2="section"
        	                                                                                                smokingarea3="section"
	                                                                                                        else
													                echo "Valor introducido incorrecto, vuelva a introducir valores"
        													fi
													fi
												fi
											fi
										fi
									fi
								fi
							fi
						fi
					fi
				fi
			fi
		fi
	fi

        done

	i=0
        while [ $i -eq 0 ]
        do
	echo "Indique valores para accessibility(N,P,C): "
	read -r accessibility
	if [ "$accessibility" = "N" ];then
	i=1
	accessibility1="no_accessibility"
	accessibility2="no_accessibility"
	else
		if [ "$accessibility" = "P" ];then
		i=1
        	accessibility1="partially"
        	accessibility2="partially"
	        else
			if [ "$accessibility" = "C" ];then
			i=1
                	accessibility1="completely"
        	        accessibility2="completely"
	                else
				if [ "$accessibility" = "P,C" ];then
				i=1
                	        accessibility1="partially"
        	                accessibility2="completely"
	                        else
					if [ "$accessibility" = "C,P" ];then
					i=1
                	                accessibility1="completely"
                        	        accessibility2="partially"
                                	else
				                echo "Valor introducido incorrecto, vuelva a introducir valores"
        				fi
				fi
			fi
		fi
	fi

        done

	num_l=$(cat geoplaces2.csv | wc -l)
	x=0

        declare -A IDs

        for(( i=1; i<=$num_l; i++))
        do

        p=$(cut -d "," -f 1,16 geoplaces2.csv | sort | cut -d "," -f 2 | head -$i | tail -1)
        d=$(cut -d "," -f 1,14 geoplaces2.csv | sort | cut -d "," -f 2 | head -$i | tail -1)
	s=$(cut -d "," -f 1,13 geoplaces2.csv | sort | cut -d "," -f 2 | head -$i | tail -1)
	a=$(cut -d "," -f 1,15 geoplaces2.csv | sort | cut -d "," -f 2 | head -$i | tail -1)
	w=$(cut -d "," -f 1,12 geoplaces2.csv | sort | cut -d "," -f 2 | head -$i | tail -1)

        if [ "$price1" = "$p" ] || [ "$price2" = "$p" ];then
		if [ "$dresscode1" = "$d" ] || [ "$dresscode2" = "$d" ];then
			if [ "$smokingarea1" = "$s" ] || [ "$smokingarea2" = "$s" ] || [ "$smokingarea3" = "$s" ];then
				if [ "$accessibility1" = "$a" ] || [ "$accessibility2" = "$a" ];then
					if [ "$alcohol1" = "$w" ] || [ "$alcohol2" = "$w" ];then
					((x++))
				        IDs[$x]=$(cut -d "," -f 1 geoplaces2.csv | sort | head -$i | tail -1)
					fi
				fi
			fi
		fi
	fi
	done

	declare -A puntuacio
	declare -A rat
	z=0

	for(( m=1; m<=$x; m++))
	do
		gr=$(grep -n "${IDs[$m]}" rating_final.csv | cut -d ":" -f 1)
        	num_lin=$(echo $gr | wc -w)

		for ((conta=1; conta<=$num_lin; conta++))
                do

                lin=$(echo $gr | cut -d " " -f $conta)
		punt=$(cut -d "," -f 2,3 rating_final.csv | sort | cut -d "," -f 2 | head -$lin | tail -1)
		puntuacio[$m]=$((puntuacio[$m] + $punt))
		((z++))
		done

		rat[$m]=$(echo "scale=2; ${puntuacio[$m]}/$z" | bc)
		z=0
	done

        rat_mayor=0
	num_rat=0

        for(( j=1; j<=$x; j++))
        do
	if [ 1 -eq $(echo "(${rat[$j]} - $rat_mayor) > 0" | bc) ]; then
        rat_mayor=${rat[$j]}
        num_rat=$(echo "$j")
        fi
        done

	if [ "$num_rat" -ne 0 ];then

	gr1=$(grep -n "${IDs[$num_rat]}" geoplaces2.csv | cut -d ":" -f 1)

	restaurant_rec=$(cat geoplaces2.csv | cut -d "," -f 5 |  head -$gr1 | tail -1)
        valors_preu=$(cat geoplaces2.csv | cut -d "," -f 16 | head -$gr1 | tail -1)
        valors_dresscode=$(cat geoplaces2.csv | cut -d "," -f 14 | head -$gr1 | tail -1)
        valors_alcohol=$(cat geoplaces2.csv | cut -d "," -f 12 | head -$gr1 | tail -1)
        valors_smokingarea=$(cat geoplaces2.csv | cut -d "," -f 13 | head -$gr1 | tail -1)
        valors_accesibility=$(cat geoplaces2.csv | cut -d "," -f 15 | head -$gr1 | tail -1)

	if [ "$valors_preu" = "$mpreu1" ] || [ "$valors_preu" = "$mpreu2"] || [ "$valors_preu" = "$mpreu3" ];then
        valors_preu=$(echo "$valor_preu de price +")
        else
                valors_preu=$(echo " ")
                valor_preu=0
        fi

        if [ "$valors_dresscode" = "$mdresscode1" ] || [ "$valors_dresscode" = "$mdresscode2" ] || [ "$valors_dresscode" = "$mdresscode3" ];then
        valors_dresscode=$(echo "$valor_dresscode de dress_code +")
        else
                valors_dresscode=$(echo " ")
                valor_dresscode=0
        fi

        if [ "$valors_alcohol" = "$malcohol1" ] || [ "$valors_alcohol" = "$malcohol2" ] || [ "$valors_alcohol" = "$malcohol3" ];then
        valors_alcohol=$(echo "$valor_alcohol de alcohol +")
        else
                valors_alcohol=$(echo " ")
                valor_alcohol=0
        fi

        if [ "$valors_smokingarea" = "$msmokingarea1" ] || [ "$valors_smokingarea" = "$msmokingarea2" ] || [ "$valors_smokingarea" = "$msmokingarea3" ] || [ "$valors_smokingarea" = "$msmokingarea4" ] || [ "$valors_smokingarea" = "$msmokingarea5" ];then
        valors_smokingarea=$(echo "$valor_smokingarea de smoking_area +")
        else
                valors_smokingarea=$(echo " ")
                valor_smokingarea=0
        fi

        if [ "$valors_accesibility" = "$maccessibility1" ] || [ "$valors_accesibility" = "$maccessibility2" ] || [ "$valors_accesibility" = "$maccessibility3" ];then
        valors_accesibility=$(echo "$valor_accessibility de accesibility")
        else
                valors_accesibility=$(echo " ")
                valor_accesibility=0
        fi


        valorec=$(echo $valor_preu + $valor_dresscode + $valor_alcohol + $valor_smokingarea + $valor_accesibility | bc -l)

	clear
        echo "Restaurante recomendado: $restaurant_rec: ${rat[$num_rat]}; $valorec ( $valors_preu  $valors_dresscode  $valors_alcohol  $valors_smokingarea $valors_accesibility)"
        echo " "
        read -n 1 -s -r -p "Pulsa cualquier tecla para continuar"
        clear

	else
		echo "No se ha encontrado ninguna coincidencia"
		echo " "
	read -n 1 -s -r -p "Pulsa cualquier tecla para continuar"
	clear
	fi
;;
  3)
	restaurant_rec=$(cat geoplaces2.csv | cut -d "," -f 1,5 | sort | cut -d "," -f 2 | head -$num_rat | tail -1)
        valors_preu=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 6 | head -$num_rat | tail -1)
        valors_dresscode=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 4 | head -$num_rat | tail -1)
        valors_alcohol=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 2 | head -$num_rat | tail -1)
        valors_smokingarea=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 3 | head -$num_rat | tail -1)
        valors_accesibility=$(cat geoplaces2.csv | cut -d "," -f 1,12,13,14,15,16 | sort | cut -d "," -f 5 | head -$num_rat | tail -1)

	if [ "$valors_preu" = "$mpreu1" ] || [ "$valors_preu" = "$mpreu2" ] || [ "$valors_preu" = "$mpreu3" ];then
        preu=$valor_preu
        else
                preu=0
        fi

        if [ "$valors_dresscode" = "$mdresscode1" ] || [ "$valors_dresscode" = "$mdresscode2" ];then
        dresscode=$valor_dresscode
        else
                dresscode=0
        fi

	if [ "$valors_alcohol" = "$malcohol1" ];then
        alcohol=$valor_alcohol
        else
                alcohol=0
        fi

        if [ "$valors_smokingarea" = "$msmokingarea1" ] || [ "$valors_smokingarea" = "$msmokingarea2" ];then
        smokingarea=$valor_smokingarea
        else
                smokingarea=0
        fi

        if [ "$valors_accesibility" = "$maccessibility1" ] || [ "$valors_accesibility" = "$maccessibility2" ];then
        accesibility=$valor_accessibility
        else
                accesibility=0
        fi

	clear
	echo "Peso precio: $preu"
	echo "Peso smoking area: $smokingarea"
	echo "Peso alcohol: $alcohol"
	echo "Peso dress code: $dresscode"
	echo "Peso accesibility: $accesibility"
	echo " "
	echo "------------------------------"
	echo " "
	echo "Precios: $valors_preu"
	echo "Smoking areas: $valors_smokingarea"
	echo "Alcohol services: $valors_alcohol"
	echo "Dress codes: $valors_dresscode"
	echo "Accesibilities: $valors_accesibility"
	echo " "

	read -n 1 -s -r -p "Pulsa cualquier tecla para continuar"
	clear
;;
  4)
	clear
        i=0
        while [ $i -eq 0 ]
        do
        echo "Indique valores para price(M,L,H): "
        read -r price

        if [ "$price" = "M" ];then
        i=1
        mprice1="medium"
        mprice2="medium"
	mprice3="medium"
        else
                if [ "$price" = "L" ];then
                i=1
                mprice1="low"
                mprice2="low"
		mprice3="low"
                else
                        if [ "$price" = "H" ];then
                        i=1
                        mprice1="high"
                        mprice2="high"
			mprice3="high"
                        else
                                if [ "$price" = "M,L" ];then
                                i=1
                                mprice1="medium"
                                mprice2="low"
				mprice3="low"
                                else
                                        if [ "$price" = "M,H" ];then
                                        i=1
                                        mprice1="medium"
                                        mprice2="high"
					mprice3="high"
                                        else
                                                if [ "$price" = "L.M" ];then
                                                i=1
                                                mprice1="medium"
                                                mprice2="low"
						mprice3="low"
                                                else
                                                        if [ "$price" = "H,M" ];then
                                                        i=1
                                                        mprice1="medium"
                                                        mprice2="high"
							mprice3="high"
                                                        else
                                                                echo "Valor introducido incorrecto, vuelva a introducir valores"
                                                        fi
                                                fi
                                        fi
                                fi
                        fi
                fi
        fi
	done

	i=0
        while [ $i -eq 0 ]
        do
	echo "Indique valores para dress_code(I,C,F): "
        read -r dresscode

        if [ "$dresscode" = "I" ];then
        i=1
        mdresscode1="informal"
        mdresscode2="informal"
	mdresscode3="informal"
        else
                if [ "$dresscode" = "C" ];then
                i=1
                mdresscode1="casual"
                mdresscode2="casual"
		mdresscode3="casual"
                else
                        if [ "$dresscode" = "F" ];then
                        i=1
                        mdresscode1="formal"
                        mdresscode2="formal"
			mdresscode3="formal"
                        else
                                if [ "$dresscode" = "I,C" ];then
                                i=1
                                mdresscode1="informal"
                                mdresscode2="casual"
				mdresscode3="informal"
                                else
                                        if [ "$dresscode" = "C,I" ];then
                                        i=1
                                        mdresscode1="informal"
                                        mdresscode2="casual"
					mdresscode3="informal"
                                        else
                                                if [ "$dresscode" = "F,C" ];then
                                                i=1
                                                mdresscode1="formal"
                                                mdresscode2="casual"
						mdresscode3="casual"
                                                else
                                                        if [ "$dresscode" = "C,F" ];then
                                                        i=1
                                                        mdresscode1="formal"
                                                        mdresscode2="casual"
							mdresscode3="formal"
                                                        else
                                                                echo "Valor introducido incorrecto, vuelva a introducir valores"
                                                        fi
                                                fi
                                        fi
                                fi
                        fi
                fi
        fi
	done

	 i=0
        while [ $i -eq 0 ]
        do
        echo "Indique valores para alcohol(N,W,F): "
        read -r alcohol
        if [ "$alcohol" = "N" ];then
        i=1
        malcohol1="No_Alcohol_Served"
        malcohol2="No_Alcohol_Served"
	malcohol3="No_Alcohol_Served"
        else
                if [ "$alcohol" = "W" ];then
                i=1
                malcohol1="Wine-Beer"
                malcohol2="Wine-Beer"
		malcohol3="Wine-Beer"
                else
                        if [ "$alcohol" = "F" ];then
                        i=1
                        malcohol1="Full_Bar"
                        malcohol2="Full_Bar"
			malcohol3="Full_Bar"
                        else
                                if [ "$alcohol" = "W,F" ];then
                                i=1
                                malcohol1="Wine-Beer"
                                malcohol2="Full_Bar"
				malcohol3="Full_Bar"
                                else
                                        if [ "$alcohol" = "F,W" ];then
                                        i=1
                                        malcohol1="Wine-Beer"
                                        malcohol2="Full_Bar"
					malcohol3="Full_Bar"
                                        else
                                                echo "Valor introducido incorrecto, vuelva a introducir valores"
                                        fi
                                fi
                        fi
                fi
        fi
        done

	i=0
        while [ $i -eq 0 ]
        do
        echo "Indique valores para smoking_area(0,B,P,S,N): "
        read -r smokingarea
        if [ "$smokingarea" = "0" ];then
        i=1
        msmokingarea1="none"
        msmokingarea2="none"
        msmokingarea3="none"
	msmokingarea4="none"
	msmokingarea5="none"
        else
                if [ "$smokingarea" = "B" ];then
                i=1
                msmokingarea1="only at bar"
                msmokingarea2="only at bar"
                msmokingarea3="only at bar"
		msmokingarea4="only at bar"
		msmokingarea5="only at bar"
                else
                        if [ "$smokingarea" = "P" ];then
                        i=1
                        msmokingarea1="permitted"
                        msmokingarea2="permitted"
                        msmokingarea3="permitted"
			msmokingarea4="permitted"
			msmokingarea5="permitted"
                        else
                                if [ "$smokingarea" = "S" ];then
                                i=1
                                msmokingarea1="section"
                                msmokingarea2="section"
                                msmokingarea3="section"
				msmokingarea4="section"
				msmokingarea5="section"
                                else
                                        if [ "$smokingarea" = "N" ];then
                                        i=1
                                        msmokingarea1="not-permitted"
                                        msmokingarea2="not-permitted"
                                        msmokingarea3="not-permitted"
					msmokingarea4="not-permitted"
					msmokingarea5="not-permitted"
                                        else
                                                if [ "$smokingarea" = "N,0" ];then
                                                i=1
                                                msmokingarea1="not-permitted"
                                                msmokingarea2="none"
                                                msmokingarea3="none"
						msmokingarea4="none"
						msmokingarea5="none"
                                                else
                                                        if [ "$smokingarea" = "0,N" ];then
                                                        i=1
                                                        msmokingarea1="not-permitted"
                                                        msmokingarea2="none"
                                                        msmokingarea3="none"
							msmokingarea4="none"
							msmokingarea5="none"
                                                        else
                                                                if [ "$smokingarea" = "B,P,S" ];then
                                                                i=1
                                                                msmokingarea1="only at bar"
                                                                msmokingarea2="permitted"
                                                                msmokingarea3="section"
								msmokingarea4="section"
								msmokingarea5="section"
                                                                else
                                                                        if [ "$smokingarea" = "B,P" ];then
                                                                        i=1
                                                                        msmokingarea1="only at bar"
                                                                        msmokingarea2="permitted"
                                                                        msmokingarea3="permitted"
									msmokingarea4="permitted"
									msmokingarea5="permitted"
                                                                        else
										if [ "$smokingarea" = "P,B" ];then
                                                                                i=1
                                                                                msmokingarea1="only at bar"
                                                                                msmokingarea2="permitted"
                                                                                msmokingarea3="permitted"
										msmokingarea4="permitted"
										msmokingarea5="permitted"
                                                                                else
                                                                                        if [ "$smokingarea" = "P,S" ];then
                                                                                        i=1
                                                                                        msmokingarea1="permitted"
                                                                                        msmokingarea2="section"
                                                                                        msmokingarea3="section"
											msmokingarea4="section"
											msmokingarea5="section"
                                                                                        else
                                                                                                if [ "$smokingarea" = "S,P" ];then
                                                                                                i=1
                                                                                                msmokingarea1="permitted"
                                                                                                msmokingarea2="section"
                                                                                                msmokingarea3="section"
												msmokingarea4="section"
												msmokingarea5="section"
                                                                                                else
                                                                                                        if [ "$smokingarea" = "B,S" ];then
                                                                                                        i=1
                                                                                                        msmokingarea1="only at bar"
                                                                                                        msmokingarea2="section"
                                                                                                        msmokingarea3="section"
													msmokingarea4="section"
													msmokingarea5="section"
                                                                                                        else
                                                                                                                if [ "$smokingarea" = "S,B" ];then
                                                                                                                i=1
                                                                                                                msmokingarea1="only at bar"
                                                                                                                msmokingarea2="section"
                                                                                                                msmokingarea3="section"
														msmokingarea4="section"
														msmokingarea5="section"
                                                                                                                else
                                                                                                                        echo "Valor introducido incorrecto, vuelva a introducir valores"
                                                                                                                fi
                                                                                                        fi
                                                                                                fi
                                                                                        fi
                                                                                fi
                                                                        fi
                                                                fi
                                                        fi
                                                fi
                                        fi
                                fi
                        fi
		fi
	fi
	done

	 i=0
        while [ $i -eq 0 ]
        do
        echo "Indique valores para accessibility(N,P,C): "
        read -r accessibility
        if [ "$accessibility" = "N" ];then
        i=1
        maccessibility1="no_accessibility"
        maccessibility2="no_accessibility"
	maccessibility3="no_accessibility"
        else
                if [ "$accessibility" = "P" ];then
                i=1
                maccessibility1="partially"
                maccessibility2="partially"
		maccessibility3="partially"
                else
                        if [ "$accessibility" = "C" ];then
                        i=1
                        maccessibility1="completely"
                        maccessibility2="completely"
			maccessibility3="completely"
                        else
                                if [ "$accessibility" = "P,C" ];then
                                i=1
                                maccessibility1="partially"
                                maccessibility2="completely"
				maccessibility3="completely"
                                else
                                        if [ "$accessibility" = "C,P" ];then
                                        i=1
                                        maccessibility1="completely"
                                        maccessibility2="partially"
					maccessibility3="partially"
                                        else
                                                echo "Valor introducido incorrecto, vuelva a introducir valores"
                                        fi
                                fi
                        fi
                fi
        fi
        done

	clear

	i=0
        while [ $i -eq 0 ]
        do
        echo "Indique nuevo peso para price: "
        read -r price

	valor_preu=$price
	i=1

	done

	i=0
        while [ $i -eq 0 ]
        do
	echo "Indique nuevo peso para dress code: "
        read -r dresscode

	valor_dresscode=$dresscode
	i=1

	done

	 i=0
        while [ $i -eq 0 ]
        do
        echo "Indique nuevo peso para alcohol: "
        read -r alcohol

	valor_alcohol=$alcohol
        i=1
        done

	i=0
        while [ $i -eq 0 ]
        do
        echo "Indique nuevo peso para smoking_area: "
        read -r smokingarea

	valor_smokingarea=$smokingarea
        i=1
	done

	i=0
        while [ $i -eq 0 ]
        do
        echo "Indique valores para accessibility(N,P,C): "
        read -r accessibility

	valor_accessibility=$accessibility
        i=1
        done

	echo "Parámetros ajustados"

	read -n 1 -s -r -p "Pulsa cualquier tecla para continuar"
        clear

;;
  5)
	preu1="medium"
	preu2="medium"
	preu3="medium"
	valor_preu=0.4
	dresscode1="informal"
	dresscode2="casual"
	dresscode3="casual"
	valor_dresscode=0.1
	alcohol1="Wine-Beer"
	alcohol2="Wine-Beer"
	alcohol3="Wine-Beer"
	valor_alcohol=0.2
	smokingarea1="none"
	smokingarea2="not-permitted"
	smokingarea3="only at bar"
	smokingarea4="section"
	smokingarea5="permitted"
	valor_smokingarea=0.1
	accessibility1="partially"
	accessibility2="completely"
	accessibility3="no_accessibility"
	valor_accessibility=0.2
  clear
  exit
;;
*)
esac
done
