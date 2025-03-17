/*1. Escreva um programa em Dart para criar uma classe Laptop com as propriedades [id, nome, ram] e crie 3 objetos dela, imprimindo todos os detalhes.*/
class Laptop {
  String id;
  String nome;
  int ram;

  Laptop(this.id, this.nome, this.ram);

  String stringOf() {
    return 'Laptop: id: $id | name: $nome | ram: $ram';
  }
}

void main() {
  Laptop l1 = new Laptop('h31iu', 'laptop 1', 4);
  Laptop l2 = new Laptop('f89lk', 'laptop 2', 8);
  Laptop l3 = Laptop('p45s7n', 'laptop 3', 16);

  print(l1.stringOf());
  print(l2.stringOf());
  print(l3.stringOf());
}