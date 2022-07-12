#!/usr/bin/bash

# Sctipt to be used as entrynoint to your application.

runServer() {
    # Set entrypoint command here.
}

runMigrations() {
    until ! nc -z localhost 5432 # For postgersql.
    do
        sleep 1
    done

    # Set migrations command here.
}

while getopts :sm flag

do
    case $flag in
        s) runServer;;
        m) runMigrations;;
        *) echo "Invalid flag!"; exit 1;;
    esac
done

