#include "cabecera.l"

int main (){
	parametros_t para;
	estados_t estado=apagado;
	estados_t (*fsm[])(tempertura_t) = {f_espera, f_calentar}
    config = inicio();
    while(1) estado = (*fsm[estado])(para);
  return 0;
}
