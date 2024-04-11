//POO -> 4 PILARES FUNDAMENTAIS
/*
1 - ABSTRAÇÃO
2 - ENCAPSULAMENTO
3 - HERANÇA
4 - POLIMORFISMO
EXEMPLO FATURA SEM PARAR: 

- FATURA
  - ATRIBUTOS:
    - NDOC
    - DTVENC
    - VALOR
    - CLIENTE
  - MÉTODOS:
    - SEGUNDA_VIA()
    - GERAR()
    - PAGAR()
    - VERIFICAR_INADIMPLENTES()
    - (create, update, read, delete)
- CLIENTE
  - ATRIBUTOS:
    - NOME
    - CPF
    - EMAIL
  - MÉTODOS:
    - INATIVAR()
    - ATIVAR()
    - SUSPENDER()
    - (create, update, read, delete)
*/

void main() {
  try {
    Cliente c1 = new Cliente();
    //c1.nome = "Raphael";
    c1.setNome("");
    c1.email = "Raphael";
    Fatura f = new Fatura();
  } on Exception catch (e) {
    print(e.toString());
  }
}

/* 
ENCAPSULAMENTO -> Atributos da classe devem se tornar privados!
Em dart utiliza-se '_' para tornar o recurso privado.
-> Para leitura e escrita deve-se ofertar métodos get/set
*/

class Cliente {
  //ATRIBUTOS
  String? _nome;
  String? _cpf;
  String? _email;

  //MÉTODOS CONSTRUTORES
  Cliente() {}
  Cliente.todos(this._nome, this._cpf, this._email);

  /* FORMATO CONVENCIONAL DE SE DECLARAR UM CONSTRUTOR
  
  Cliente.todos(String nome, String cpf, String email){
    this.nome = nome;
    this.cpf = cpf;
    this.email = email;
  }
  
  EM DART UMA FORMA ANALÓGA É DESCRITA ABAIXO
  */

  //MÉTODOS (RETORNAM OU NÃO RETORNAM VALOR)

  void inativar() {}
  void ativar() {}
  void suspender() {}

  //MÉTODOS ENCAPSULAMENTO
  //GETTERS/SETTERS
  //GET -> MÉTODO DE LEITURA

  //ESCRITA DOS MÉTODOS DE MODO CONVENCIONAL
  String? getNome() {
    return this._nome;
  }

  void setNome(String nome) {
    if (!nome.isEmpty) this._nome = nome;
  }

  String? getCPF() {
    return this._cpf;
  }

  /*
  EXEMPLO DE USO DE ARROW FUNCTION =>
  
  String? get nome => this._nome;
  
  EXEMPLO DE USO MÉTODO GET/SET EM DART (RECOMENDADO)
  -> DESTA FORMA É NECESSÁRIO QUE O MÉTODO GET TENHA O MESMO 
  NOME DO ATRIBUTO, PORÉ, DE MANEIRA PÚBLICA.
  */

  String? get email {
    return this._email;
  }

  set email(String? email) {
    /* EXEMPLO OPERAÇÃO TERNÁRIA DA CONDIÇÃO DE VALIDAÇÃO DO E-MAIL
    
    (!email!.contains('@')) ? 
    throw new Exception("E-mail inválido!") : 
    this._email = email;
    */

    if (!email!.contains('@'))
      throw new Exception("E-mail inválido!");
    else
      this._email = email;
  }
}

class Fatura {
  int? _ndoc;
  DateTime? _dtVenc;
  double? _valor;
  Cliente? _cliente;

  Fatura() {}
}
