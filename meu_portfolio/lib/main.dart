import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nome do seu App', // Substitua por um nome real
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cor tema principal
      ),
      home: MyHomePage(), // Substitua por sua tela inicial
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'), // Substitua por um título real
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'Bem-vindo ao meu Portfolio!',
        style: TextStyle(fontSize: 24),
      ),
      SizedBox(height: 20),
      RichText( // Usamos RichText para formatar links
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Conheça meus projetos: ',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: 'GitHub', // Texto do link
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Cor do link
              ),
              recognizer: UrlLauncher.launch('https://github.com/pmarangon'), // Função para abrir o link
            ),
            TextSpan(
              text: '\n', // Quebra de linha
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: 'Entre em contato: ',
              style: TextStyle(fontSize: 16),
            ),
            TextSpan(
              text: 'LinkedIn', // Texto do link
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Cor do link
              ),
              recognizer: UrlLauncher.launch('https://www.linkedin.com/in/paulammarangon'), // Função para abrir o link
            ),
          ],
        ),
      ),
    ],
  ),
),
, // Substitua por widgets
        ),
      ),
    );
  }
}
