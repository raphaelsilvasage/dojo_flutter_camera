import 'dart:io';
import 'package:flutter/material.dart';

class ExibirImagemView extends StatelessWidget {
  final File _imagem;
  ExibirImagemView(this._imagem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exibição de imagem"),
        centerTitle: true,
      ),
      body: Center(
        child: _imagem == null ? Text('Nenhuma imagem selecionada', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)) 
        : Image.file(_imagem),
      ),
    );
  }
}
