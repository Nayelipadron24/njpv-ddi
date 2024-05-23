//Futures
//un acuerdo de que en el futuro tendrás un valor para usarlos
void main()async {
print('Inicio del programa');
  
try{
  final value = await httpGet('http://');
  print(value);
}on Exception catch(err) {
  print('Exception: $err');
}catch(err){
  print("Error general: $err");
}finally{
  print('Entra al bloque finally');
}
 print('Fin del porgreso');
  
  
}

Future<String> httpGet(String url)async{
  await Future.delayed(const Duration(seconds:2));
  
  throw 'No hay parametros en la URL';
  //return 'respuesta de la peticion http';
}
