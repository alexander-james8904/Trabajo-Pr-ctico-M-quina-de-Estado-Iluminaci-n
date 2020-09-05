#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char * getKey(char *key)

typedef emun {
	apagado=0,
	encendido=1
}estados_t:

typedef struct{
	char sen;
	char t_conf;
}parametros_t

int main(int argc,char *argv[]){
	FILE*conf;
	char cadena[40], *key, *val;
	char variables [1][20]={"t_conf"},i;
	char t_conf[20];
	if((conf= fopen("config.conf","rb"))==NULL){
		printf("No se encontro el archivo de configuracion");
		return 1;
	}
	fgets(cadena,40,conf);
	do{
		key=cadena;
		if((*key)!='#' && strlen(key)>=0){
			val=getKey(key);
			for(i=0;i<1;i++){
				if(!strcmp(key,variables[0])){
				switch (0){
					case 0:t_conf = atoi(val);
					break;
				}	
				}
			}
		}
	fgets(cadena,40,conf);
	}while(!feof(conf));
	return 0;
}

char * getKey(char *key){
	char i =0;
	
		while(*(key+i)!=' '){
			i++;
		}
		*(key+i)=0;
		return key+i+1;
}

estados_t f_apagado(parametros_t);
estados_t f_encendido(parametros_t);
