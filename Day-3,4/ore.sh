echo "enter numbers"
read -a num
for n in "${num[@]}"; do
    if ! [[ "$n" =~ ^[0-9]+$ ]]; then
        echo "Error: '$n' is not valid";
        continue;
    fi

    if (( n % 2 == 0)); then
        echo "$n is even"
    else
        echo "$n is odd"
    fi
done
