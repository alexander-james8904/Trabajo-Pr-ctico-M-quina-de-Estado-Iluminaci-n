# Trabajo Practico Maquina de Estado Iluminacion

## Memoria descriptiva

El sistema representa un control de iluminacion de una habitacion. Las luces van a permanecer apagadas hasta que el sensor detecte algun movimiento, .Cuando el sensor deje de detectar movimiento va a esperar un determiado tiempo antes de apagarse.El tiempo es configurable.
![./info 2 foto.png](https://github.com/alexander-james8904/Trabajo-Practico-Maquina-de-Estado-Iluminacion/blob/master/Info%202%20foto.png)

- __Conf__: Configuracion ingresada.
- __t_config__: Tiempo de espera.
- __Sensor__: Medicion del sensor.

## Código

- Archivo main.l


```c
#include "cabecera.l"
#include "funciones.l"

int main (){
	parametros_t config;
	estados_t estado=apagado;
	config = f_inicio();
	estados_t (*fsm[])(tempertura_t) = {f_apagado, f_encendido}
    config = inicio();
    while(1) estado = (*fsm[estado])(config);
  return 0;
}
```

- Archivo de cabecera


```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char * getKey(char *key)

typedef emun {
	apagado=0,
	encendido=1
}estados_t;

typedef struct{
	char sen;
	char t_conf;
}parametros_t;


parametros_t f_inicio(void);
estados_t f_apagado(parametros_t);
estados_t f_encendido(parametros_t);


char *getKey(char *key);
char LeerSensor(void);
parametros_t LeerConf(char*);
void encendido(parametros_t);
```

- Archivo de configuracion


```c

# Tiempo configurado
t_conf 2

```
