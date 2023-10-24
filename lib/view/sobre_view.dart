// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SobreView extends StatelessWidget {
  const SobreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 240, 134),
      //
      // BODY
      //
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon(
            //  Icons.ac_unit,
            //  size: 120,
            //  color: Colors.grey.shade600,
            //    ),
            Container(
              height: 40,
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text(
                      "<<Voltar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () => {
                      Navigator.pushNamed(context, 'login'),
                    },
                  ),
                ],
              ),
            ),

            Expanded(child: Container()),

            Container(
              width: MediaQuery.of(context).size.width *
                  0.8, // Define a largura com base na largura da tela (80% da largura)
              child: Padding(
                padding: EdgeInsets.all(15), // Define a margem interna
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Informações',
                    labelStyle: TextStyle(color: Colors.black), // Cor do rótulo
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black), // Cor da borda
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black, // Define a cor do texto para preto
                  ),
                  maxLines: null, // Permite várias linhas de texto
                  readOnly: true, // Torna o campo somente leitura
                  controller: TextEditingController(
                    text:
                        'Aplicativo criado, através da ferramenta Flutter, por Guilherme Braga e Murilo Chellegatti, com intuito de serem avaliados na disciplina de Programação para Dispositivos Móveis, da FATEC Ribeirão Preto, no 2° semestre de 2023.',
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 151, 142, 142),
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/guilherme.jpg'),
                      ),
                      Text(
                        "Foto Guilherme",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 151, 142, 142),
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/murilo.png'),
                      ),
                      Text(
                        "Foto Murilo",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
