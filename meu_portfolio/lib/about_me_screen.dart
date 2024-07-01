import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import for launching URLs

class AboutMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre Mim'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Seção Sobre Mim
              Text(
                'Sobre Mim',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Sou Paula Marangon, publicitária e desenvolvedora de software multiplataforma em formação, guiada por Deus e marcada pela resiliência. Apaixonada por aprender, valorizo o conhecimento contínuo e adoro atividades culturais, especialmente artes cênicas, Entusiasta da corrida de rua. No desenvolvimento de software, encontro a fusão perfeita entre criatividade e lógica, criando soluções inovadoras e eficientes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),

              // Seção Cursos
              Text(
                'Cursos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Adicione seus cursos aqui, como:
              Text(
                  '- Comunicação Social - Publicidade e Propaganda - Universidade Metodista de Piracicaba'),
              Text('- Informática para Internet- Etec Pref. Alberto Feres'),
              Text('- Sistemas para Internet- Etec Pref. Alberto Feres'),
              Text(
                  '- Desenvolvimento de Software Multiplataforma- Fatec Araras'),
              SizedBox(height: 16),

              // Seção Interesses
              Text(
                'Interesses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Adicione seus interesses aqui, como:
              Text('- Artes Cênicas'),
              Text('- Corrida de rua'),
              SizedBox(height: 16),

              // Seção Redes Sociais
              Text(
                'Redes Sociais',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Botão Facebook (substitua # com seu ID)
                  IconButton(
                    onPressed: () =>
                        _launchUrl('https://www.facebook.com/paula.marangon'),
                    icon: Icon(Icons.facebook),
                    iconSize: 32,
                    color: Colors.blue,
                  ),
                  // Botão Instagram (substitua # com seu nome de usuário)
                  IconButton(
                    onPressed: () => _launchUrl(
                        'https://www.instagram.com/paulamassonmarangon!/'),
                    icon: Icon(Icons.instagram),
                    iconSize: 32,
                    color: Colors.pink,
                  ),
                  // Botão Twitter (substitua # com seu nome de usuário)
                  IconButton(
                    onPressed: () =>
                        _launchUrl('https://twitter.com/pmarangon'),
                    icon: Icon(Icons.twitter),
                    iconSize: 32,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchUrl(String url) async {
    if (await UrlLauncher.canLaunchUrl(Uri.parse(url))) {
      await UrlLauncher.launchUrl(Uri.parse(url));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao abrir o link'),
        ),
      );
    }
  }
}
