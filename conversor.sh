#!/bin/bash
while true; do
    clear
    echo ".:. Conversor .:."
    echo "- Digite el número del conversor de unidades."
    echo "1. Longitud."
    echo "2. Masa."
    echo "3. Tiempo"
    echo "4. Almacenamiento"
    echo "5. Salir"
    read -p "Número de conversor: " num

        case $num in
            1)
                while true; do
                    clear
                    echo ".:.Longitudes.:."
                    echo "m) metros"
                    echo "cm) centimetros"
                    echo "km) kilometros"
                    read -p "Cantidad a convertir: " cantidad
                    read -p "Escriba abreviación de la unidad de origen : " origen
                    read -p "Escriba abreviacion de la unidad de destino : " destino

                    case $origen in
                        "m")
                            case "$destino" in
                                "cm") resultado=$(echo "scale=3; $cantidad * 100" | bc) ;;
                                "km") resultado=$(echo "scale=3; $cantidad / 1000" | bc) ;;
                                *) echo "Unidad de destino no válida" ;;
                            esac
                            ;;
                        "cm")
                            case "$destino" in
                                "m") resultado=$(echo "scale=3; $cantidad / 100" | bc) ;;
                                "km") resultado=$(echo "scale=3; $cantidad / 100000" | bc) ;;
                                *) echo "Unidad de destino no válida" ;;
                            esac
                            ;;
                        "km")
                            case "$destino" in
                                "m") resultado=$(echo "scale=3; $cantidad * 1000" | bc) ;;
                                "cm") resultado=$(echo "scale=3; $cantidad * 100000" | bc) ;;
                                *) echo "Unidad de destino no válida" ;;
                            esac
                            ;;
                            *) echo "Unidad de origen no válida" ;;
                    esac

                    echo "$cantidad $origen es equivalente a $resultado $destino"

                    read -p "Presione Enter para continuar o 'b' para regresar al menú principal: " continuar

                    if [[ "$continuar" == "b" ]]; then
                        break
                    fi

                done ;;    

            2)
                while true; do
                    clear
                    echo ".:. Masa .:."
                    echo "mg) Miligramos"
                    echo "g) Gramos"
                    echo "kg) Kilogramos"
                    read -p "Ingrese la cantidad a convertir: " cantidad
                    read -p "Escriba la abreviación correspondiente de la unidad de origen : " origen
                    read -p "Escriba la abreviación correspondiente de la unidad de destino: " destino

                    case $origen in
                        "mg")
                            case $destino in
                                "kg") resultado=$(echo "scale=3; $cantidad / 1000000" | bc) ;; 
                                "g") resultado=$(echo "scale=3; $cantidad / 1000" | bc) ;;
                                "mg") resultado=$cantidad ;; 
                            esac
                            ;;
                        "g")
                            case $destino in
                                "kg") resultado=$(echo "scale=3; $cantidad / 1000" | bc) ;; 
                                "g") resultado=$cantidad ;; 
                                "mg") resultado=$(echo "scale=3; $cantidad * 1000" | bc) ;; 
                            esac
                            ;;
                        "kg")
                            case $destino in
                                "kg") resultado=$cantidad ;;
                                "g") resultado=$(echo "scale=3; $cantidad * 1000" | bc) ;; 
                                "mg") resultado=$(echo "scale=3; $cantidad * 1000000" | bc) ;;
                            esac
                            ;;
                            *) echo "Unidad de origen no válida" ;;
                    esac

                    echo "$cantidad $origen es equivalente a $resultado $destino"
                    read -p "Presione Enter para continuar o 'b' para regresar al menú principal: " continuar

                    if [[ "$continuar" == "b" ]]; then
                        break
                    fi

                done ;;  

    
            3)
                while true; do
                    clear 
                    echo ".:. Tiempo .:."
                    echo "seg) segundos"
                    echo "min) minutos"
                    echo "hr) horas"
                    read -p "Ingrese la cantidad a convertir" cantidad
                    read -p "Escriba la abreviacion de la unidad origen" origen
                    read -p "Escriba la abreviacion de la unidad destino" destino

                    case $origen in
                        "seg")
                            case $destino in 
                                "seg") resultado=$cantidad ;;
                                "min") resultado=$(echo "scale=4; $cantidad / 60" | bc) ;;
                                "hr") resultado=$(echo "scale=4; $cantidad / 3600" | bc) ;;
                            esac ;;
                        "min")
                            case $destino in 
                                "seg") resultado=$(echo "scale=4; $cantidad * 60" | bc) ;;
                                "min") resultado=$cantidad ;;
                                "hr") resultado=$(echo "scale=4; $cantidad / 60" | bc) ;;
                            esac ;;
                        "hr")
                            case $destino in 
                                "seg") resultado=$(echo "scale=4; $cantidad * 3600" | bc) ;;
                                "min") resultado=$(echo "scale=4; $cantidad *60" | bc) ;;
                                "hr") resultado=$cantidad ;;
                            esac ;;
                            *) echo "Unidad de origen no válida" ;;
                    esac

                    echo "$cantidad $origen es equivalente a $resultado $destino" 
                    read -p "Presione Enter para continuar o 'b' para regresar al menú principal: " continuar

                    if [[ "$continuar" == "b" ]]; then
                        break
                    fi

                done ;; 

            4)
                while true; do
                    clear
                    echo " .:. Almacenamiento .:. "
                    echo "b) bytes"
                    echo "kb) kilobytes"
                    echo "mb) megabytes"
                    echo "gb) gigabytes"
                    read -p "Ingrese la cantidad a convertir" cantidad
                    read -p "Escriba la abreviación de la unidad de origen" origen
                    read -p "Escriba la abreviación de la unidad de destino" destino

                    case $origen in 
                        "b")
                            case $destino in 
                                "b") resultado=$cantidad ;;
                                "kb") resultado=$(echo "scale=3; $cantidad / 1024" | bc) ;;
                                "mb") resultado=$(echo "scale=3; $cantidad / 1048576" | bc) ;;
                                "gb") resultado=$(echo "scale=3; $cantidad / 1073741824" | bc) ;;
                                *) echo "Unidad de destino no válida" ;;
                            esac ;;
                        "kb") 
                            case $destino in 
                                "b") resultado=$(echo "scale=3; $cantidad * 1024" | bc) ;;
                                "kb") resultado=$cantidad ;;
                                "mb") resultado=$(echo "scale=3; $cantidad / 1024" | bc) ;;
                                "gb") resultado=$(echo "scale=3; $cantidad / 1048576" | bc) ;;
                                *) echo "Unidad de destino no válida" ;;
                            esac ;;
                        "mb") 
                            case $destino in 
                                "b") resultado=$(echo "scale=3; $cantidad * 1048576" | bc) ;;
                                "kb") resultado=$(echo "scale=3; $cantidad * 1024" | bc) ;;
                                "mb") resultado=$cantidad ;;
                                "gb") resultado=$(echo "scale=3; $cantidad / 1024" | bc) ;;
                                *) echo "Unidad de destino no válida" ;;
                            esac ;;
                        "gb")
                            case $destino in 
                                "b")resultado=$(echo "scale=3; $cantidad * 1073741824" | bc) ;;
                                "kb") resultado=$(echo "scale=3; $cantidad * 1048576" | bc) ;;
                                "mb") resultado=$(echo "scale=3; $cantidad * 1024" | bc) ;;
                                "gb") resultado=$cantidad ;;
                                *) echo "Unidad de destino no válida" ;;
                            esac ;;
                    esac

                        echo "$cantidad $origen es equivalente a $resultado $destino"
                            read -p "Presione Enter para continuar o 'b' para regresar al menú principal: " continuar

                        if [[ "$continuar" == "b" ]]; then
                        break
                        fi

                done ;;
            5) 
                echo " Nos vemos ^^ "

                exit 0       

        esac

done   
