/*5. Escreva um programa em Dart para criar uma classe Camera com propriedades privadas [id, marca, cor, preço]. Crie métodos getter e setter para acessar e modificar os valores. Além disso, crie 3 objetos dela e imprima todos os detalhes.*/
class Camera {
  String _id;
  String _marca;
  String _cor;
  num _preco;
  
  Camera(this._id, this._marca, this._cor, this._preco);
  
  String getId() {
    return _id;
  }
  void setId(String id) {
    this._id = id;
  }
  
  String getMarca() {
    return _marca;
  }
  void setMarca(String marca) {
    this._marca = marca;
  }
  
  String getCor() {
    return _cor;
  }
  void setCor(String cor) {
    this._cor = cor;
  }
  
  num getPreco() {
    return _preco;
  }
  void setPreco(num preco) {
    this._preco = preco;
  }
  
  String stringOf() {
    return 'Camera: id: $_id | marca: $_marca | cor: $_cor | preco: $_preco';
  }
}


void main() {
  Camera c1 = Camera('G7X', 'Canon', 'Preta', 13768.00);
  Camera c2 = Camera('Alpha ZV-E10', 'Sony', 'Preta', 5700.00);
  Camera c3 = Camera('EOS Rebel T7', 'Canon', 'Preta', 3600.00);
  
  print(c1.stringOf() + '\n');
  c1.setCor('Prata');
  print('c1 teve a cor mudada para: ${c1.getCor()} \n');
  
  print(c1.stringOf());
  print(c2.stringOf());
  print(c3.stringOf());
}