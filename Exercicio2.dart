/*2. Escreva um programa em Dart para criar uma classe House com as propriedades [id, nome, preço]. Crie um construtor para ela e crie 3 objetos. Adicione-os a uma lista e imprima todos os detalhes.*/
class House {
  String id;
  String nome;
  num preco;
  
  House(this.id, this.nome, this.preco);
  
  String stringOf() {
    return 'House: id: $id | name: $nome | preco R\$: $preco';
  }
}

void main() {
  House h1 = House('8s0df9', 'house 1', 400000.00);
  House h2 = House('h5k64l', 'hou2e s', 320000.00);
  House h3 = House('h43j5y', '3 house', 1000000.30);
  
  print(h1.stringOf());
  print(h2.stringOf());
  print(h3.stringOf());
}