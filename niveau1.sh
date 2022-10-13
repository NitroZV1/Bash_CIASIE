var1=$((($RANDOM % 100) + 1))

let "b = 1"
let "h = 100"
let "coup = 1"

read -p "entrez un nombre compris entre 1 et 100 : " nombre
while [ "$nombre" -ne "$var1" ]; do
        if [ "$nombre" -lt "$var1" ]; then
                let "b = $nombre"
                result="Trop petit"
        else
                let "h = $nombre"
                result="Trop grand"
        fi
        read -p "$result, entrez un nombre compris entre ${b} et ${h} : " nombre
        coup=$((coup+1))
done
echo "Bravo, le nombre etait en effet $var1 et vous avez trouvé en $coup coup(s)"