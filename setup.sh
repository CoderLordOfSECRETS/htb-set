pip install pyftpdlib

echo '#!/bin/bash
python3 -m pyftpdlib --certfile <(openssl req -x509 -newkey rsa:2048 -keyout /tmp/tempftps.key -out /tmp/tempftps.crt -days 1 -nodes -subj "/CN=localhost") "$@"' | sudo tee /usr/local/bin/tempftps > /dev/null && sudo chmod +x /usr/local/bin/tempftps
echo "created tempftps"

