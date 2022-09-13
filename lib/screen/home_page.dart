import 'dart:math';
import 'package:flutter/material.dart';
import 'package:frasesonday/utils/frases_page.dart';
//import 'package:google_fonts/google_fonts.dart';


class Leitura_Screen extends StatefulWidget {
  const Leitura_Screen({Key? key}) : super(key: key);

  @override
  State<Leitura_Screen> createState() => Leitura_ScreenState();
}

class Leitura_ScreenState extends State<Leitura_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              'Pão Diário',
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image(image: AssetImage('assets/image/biblia.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: SizedBox(
                  height: 150,
                  child: Text(
                    versiCulos.frasegerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: gerarFrase,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text("Nova Frase")),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                        ),
                        child: Text(
                          'Compartilhe',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void gerarFrase() {
    var numeroSorteado = Random().nextInt(versiCulos.Wordpass.length);
    setState(() {
      versiCulos.frasegerada = versiCulos.Wordpass[numeroSorteado];
    });
  }
}
