#!/usr/bin/env bash

echo "Simple Shell Wrapper"
echo "Type /help for available commands."

while true; do
    read -rp "> " input

    case "$input" in
    /help)
        echo "Commands:"
        echo "  /help   Show help"
        echo "  /clear  Clear screen"
        echo "  /exit   Exit"
        echo "  /quit   Exit"
        ;;
    /clear)
        clear
        ;;
    /exit | /quit)
        echo "Goodbye."
        break
        ;;
    "")
        continue
        ;;
    /*)
        echo "Unknown command: $input"
        ;;
    *)
        bash -c "$input"
        ;;
    esac
done
