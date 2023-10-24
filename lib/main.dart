// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projeto_facul/view/alterarEventoCriado_view.dart';
import 'package:projeto_facul/view/configPerfil_view.dart';
import 'package:projeto_facul/view/criarEvento_view.dart';
import 'package:projeto_facul/view/desistirEventosAgendados_view.dart';
import 'package:projeto_facul/view/esquecerSenha_view.dart';
import 'package:projeto_facul/view/home_view.dart';
import 'package:projeto_facul/view/meusEventosAgendados_view.dart';
import 'package:projeto_facul/view/meusEventosCriados_view.dart';
import 'package:projeto_facul/view/participarEvento_view.dart';
import 'package:projeto_facul/view/primeiroAcesso_view.dart';
import 'package:projeto_facul/view/procurarEventos_view.dart';
import 'package:projeto_facul/view/sobre_view.dart';
import 'package:projeto_facul/view/telaPrincipal_view.dart';

import 'view/login_view.dart';

void main() {
  //iniciar a execução do App
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => HomeView(),
          'login': (context) => LoginView(),
          'sobre': (context) => SobreView(),
          'primeiroAcesso': (context) => PrimeiroAcessoView(),
          'esquecerSenha': (context) => EsquercerSenhaView(),
          'telaPrincipal': (context) => TelaPrincipalView(),
          'configPerfil': (context) => configPerfilView(),
          'criarEvento': (context) => CriarEventoView(),
          'procurarEventos': (context) => ProcurarEventosView(),
          'meusEventosCriados': (context) => MeusEventosCriadosView(),
          'meusEventosAgendados': (context) => MeusEventosAgendadosView(),
          'participarEvento': (context) => ParticiparEventosView(),
          'desistirEventoAgendado': (context) =>
              DesistirEventosAgendadadosView(),
          'alterarEventoCriado': (context) => AlterarEventoCriadoView(),
        },
      ),
    ),
  );
}
