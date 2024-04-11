import 'dart:io';

void main() {
  Funcionario f = new Funcionario(
      "Raphael", "raphael@uscs", new Endereco("Rua xxx"), 99999999);
  Pessoa p = new Pessoa.all("Pessoa", "@", new Endereco("Rua yyyy"));
  print(f.nome);
  //f.Consultar();
  //p.Consultar();
  //f.Incluir();
  //print("------- PESSOA -------");
  //p.Incluir();
  Endereco e = new Endereco("Rua");
  print(e.toString());
}

class Pessoa {
  String? nome;
  String? email;
  Endereco? endereco;

  Pessoa.all(this.nome, this.email, this.endereco);

  void Incluir() {
    print("Iniciando conexão com o DB...");
    sleep(new Duration(seconds: 1));
    print("Incluindo dados na tabela...");
    sleep(new Duration(seconds: 1));
    print("Dados de pessoa armazenados com sucesso!");
  }

  void Alterar() {}
  void Excluir() {}
  void Consultar() {
    print('${nome} - ${email} - ${endereco?.logradouro}');
  }
}

class Funcionario extends Pessoa {
  double salario;

  Funcionario(String? nome, String? email, Endereco? endereco, this.salario)
      : super.all(nome, email, endereco);

  //EXEMPLO DE REESCRITA TOTAL DO MÉTODO
  @override
  void Consultar() {
    print('${email} - ${nome} - ${this.salario}');
  }

  //REESCRITA PARCIAL DO MÉTODO/COMPLEMENTAR DO MÉTODO
  @override
  void Incluir() {
    super.Incluir();
    print("Incluindo salário na tabela funcionário...");
    print("Dados de funcionário armazenados com sucesso!");
  }
}

class Endereco {
  String logradouro;
  Endereco(this.logradouro);

  @override
  String toString() {
    return "Endereco: ${logradouro}";
  }
}
