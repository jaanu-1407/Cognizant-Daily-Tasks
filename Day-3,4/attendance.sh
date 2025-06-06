#!/bin/bash
date=$(date +"%Y-%m-%d")

echo "Enter number of students:"
read count

declare -a students
declare -A attendance

for (( i=1; i<=count; i++ )); do
    echo "Enter name of student #$i:"
    read name
    students+=("$name")
done

for name in "${students[@]}"; do
    while true; do
        echo "Enter attendance for $name (p=Present, a=Absent, l=Leave):"
        read status
        case $status in
            p|P) attendance["$name"]="Present"; break ;;
            a|A) attendance["$name"]="Absent"; break ;;
            l|L) attendance["$name"]="Leave"; break ;;
            *) echo "Invalid input. Please enter p, a, or l." ;;
        esac
    done
done

echo -e "\nAttendance Report for $date"
echo "-------------------------------------------"
printf "%-15s | %-12s | %-10s\n" "Student Name" "Date" "Status"
echo "-------------------------------------------"
for name in "${students[@]}"; do
    printf "%-15s | %-12s | %-10s\n" "$name" "$date" "${attendance[$name]}"
done
