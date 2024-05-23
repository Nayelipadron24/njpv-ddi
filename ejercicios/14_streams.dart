//Streams
//no es necesario recargar los cambios para verlos
//siempre estará a la escucha de información
//son flujos de informacion que pueden estar emitiendo valores periodicamnte
//puede ser una vez o nuca.
//son como el flujo de agua, el flujo es el strams
//puede cerrarse o abrise
void main(){
  emitNumbers().listen((value){
    print('emit: $value');
  });
}
Stream<int> emitNumbers(){
  return Stream.periodic(const Duration(seconds:1), (value){
    return value;
  }).take(5);
}