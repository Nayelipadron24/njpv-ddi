//Futures
//un acuerdo de que en el futuro tendrás un valor para usarlos
void main() {
print('Inicio del programa');
  
  httpGet('http://').then((value){
    print(value);
  });
 print('Fin del porgreso');
  
  
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 2),(){
    return 'Respuesta de la petición http';
  });
}