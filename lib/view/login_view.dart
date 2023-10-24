// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  bool _mostrarSenha = false;

  bool areCamposPreenchidos() {
    return _emailController.text.isNotEmpty && _senhaController.text.isNotEmpty;
  }

  void mostrarSnackBar(String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          mensagem,
          textAlign: TextAlign.center,
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

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
              height: 250,
              width: 250,
              child: Image.asset('assets/images/logo.png'),
            ),
            Text(
              'FUT',
              style: TextStyle(
                fontSize: 35,
                color: const Color.fromARGB(255, 15, 14, 14),
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 60,
            ),

            TextField(
              controller: _emailController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Digite seu email',
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

            TextField(
              controller: _senhaController,
              obscureText: !_mostrarSenha,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
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
                // Adicione um sufixo ao campo de texto para alternar a visibilidade da senha
                suffixIcon: IconButton(
                  icon: Icon(
                    _mostrarSenha ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Inverta o valor da variável _mostrarSenha quando o botão for pressionado
                    setState(() {
                      _mostrarSenha = !_mostrarSenha;
                    });
                  },
                ),
              ),
            ),

            Container(
              height: 40,
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      "Primeiro Acesso",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'primeiroAcesso');
                    },
                  ),
                  TextButton(
                    child: Text(
                      "Esqueci a Senha",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () =>
                        {Navigator.pushNamed(context, 'esquecerSenha')},
                  ),
                ],
              ),
            ),

            //Expandir até a largura limite do dispositivo
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
                if (areCamposPreenchidos()) {
                  mostrarSnackBar('Login Efetuado');
                  Navigator.pushNamed(context, 'telaPrincipal');
                } else {
                  mostrarSnackBar('Por favor, preencha os campos.');
                }
              },
              child: Text('Entrar'),
            ),

            // O Expanded para ocupar o espaço máximo na parte inferior
            Expanded(child: Container()),

            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Sobre",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'sobre');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
