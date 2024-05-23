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
Stream<int> emitNumbers()async*{
  final valuesToEmit = [1,2,3,4,5];
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds:3));
    //ceder un valor
    yield i;
  }
}