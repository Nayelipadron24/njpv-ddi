void main() {

  final delfin = Delfin();
  delfin.nadar();
  final pato = Pato();
  pato.caminar();
  pato.nadar();
  pato.volar();
  
}
abstract class Animal{
  
}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}
mixin Volador{
  void volar()=> print('Estoy volando');
}
mixin Caminante{
  void caminar()=> print('Estoy caminando');
}

mixin Nadador{
  void nadar()=> print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador{}
class Murcelago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}


class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador, Caminante, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}
