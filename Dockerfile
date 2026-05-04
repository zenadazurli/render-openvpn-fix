FROM dperson/openvpn-client:latest

COPY client.conf /etc/openvpn/client.conf
COPY auth.txt /etc/openvpn/auth.txt

ENTRYPOINT ["openvpn", "--config", "/etc/openvpn/client.conf", "--auth-user-pass", "/etc/openvpn/auth.txt"]