import 'dart:io';

import 'package:dojo_flutter_camera/helpers/navegacaoHelper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acesso à câmera"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.camera_alt,
                color: Colors.blue,
                size: 150,
              ),
              onTap: () async {
                File imagemSelecionada = await ImagePicker.pickImage(source: ImageSource.camera);
                Navigator.of(context).pushNamed(NavegacaoHelper.rotaExibirImagem, arguments: {"imagem" : imagemSelecionada});
              },
            ),
            GestureDetector(
              child: Icon(
                Icons.image,
                color: Colors.green,
                size: 150,
              ),
              onTap: () async {
                File imagemSelecionada = await ImagePicker.pickImage(source: ImageSource.gallery);
                Navigator.of(context).pushNamed(NavegacaoHelper.rotaExibirImagem, arguments: {"imagem" : imagemSelecionada});
              },
            ),
          ],
        ),
      ),
    );
  }
}
