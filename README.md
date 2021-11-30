# scan
Script hecho en bash para automatizar un poco el escaneo de máquinas

## Uso
```./scan.sh <ip>```

## Descripción general del funcionamiento del programa
Primero hace un escaneo de puertos TCP (SYN) simple y rápido, limitando a 5000 intentos por segundo, sin resolución dns ni pingeado, para luego procesar ese output y extraer los puertos, para después hacer un escaneo con scripts comunes y el script vuln para buscar vulnerabilidades comunes según las versiones de los servicios únicamente en los puertos abiertos para ahorrar tiempo.
