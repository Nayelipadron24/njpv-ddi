//Futures
//un acuerdo de que en el futuro tendrás un valor para usarlos
void main()async {
print('Inicio del programa');
  
 final value = await httpGet('http://');
  print(value);
 print('Fin del porgreso');
  
  
}

Future<String> httpGet(String url)async{
  await Future.delayed(const Duration(seconds:2));
  
  //throw('Error de peticion');
  return 'respuesta de la peticion http';
}