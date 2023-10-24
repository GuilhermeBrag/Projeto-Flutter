import 'dart:ui';
import 'package:flutter/material.dart';

class MeusEventosAgendadosView extends StatefulWidget {
  const MeusEventosAgendadosView({super.key});

  @override
  State<MeusEventosAgendadosView> createState() =>
      _MeusEventosAgendadosViewState();
}

class _MeusEventosAgendadosViewState extends State<MeusEventosAgendadosView> {
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
        duration: Duration(seconds: 2),
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
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Meus eventos agendados',
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
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15.0), // Arredonda as bordas
                  side: BorderSide(
                    color: Colors.black, // Cor da borda
                    width: 1.0, // Espessura da borda
                  ),
                ),
                elevation:
                    4, // Sombreamento para criar uma sensação de elevação
                margin: EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount:
                      6, // Substitua pelo tamanho da sua lista de eventos
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Desistir de evento agendado',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Data/hora: \n' +
                                'Local: \n' +
                                'Quantidade de vagas: \n' +
                                'Quantidade de vagas ocupadas: ',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 104, 98, 98),
                            ),
                          ),
                          onTap: () {
                            // Ação quando o item da lista é pressionado
                            Navigator.pushNamed(
                                context, 'desistirEventoAgendado');
                          },
                          trailing:
                              Icon(Icons.close), // Ícone "desisitir" à direita
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
