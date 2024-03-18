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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String resultado = "";
  

   //Desafio 2
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

  void _desafio7() {
    setState(() {
      double salarioMin = 1412.00;
      double salario = 9850.55;
    
      resultado = "O salário R\$$salario é equivalente à ${(salario / salarioMin).toStringAsFixed(2)} salários mínimos.";
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

      resultado = "A lista tem $pares números pares e $impares números ímpares.";    
    });
  }

 //Desafio 1
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
        resultado = "Os números são diferentes. A multiplicação entre eles dá $result.";
      }
    }

    setState(() {
    checaIguais(numeroA, numeroB);

      
    });
  }


  //Desafio 12
 void _desafio12(){
  setState(() {
    List<int> list1 = [3, 4, 5, 9, 10];
    // Calcular o quadrado de cada número na lista inicial.
    List<int> list2 = list1.map((number) => number * number).toList();

    resultado = list2.toString();
  });
  }

  //Desafio8
void _desafio8() {
    List<int> entrada = [-89,0,2597];

    ordemDecrescente(entrada) {
      entrada.sort();
      var saida = entrada.reversed.toList();
      resultado = "Os números em ordem decrescente ficam dessa forma: $saida.";
    }
    
    
    setState(() {
      ordemDecrescente(entrada);
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

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

//Desafio 16
  void _desafio16(){
  setState(() {
    bool checkPalindrome(String str2)
  {
    int i = 0, j = str2.length -1;
    while (i < j)
    {
      if (str2[i] != str2[j])
      {
        return false;
      }
      i++;
      j--;
    }
    return true;
  }
 String str1 = "A base do teto desaba";
 String str2 = str1.replaceAll(RegExp('[^A-Za-z]'), ''); //Tira caracteres especiais e números
  bool isPalindrome = checkPalindrome(str2.toUpperCase()); //toUpperCase deixa todos os caracteres em caixa alta.
  if (isPalindrome)
  {
    resultado = " '$str1' é um palíndromo.";
  }
  else {
    resultado = " '$str1' não é um palíndromo.";
  }
  });
}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _desafio15,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
