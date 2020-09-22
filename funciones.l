char * getKey(char *key){
		char i =0;
		while(*(key+i)!=' '){
			i++;
		}
		*(key+i)=0;
		return key+i+1;
	}

parametros_t LeerConf(char *filename);{
	FILE*conf;
	char cadena[40], *key, *val;
	char variables [1][20]={"t_conf"},i;
	parametros_t config;
	if((conf= fopen(filename,"rt"))==NULL){
		printf("No se encontro el archivo de configuracion");
		return 1;
	}
	fgets(cadena,40,conf);
	do{
		key=cadena;
		if((*key)!='#' && strlen(key)>=0){
			val=getKey(key);
			for(i=0;i<1;i++){
				if(!strcmp(key,variables[i])){
				switch (i){
					case 0:config.t_conf = atoi(val);
					break;
				}	
				}
			}
		}
	fgets(cadena,40,conf);
	}while(!feof(conf));
	return config;
}

char LeerSensor(void){
	int s;
	scanf("%d",&s);
	return (char)s;
}
	
void encendido(parametros_t config){
	printf("\rLuz encendida durante %d segundos",config.t_conf)
	delay(t_conf*1000); 
}

estados_t f_apagado(parametros_t config){
	estados_t estado = apagado;
	printf("\rLuz apagada");
	config.sen = LeerSensor();
	return (config.sen =='0') ? apagado : encendido;
}

estados_t f_encendido(parametros_t config){
	estados_t estado = encendido;
	encendido(config);
	return apagado;
}

parametros_t f_inicio(parametros_t config){
	parametros_t config;
	config = LeerConf("config.conf");
	return config;
}
