import 'dart:ui';
import 'package:flutter/material.dart';

class DesistirEventosAgendadadosView extends StatefulWidget {
  const DesistirEventosAgendadadosView({super.key});

  @override
  State<DesistirEventosAgendadadosView> createState() =>
      _DesistirEventosAgendadadosViewState();
}

class _DesistirEventosAgendadadosViewState
    extends State<DesistirEventosAgendadadosView> {
  bool areCamposPreenchidos() {
    return true;
  }

  void mostrarSnackBar(String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          mensagem,
          textAlign: TextAlign.center,
        ),
        duration: Duration(seconds: 3),
      ),
    );
  }

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
      ),
      backgroundColor: Color.fromARGB(255, 131, 240, 134),
      body: Padding(
        padding: EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Desistir de evento agendado',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 71, 70, 70),
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Column(),
            ),
            Text(
              'Nome Evento: \n' +
                  'Data/hora: \n' +
                  'Local: \n' +
                  'Quantidade de vagas: \n' +
                  'Quantidade de vagas ocupadas: ',
              style: TextStyle(
                fontSize: 21,
                color: const Color.fromARGB(255, 15, 14, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Column(),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 242, 33, 18),
                foregroundColor: Colors.grey.shade50,
                minimumSize: Size(140, 40),
              ),
              onPressed: () {
                if (!areCamposPreenchidos()) {
                  mostrarSnackBar('Por favor, preencha os campos.');
                } else {
                  mostrarSnackBar('Você desistiu desse evento');
                  Navigator.pushNamed(context, 'telaPrincipal');
                }
              },
              child: Text('Desistir'),
            ),
          ],
        ),
      ),
    );
  }
}
