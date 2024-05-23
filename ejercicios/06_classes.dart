void main() {
  final Hero wolverine = new Hero(name: "Wolverine", power: "Otro");
  final Hero spider = new Hero(name: "Spider");
  print(wolverine);
  print(spider);
  print(wolverine.name);
  print(wolverine.power);
  
}


class Hero{
  String name;
  String power;
  
  Hero({
    
    required this.name,
    this.power = 'Sin poder'
  });
  //Hero(this.name, this.power);
 // Hero(String pName, String pPower)
   // : name = pName,
     // power=pPower;
  
  
  String toString (){
    return '$name - $power';
    
  }
  
}