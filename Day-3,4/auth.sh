#!/bin/bash
declare -A users
users["admin"]="admin123:Admin"
users["guest"]="guest123:Guest"
users["janu"]="janu123:Member"
login()
{
    local attempts=0
    local max_attempts=3;
    while (( attempts < max_attempts )); do
        echo  "enter username"
        read username
        echo  enter password
        read password
        echo
        if [[ "${users[$username]}" ]]; then
            IFS=':' read stored_pass role <<< "${users[$username]}"
            if [[ "$password" == "$stored_pass" ]]; then
                echo "login successful"
                echo "Welcome, $username. You are logged in as $role."
                user_role_action "$role"
                return
            else
                echo "Incorrect password."
            fi
        else
            echo "User not found."
        fi
        ((attempts++))
        echo "Attempts left: $((max_attempts - attempts))"
    done
    echo "Maximum login attempts exceeded"
}
user_role_action()
{
    case $1 in
        Admin)
            echo "Welcome admin."
            ;;
        Guest)
            echo "Welcome guest."
            ;;
        Member)
            echo "Welcome member"
            ;;
        *)
            echo "Unknown role."
            ;;
    esac
}
login
