#!/usr/bin/env python3

import os
import socket

print("Content-type: text/html; charset=utf-8\n\n")
print("<html><body>")
print("<h1>Serviço em execução Magalu Cloud: " + socket.gethostbyname(socket.gethostname()) + "</h1>")
print("</body></html>")