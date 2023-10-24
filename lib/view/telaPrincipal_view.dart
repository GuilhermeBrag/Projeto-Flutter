import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:image_picker/image_picker.dart';

class TelaPrincipalView extends StatefulWidget {
  const TelaPrincipalView({super.key});

  @override
  State<TelaPrincipalView> createState() => _TelaPrincipalViewState();
}

class _TelaPrincipalViewState extends State<TelaPrincipalView> {
  Color containerColor1 = Colors.white; // Inicializa a cor original
  Color containerColor2 = Colors.white;
  Color containerColor3 = Colors.white;
  Color containerColor4 = Colors.white;
  Color containerColor5 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 92, 90, 90),
        title: Row(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage('caminho/para/imagem.jpg'),
              backgroundColor:
                  Colors.white, // Substitua pelo caminho da imagem do usuário
            ),
            SizedBox(width: 10), // Espaço entre a foto e o nome
            Text(
              "Nome Usuário",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, 'configPerfil');
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromARGB(255, 131, 240, 134),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
                color: containerColor1,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'criarEvento');
                },
                onHover: (hovered) {
                  if (hovered) {
                    setState(() {
                      containerColor1 = Color.fromARGB(255, 203, 205,
                          206); // Cor quando o mouse estiver sobre o ListTile
                    });
                  } else {
                    setState(() {
                      containerColor1 = Colors
                          .white; // Cor original quando o mouse sair do ListTile
                    });
                  }
                },
                child: ListTile(
                  leading: Icon(Icons.create),
                  title: Text(
                    "Criar evento",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
                color: containerColor2,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'procurarEventos');
                },
                onHover: (hovered) {
                  if (hovered) {
                    setState(() {
                      containerColor2 = Color.fromARGB(255, 203, 205,
                          206); // Cor quando o mouse estiver sobre o ListTile
                    });
                  } else {
                    setState(() {
                      containerColor2 = Colors
                          .white; // Cor original quando o mouse sair do ListTile
                    });
                  }
                },
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: Text(
                    "Procurar eventos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
                color: containerColor3,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'meusEventosCriados');
                },
                onHover: (hovered) {
                  if (hovered) {
                    setState(() {
                      containerColor3 = Color.fromARGB(255, 203, 205,
                          206); // Cor quando o mouse estiver sobre o ListTile
                    });
                  } else {
                    setState(() {
                      containerColor3 = Colors
                          .white; // Cor original quando o mouse sair do ListTile
                    });
                  }
                },
                child: ListTile(
                  leading: Icon(Icons.check),
                  title: Text(
                    "Meus eventos criados",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
                color: containerColor4,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'meusEventosAgendados');
                },
                onHover: (hovered) {
                  if (hovered) {
                    setState(() {
                      containerColor4 = Color.fromARGB(255, 203, 205,
                          206); // Cor quando o mouse estiver sobre o ListTile
                    });
                  } else {
                    setState(() {
                      containerColor4 = Colors
                          .white; // Cor original quando o mouse sair do ListTile
                    });
                  }
                },
                child: ListTile(
                  leading: Icon(Icons.event),
                  title: Text(
                    "Meus eventos agendados",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
                color: containerColor5,
              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Tem certeza que deseja sair?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Fecha a caixa de diálogo
                            },
                            child: Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Fecha a caixa de diálogo
                              Navigator.pushNamed(
                                  context, 'home'); // Navega para a tela "home"
                            },
                            child: Text('Sair'),
                          ),
                        ],
                      );
                    },
                  );
                },
                onHover: (hovered) {
                  if (hovered) {
                    setState(() {
                      containerColor5 = Color.fromARGB(255, 203, 205,
                          206); // Cor quando o mouse estiver sobre o ListTile
                    });
                  } else {
                    setState(() {
                      containerColor5 = Colors
                          .white; // Cor original quando o mouse sair do ListTile
                    });
                  }
                },
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text(
                    "Sair",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
