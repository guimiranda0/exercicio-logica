import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String resultado = "";

  void _desafio1() {
    setState(() {
      int numero1 = 20;
      int numero2 = 50;
      if (numero1 < numero2) {
        resultado = "O maior número é numero2 = $numero2.";
      } else if (numero1 > numero2) {
        resultado = "O maior número é numero1 = $numero1.";
      } else {
        resultado = "Os números são iguais.";
      }
    });
  }

  void _desafio2() {
    setState(() {
      int numero1 = 32;
      int numero2 = 30;
      int numero3 = 70;
      int soma = numero1 + numero2;
      if (soma < numero3) {
        resultado =
        "A soma de $numero1 e $numero2 é $soma;\nE o maior número entre $soma e $numero3 é $numero3.";
      } else if (soma > numero3) {
        resultado =
        "A soma de $numero1 e $numero2 é $soma;\nE o maior número entre $soma e $numero3 é $numero3.";
      } else {
        resultado =
        "A soma de $numero1 e $numero2 é $soma;\nE $soma e $numero3 são iguais.";
      }
    });
  }

  void _desafio3() {
    setState(() {
      int numero = 4;
      int resultadoTemp = 1;
      for (int i = 1; i <= numero; i++) {
        resultadoTemp *= i;
      }
      resultado = "O fatorial de $numero é $resultadoTemp.";
    });
  }

  void _desafio4() {
    int numero = 21;
    String resposta = "";

    if (numero == 0) {
      resposta = "O número $numero é par!";
    } else if (numero % 2 == 0) {
      if (numero > 0) {
        resposta = " O número $numero é par e positivo!";
      } else if (numero < 0) {
        resposta = " O número $numero é par e negativo!";
      }
    } else {
      if (numero > 0) {
        resposta = " O número $numero é ímpar e positivo!";
      } else if (numero < 0) {
        resposta = " O número $numero é ímpar e negativo!";
      }
    }

    setState(() {
      resultado = resposta;
    });
  }

  void _desafio5() {
    int numeroA = 4;
    int numeroB = 4;

    checaIguais(numeroA, numeroB) {
      int result = 0;

      if (numeroA == numeroB) {
        result = numeroA + numeroB;
        resultado = "Os números são iguais. A soma entre eles dá $result.";
      } else {
        result = numeroA * numeroB;
        resultado =
        "Os números são diferentes. A multiplicação entre eles dá $result.";
      }
    }

    setState(() {
      checaIguais(numeroA, numeroB);
    });
  }

  void _desafio6() {
    setState(() {
      int numero = 100;
      String antecessor = (numero - 1).toString();
      String sucessor = (numero + 1).toString();
      resultado = "Antecessor: $antecessor e sucessor: $sucessor";
    });
  }

  void _desafio7() {
    setState(() {
      double salarioMin = 1412.00;
      double salario = 9850.55;

      resultado =
      "O salário R\$$salario é equivalente à ${(salario / salarioMin)
          .toStringAsFixed(2)} salários mínimos.";
    });
  }
  
  void _desafio8() {
    List<int> entrada = [-89, 0, 2597];

    ordemDecrescente(entrada) {
      entrada.sort();
      var saida = entrada.reversed.toList();
      resultado = "Os números em ordem decrescente ficam dessa forma: $saida.";
    }
    setState(() {
      ordemDecrescente(entrada);
    });
  }

  void _desafio9() {
    List <double> notas = [6.0, 9.0, 5.0, 8.5, 9.0];
    double media = (notas[0] + notas[1] + notas[2] + notas[3] + notas[4]) / 5;
    String resposta;

    if (media >= 7.0) {
      resposta = "Aluno aprovado com média $media";
      setState(() {
        resultado = resposta;
      });
    }
  }

  void _desafio10() {
    String nome = "Jonas";
    int idade = 18;
    setState(() {
      resultado =
      idade >= 18 ? "$nome é maior de idade." : "$nome é menor de idade.";
    });
  }

  void _desafio11() {
    int numero = 38;

    String tabuada = "";

    for (int i = 0; i <= 10; i++) {
      tabuada += "$numero x $i = ${numero * i}\n";
    }
    setState(() {
      resultado = tabuada;
    });
  }

  void _desafio12() {
    setState(() {
      List<int> list1 = [3, 4, 5, 9, 10];
      // Calcular o quadrado de cada número na lista inicial.
      List<int> list2 = list1.map((number) => number * number).toList();

      resultado = list2.toString();
    });
  }

  void _desafio13() {
    setState(() {
      List lista1 = [4, 7, 9, 10, 45, 57, 98, 102, 201, 354];
      int pares = 0;
      int impares = 0;

      for (int num in lista1) {
        if (num % 2 == 0) {
          pares++;
        } else {
          impares++;
        }
      }

      resultado =
      "A lista tem $pares números pares e $impares números ímpares.";
    });
  }

  void _desafio14() {
    List lista1 = [4, 7, 9, 10, -454, 56, 4, 7, 1, 5310];
    int menor = 9007199254740991;
    int maior = -9007199254740991;

    for (int num in lista1) {
      if (num < menor) {
        menor = num;
      } else if (num > maior) {
        maior = num;
      }
    }
    setState(() {
      resultado = "O menor número da lista é $menor e o maior é $maior.";
    });
  }
  
  void _desafio15() {
    int entrada = 15;
    List<int> lista = [];

    criaLista(entrada) {
      if (entrada >= 0) {
        for (int i = entrada; i >= 0; i--) {
          lista.add(i);
          resultado = lista.reversed.toString();
        }
      } else {
        for (int i = entrada; i <= 0; i++) {
          lista.add(i);
          resultado = lista.reversed.toString();
        }
      }
    }
    setState(() {
      criaLista(entrada);
    });
  }

  void _desafio16() {
    setState(() {
      bool checkPalindrome(String str2) {
        int i = 0,
            j = str2.length - 1;
        while (i < j) {
          if (str2[i] != str2[j]) {
            return false;
          }
          i++;
          j--;
        }
        return true;
      }
      String str1 = "A base do teto desaba";
      String str2 = str1.replaceAll(
          RegExp('[^A-Za-z]'), ''); //Tira caracteres especiais e números
      bool isPalindrome = checkPalindrome(str2
          .toUpperCase()); //toUpperCase deixa todos os caracteres em caixa alta.
      if (isPalindrome) {
        resultado = " '$str1' é um palíndromo.";
      }
      else {
        resultado = " '$str1' não é um palíndromo.";
      }
    });
  }

  void _desafio17() {
    int numero = 29;
    int divisores = 0;
    String resposta;

    for (int i = 1; i <= numero; i++) {
      if (numero % i == 0) {
        divisores++;
      }
    }

    if (divisores == 2) {
      resposta = "$numero é primo";
    } else {
      resposta = "$numero não é primo";
    }

    resultado = resposta;
  }
  
  void _desafio18() {
    String palavra1 = "eu";
    String frase = "Eu, posso posso eu. Eu tudo o mais, que eu quiser Eu!";
    int count = 0;

    List fraseTratada = frase.toLowerCase()
        .replaceAll(RegExp(r'[,.!?]'), '')
        .split(' ');

    for (String palavra in fraseTratada) {
      if (palavra == palavra1) {
        count++;
      }
    }
    setState(() {
      resultado = "A palavra $palavra1 aparece $count vezes.";
    });
  }

  void _desafio19() {
    List palavras = [
      'foR',
      'scream',
      'CaRs',
      'poTatos',
      'racs',
      'creams',
      'scar',
      'four'
    ];
    List<List<String>> anagramas = [];

    while (palavras.isNotEmpty) {
      String palavra = palavras.removeAt(0);
      List<String> anagrama = [palavra];
      List charsEmPalavra = palavra.toLowerCase().split('')
        ..sort();

      for (int i = palavras.length - 1; i >= 0; i--) {
        List charsEmRestante = palavras[i].toLowerCase().split('')
          ..sort();
        if (charsEmPalavra.join() == charsEmRestante.join()) {
          anagrama.add(palavras.removeAt(i));
        }
      }

      anagramas.add(anagrama);
    }
    setState(() {
      resultado = anagramas.toString();
    });
  }
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Resultado:',
            ),
            Text(
              resultado,
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _desafio19,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}