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
