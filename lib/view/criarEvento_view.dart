import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';

class CriarEventoView extends StatefulWidget {
  const CriarEventoView({super.key});

  @override
  State<CriarEventoView> createState() => _CriarEventoViewState();
}

class _CriarEventoViewState extends State<CriarEventoView> {
  final TextEditingController _nomeEventoController = TextEditingController();
  final TextEditingController _dataHoraEventoController =
      TextEditingController();
  final TextEditingController _localEventoController = TextEditingController();
  final TextEditingController _quantVagasEventoController =
      TextEditingController();

  bool areCamposPreenchidos() {
    return _dataHoraEventoController.text.isNotEmpty &&
        _localEventoController.text.isNotEmpty &&
        _nomeEventoController.text.isNotEmpty &&
        _quantVagasEventoController.text.isNotEmpty;
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

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        final DateTime selectedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        setState(() {
          _dataHoraEventoController.text =
              DateFormat('yyyy-MM-dd HH:mm').format(selectedDateTime);
        });
      }
    }
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
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Criar evento',
              style: TextStyle(
                fontSize: 21,
                color: const Color.fromARGB(255, 15, 14, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
            ),
            TextField(
              controller: _nomeEventoController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'Nome do evento',
                hintText: 'Digite seu nome',
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
            TextFormField(
              controller: _dataHoraEventoController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: 'Data e hora do evento',
                hintText: 'Selecione a data/hora do evento',
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: OutlineInputBorder(),
              ),
              readOnly: true, // Torna o campo de texto somente leitura
              onTap: () {
                _selectDateTime(
                    context); // Chama a função para selecionar a data
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, selecione a data do evento';
                }
                return null;
              },
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
            ),
            TextField(
              controller: _localEventoController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'Local',
                hintText: 'Digite o local do evento',
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
              controller: _quantVagasEventoController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'Quantidade de vagas',
                hintText: 'Digite a quantidade de vagas',
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
                if (!areCamposPreenchidos()) {
                  mostrarSnackBar('Por favor, preencha os campos.');
                } else {
                  mostrarSnackBar('Evento criado');
                  Navigator.pushNamed(context, 'telaPrincipal');
                }
              },
              child: Text('Criar'),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
