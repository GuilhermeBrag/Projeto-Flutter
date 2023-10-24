import 'package:flutter/material.dart';

class EsquercerSenhaView extends StatefulWidget {
  const EsquercerSenhaView({super.key});

  @override
  State<EsquercerSenhaView> createState() => _EsquercerSenhaViewState();
}

class _EsquercerSenhaViewState extends State<EsquercerSenhaView> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 240, 134),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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

            Text(
              'Digite seu e-mail cadastrado',
              style: TextStyle(
                fontSize: 21,
                color: const Color.fromARGB(255, 15, 14, 14),
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 15,
            ),

            TextField(
              controller: _emailController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(
                    color: Colors.black), // Define a cor do rótulo como preto
                filled: true, // Define que o TextField deve ser preenchido
                fillColor:
                    Colors.white, // Define a cor de preenchimento como branca
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ), // Define a borda do TextField
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 40,
            ),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 242, 33, 18),
                foregroundColor: Colors.grey.shade50,
                minimumSize: Size(140, 40),
              ),
              onPressed: () {
                if (_emailController.text.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'E-mail enviado',
                        textAlign: TextAlign.center,
                      ),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  Navigator.pushNamed(context, 'login');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Por favor, preencha o campo de e-mail.',
                        textAlign: TextAlign.center,
                      ),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: Text('Enviar'),
            ),

            // O Expanded para ocupar o espaço máximo na parte inferior
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
