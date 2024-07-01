import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import for launching URLs
import 'projects_screen.dart';
import 'about_me_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paula VersaTech', // Substituted with a real name
      theme: ThemeData(
        primarySwatch: Colors.blue, // Main theme color
      ),
      home: MyHomePage(), // Home screen with navigation drawer
    );
    // Removed routes as navigation is handled by drawer
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
        title: Text('Paula VersaTech'), // Substituted with a real title
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(Paula Masson Marangon'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Sobre Mim'),
              onTap: () => Navigator.pushNamed(context, '/about_me_screen.dart'),
            ),
            ListTile(
              title: Text('Projetos'),
              onTap: () => Navigator.pushNamed(context, '/projects_screen.dart'),
            ),
          ],
        ),
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
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Conheça meus projetos: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: 'GitHub',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    recognizer: UrlLauncher.launch('https://github.com/pmarangon'),
                  ),
                  TextSpan(
                    text: '\n', // Newline
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: 'Entre em contato: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: 'LinkedIn',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    recognizer: UrlLauncher.launch('https://www.linkedin.com/in/paulammarangon'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
