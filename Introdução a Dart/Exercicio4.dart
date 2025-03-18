/*4. Escreva um programa em Dart para criar uma classe Animal com as propriedades [id, nome, cor]. Crie outra classe chamada Cat e a estenda de Animal. Adicione uma nova propriedade chamada som (do tipo String). Crie um objeto de Cat e imprima todos os detalhes.*/
class Animal {
  String id;
  String nome;
  String cor;
  
  Animal.build(this.id, this.nome, this.cor);
  
  String stringOf() {
    return 'Animal) id: $id | name: $nome | cor: $cor';
  }
}

class Cat extends Animal {
  String som;
  
  Cat(id, nome, cor, this.som) : super.build(id, nome, cor);
  
  String stringOf() {
    return 'Cat: id: $id | name: $nome | cor: $cor | som: $som';
  }
}

void main() {
  Cat xixala = Cat('x4n0', 'T\'challa', 'preto', 'nhanhau');
  print(xixala.stringOf());
}