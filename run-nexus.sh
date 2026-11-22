#!/bin/sh
cd "$(dirname "$0")" || exit 1

if ! command -v python3 >/dev/null 2>&1; then
    echo "Python 3 is not installed. Install it with: sudo apt install python3" >&2
    exit 1
fi

port_is_free() {
    python3 -c 'import socket,sys; s=socket.socket(); s.settimeout(1); result=s.connect_ex(("127.0.0.1", int(sys.argv[1]))); s.close(); sys.exit(0 if result != 0 else 1)' "$1"
}

PORT=8000
if ! port_is_free "$PORT"; then
    PORT=8001
    if ! port_is_free "$PORT"; then
        echo "Ports 8000 and 8001 are both in use. Stop an older server with Ctrl+C, then try again." >&2
        exit 1
    fi
fi

printf "\nNEXUS is starting at: http://localhost:%s\nStandalone emulator check: http://localhost:%s/emulator-test.html\nKeep this terminal open. Press Ctrl+C to stop.\n\n" "$PORT" "$PORT"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
