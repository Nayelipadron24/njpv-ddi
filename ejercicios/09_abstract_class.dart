void main() {
  //Una clase abstracta no se pede instanciar como si misma
//es un molde para crear otro molde
  //Se pueden crear funciones sin implementación
  final plantaViento = PlantaViento(energiaInicial:100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia:100);
  print('Viento: ${cargaBateria(plantaViento)}');
  print('Nuclear: ${cargaBateria(plantaNuclear)}');
  
  
}
double cargaBateria(PlantaEnergia planta){
  if(planta.cantidadEnergia <10){
    throw Exception('Sin energia suficiente');
  }
  return planta.cantidadEnergia -10;
}

enum TipoPlanta{
  viento,
  agua,
  nuclear
}
abstract class PlantaEnergia{
  double cantidadEnergia;
  final TipoPlanta tipo; //agua, viento ect
  PlantaEnergia({
    required this.cantidadEnergia,
    required this.tipo
  });
  void consumirEnergia(double cantidad);
}

//extends o el implements
//Extends: extender o heredar de una clase
class PlantaViento extends PlantaEnergia{
  PlantaViento({required double energiaInicial})
    : super(cantidadEnergia:energiaInicial, tipo:TipoPlanta.viento);
      
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
    
    
  }
      
}
class PlantaNuclear implemets PlantaEnergia{
  @override
  double cantidadEnergia;
  
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  PlantaNuclear({required double this.cantidadEnergia});
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
  
  
}