import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //isso é uma lista de texto que contem o enderenço das

  List<String> images = [
    'assets/arthur.jpg',
    'assets/john.jpg',
    'assets/dutch.jpg',
  ];

  List<int> imagemSelecionada = [0, 0, 0];

  void sortear() {

    int i = 0;
    while ( i < 5) {

    setState(() {
      imagemSelecionada[0] = Random().nextInt(images.length);
      imagemSelecionada[1] = Random().nextInt(images.length);
      imagemSelecionada[2] = Random().nextInt(images.length);
      sleep(Duration(milliseconds: 500));
    });


     i++;
    }


    if (imagemSelecionada[0] == imagemSelecionada[1] &&
        imagemSelecionada[1] == imagemSelecionada[2]) {

          /// aqui vai somar 
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("Parabens"),
              content: Text("voce ganhou"),
            ),

      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width - 30;
    final larguraImagem = larguraTela / 3;
    return Scaffold(
      appBar: AppBar(
        title: Text("rafael"),
        backgroundColor: const Color.fromARGB(255, 117, 24, 224),
      ),
      backgroundColor: const Color.fromARGB(0, 16, 28, 192),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sortear();
        } 
        
        ,

        child: Icon(Icons.insert_emoticon_sharp),
        backgroundColor: const Color.fromARGB(143, 22, 25, 197),
        foregroundColor: Colors.black,
      ),

      
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                images[imagemSelecionada[0]],
                width: larguraImagem,
                height: 200,
              ),
              SizedBox(width: 15),
              Image.asset(
                images[imagemSelecionada[1]],
                width: larguraImagem,
                height: 200,
              ),
              SizedBox(width: 15),
              Image.asset(
                images[imagemSelecionada[2]],
                width: larguraImagem,
                height: 200,
              ),
            ],
          ),
        ],
      ),
      Row(children: [
        
      ],)

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
