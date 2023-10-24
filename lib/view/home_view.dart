import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 240, 134),
      body: Padding(
        padding: EdgeInsets.all(35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 280,
                width: 280,
                child: Image.asset('assets/images/home.png'),
              ),
              SizedBox(height: 20), // Espaço entre a imagem e o texto

              TextButton(
                onPressed: () => {Navigator.pushNamed(context, 'login')},
                child: Text(
                  "Clique aqui para prosseguir",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
