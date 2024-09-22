#!/bin/bash

# Proveri da li je backend već pokrenut
if lsof -i :8080; then
    echo "Backend server je već pokrenut."
else
    # Pokreni backend
    ( cd backend && go run main.go ) &
    echo "Backend server pokrenut."
fi

# Ubaci proces na portu 8000, ako postoji
if lsof -i :8000; then
    echo "Ubija proces na portu 8000."
    kill $(lsof -t -i :8000)
fi

# Pokreni frontend
( cd frontend && python3 -m http.server 8000 ) &
echo "Frontend server pokrenut na portu 8000."

# Čekaj da se svi procesi završe
wait
