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
