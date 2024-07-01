 import 'package:flutter/material.dart';
 import 'package:url_launcher/url_launcher.dart';


class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  // Lista de projetos destacados
  List<Project> projects = [
    Project(
      name: 'Guia Me',
      description: 'Guia Me é um aplicativo desenvolvido para auxiliar deficientes visuais na navegação urbana, emitindo notificações sonoras que informam quando é seguro atravessar a rua. O aplicativo se conecta a artefatos urbanos, como semáforos inteligentes, através de redes Wi-Fi configuradas especificamente para esse propósito.\n\nEsses artefatos incluem dispositivos IoT presentes em estabelecimentos públicos e comerciais, como beacons, semáforos inteligentes e termostatos. A plataforma de microcontroladores NodeMCU é utilizada para essa integração.',
      githubLink: 'https://github.com/DSM-FATEC/fatec_dsm_pi_sexto_semestre',
    ),
    Project(
    name: 'Bulletin Board',
    description: 'Bulletin Board é um aplicativo que possibilita aos munícipes relatarem problemas
relacionados à cidade, tornando os problemas conhecidos e acompanhando suas
resoluções de forma organizada. O aplicativo visa simplificar o processo de registro,
postagem, comentário e interação, permitindo aos usuários categorizar seus
apontamentos para facilitar a busca por tópicos específicos. Desenvolvido utilizando
a linguagem Flutter, o aplicativo incorpora técnicas de design de interface (UI) e
experiência do usuário (UX) para aprimorar a interatividade e a satisfação do
usuário.',
    githubLink: 'https://github.com/MateusVS/PI-5-DSM-Fatec-Araras-',
  ),
Project(
    name: 'Fatesk',
    description: 'Fatesk é um sistema desenvolvido em Django que permite aos usuários agendar e gerenciar suas tarefas. O usuário pode inserir descrições, datas de entrega e listar tarefas por categorias como "importante" e "urgente", além de criar outras categorias personalizadas. O sistema também oferece a funcionalidade de verificar se há tarefas pendentes no dia de acesso, ajudando os usuários a manterem-se organizados e focados em suas prioridades diárias.',
    githubLink: 'https://github.com/pmarangon/Fatesk',
  ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projetos Destacados'),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Card(
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    project.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => _launchGitHubLink(project.githubLink),
                          child: Text('Ver no GitHub'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _launchGitHubLink(String url) async {
    if (await UrlLauncher.canLaunchUrl(Uri.parse(url))) {
      await UrlLauncher.launchUrl(Uri.parse(url));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao abrir o link do GitHub'),
        ),
      );
    }
  }
}

// Classe para representar um projeto
class Project {
  final String name;
  final String description;
  final String githubLink;

  Project({required this.name, required this.description, required this.githubLink});
}

    