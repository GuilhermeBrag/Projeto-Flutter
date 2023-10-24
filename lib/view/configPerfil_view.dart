import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class configPerfilView extends StatefulWidget {
  const configPerfilView({super.key});

  @override
  State<configPerfilView> createState() => _configPerfilViewState();
}

class _configPerfilViewState extends State<configPerfilView> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmSenhaController = TextEditingController();
  bool _mostrarSenha = false;
  bool _mostrarSenha2 = false;

  final ImagePicker _imagePicker = ImagePicker();
  File? _image;

  Future _pickImage() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  bool areCamposPreenchidos() {
    return _emailController.text.isNotEmpty &&
        _senhaController.text.isNotEmpty &&
        _nomeController.text.isNotEmpty &&
        _confirmSenhaController.text.isNotEmpty;
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
                      Navigator.pushNamed(context, 'telaPrincipal'),
                    },
                  ),
                ],
              ),
            ),

            Expanded(child: Container()),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _pickImage();
                  },
                  child: ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.grey,
                      child: _image != null
                          ? Image.file(
                              _image!,
                              fit: BoxFit.cover,
                            )
                          : Icon(
                              Icons.camera_alt,
                              size: 60,
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
                SizedBox(width: 20), // Espaço entre a imagem e o texto
                if (_image == null)
                  Text(
                    'Clique aqui e altere sua foto de perfil',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),

            Expanded(child: Container()),

            TextField(
              controller: _nomeController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'Nome Completo',
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

            TextField(
              controller: _emailController,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'E-mail',
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
              obscureText:
                  !_mostrarSenha, // Aqui usamos o valor da variável para decidir se a senha é obscurecida ou não
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
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

            SizedBox(
              width: double.infinity,
              height: 40,
            ),

            TextField(
              controller: _confirmSenhaController,
              obscureText: !_mostrarSenha2,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Define a cor do texto para preto
              ),
              decoration: InputDecoration(
                labelText: 'Confirmar Senha',
                hintText: 'Confirme sua senha',
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
                suffixIcon: IconButton(
                  icon: Icon(
                    _mostrarSenha2 ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Inverta o valor da variável _mostrarSenha quando o botão for pressionado
                    setState(() {
                      _mostrarSenha2 = !_mostrarSenha2;
                    });
                  },
                ),
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
                if (!areCamposPreenchidos()) {
                  mostrarSnackBar('Por favor, preencha os campos.');
                } else if (_senhaController.text !=
                    _confirmSenhaController.text) {
                  mostrarSnackBar(
                      'Por favor, verifique se as senhas são iguais.');
                } else {
                  mostrarSnackBar('Cadastro Alterado');
                  Navigator.pushNamed(context, '');
                }
              },
              child: Text('Alterar'),
            ),

            // O Expanded para ocupar o espaço máximo na parte inferior
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
