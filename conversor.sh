#!/bin/bash
while true; do
    echo ".:. Conversor .:."
    echo "- Digite el número del conversor de unidades."
    echo "1. Longitud."
    echo "2. Masa."
    read -p "Número de conversor: " num

    case $num in
        1)
            echo ".:.Longitudes.:."
            echo "m. metros"
            echo "cm. centimetros"
            echo "km. kilometros"
            echo "regresar al menú"
            read -p "Cantidad a convertir: " cantidad
            read -p "Escriba abreviación de la unidad de origen : " de
            read -p "Escriba abreviacion de la unidad de destino : " a

            case $de in
                "m")
                    case "$a" in
                        "cm") resultado=$(echo "scale=3; $cantidad * 100" | bc) ;;
                        "km") resultado=$(echo "scale=3; $cantidad / 1000" | bc) ;;
                        *) echo "Unidad de destino no válida" ;;
                    esac
                    ;;
                "cm")
                    case "$a" in
                        "m") resultado=$(echo "scale=3; $cantidad / 100" | bc) ;;
                        "km") resultado=$(echo "scale=3; $cantidad / 100000" | bc) ;;
                        *) echo "Unidad de destino no válida" ;;
                    esac
                    ;;
                "km")
                    case "$a" in
                        "m") resultado=$(echo "scale=3; $cantidad * 1000" | bc) ;;
                        "cm") resultado=$(echo "scale=3; $cantidad * 100000" | bc) ;;
                        *) echo "Unidad de destino no válida" ;;
                    esac
                    ;;
                *) echo "Unidad de origen no válida" ;;
            esac

            echo "$cantidad $de es equivalente a $resultado $a"
            ;;
        
        
    

        2)
            echo ".:. Masa .:."
            echo "mg) Miligramos"
            echo "g) Gramos"
            echo "kg) Kilogramos"
            read -p "Ingrese la cantidad a convertir: " cantidad
            read -p "Seleccione la abreviación correspondiente de la unidad de origen : " de
            read -p "Seleccione la abreviacióncorrespondiente de la unidad de destino: " a

    case $de in
        mg)
            case $a in
                kg) resultado=$(echo "scale=3; $cantidad / 1000000" | bc) ;; 
                g) resultado=$(echo "scale=3; $cantidad / 1000" | bc) ;;
                mg) resultado=$cantidad ;; 
            esac
            ;;
        g)
            case $a in
                kg) resultado=$(echo "scale=3; $cantidad / 1000" | bc) ;; 
                g) resultado=$cantidad ;; 
                mg) resultado=$(echo "scale=3; $cantidad * 1000" | bc) ;; 
            esac
            ;;
        kg)
            case $a in
                kg) resultado=$cantidad ;;
                g) resultado=$(echo "scale=3; $cantidad * 1000" | bc) ;; 
                mg) resultado=$(echo "scale=3; $cantidad * 1000000" | bc) ;;
            esac
            ;;
                *) echo "Unidad de origen no válida" ;;
            esac

            echo "$cantidad $de es equivalente a $resultado $a"
            ;;
    esac

done