// ORIENTAÇÃO A OBJETOS

class Product {
  final String name; // "final" define que o valor é inalterável
  final int id;

  // Construtor da classe
  Product({
    required this.id,
    required this.name,
  });

  void getProductDetails() {
    print('Nome: $name');
    print('ID: ${id.toString()}');
  }
}

void classInstanceExample() {
  Product p = Product(id: 1, name: 'Garrafa');

  p.getProductDetails();
}

// HERANÇA
class Eletronic extends Product {
  final String power;

  Eletronic({
    required this.power,
    required int idParameter,
    required String nameParameter,
  }) : super(id: idParameter, name: nameParameter);

  void getProductPower() {
    print('A potência do produto é $power');
  }
}

void inheritanceExample() {
  Eletronic e = Eletronic(idParameter: 2, nameParameter: 'Geladeira', power: '110v');

  e.getProductDetails();
  e.getProductPower();
}

// ENCAPSULAMENTO
class Person { 
  final String name;
  String _nationality = 'Brasileiro';

  Person({
    required this.name,
    required String nationalityParameter,
  }) {
    _nationality = nationalityParameter;
  }

  void getOrigin() {
    print('Nacionalidade da pessoa: $_nationality');
  }
}

void encapsulationExample() {
  Person p = Person(name: 'Gabriel', nationalityParameter: 'Brasileiro');
  
  print('Nome da pessoa: ${p.name}');
  print('Nacionalidade da pessoa: ${p._nationality}'); // Atributo privado - não acessível fora deste arquivo
  p.getOrigin();
  /* O Dart permite o acesso de atributos privados no mesmo arquivo, mas se tentasse
    acessar em outro lugar não funcionaria. Seria necessário acessá-lo através de um
    método público.
  */
}

// POLIMORFISMO
class Brazilian extends Person {
  final String cityOfBirth;

  Brazilian({
    required this.cityOfBirth,
    required String nameParameter,
    String $nationalityParameter = 'Brasileiro',
  }) : super(name: nameParameter, nationalityParameter: $nationalityParameter);

  @override
    void getOrigin() {
      print('Nacionalidade da pessoa: $_nationality');
      print('Naturalidade da pessoa: $cityOfBirth');
    }
} 

void polimorfismExample() {
  Brazilian p = Brazilian(nameParameter: 'João', cityOfBirth: 'Xique-Xique');
  p.getOrigin();
}