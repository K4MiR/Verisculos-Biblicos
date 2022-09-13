import 'package:flutter/material.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({Key? key}) : super(key: key);

  @override
  State<Menu_Screen> createState() => _menu_screenState();
}

class _menu_screenState extends State<Menu_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              SizedBox(
                  width: 150,
                  child: Image(image: AssetImage('assets/image/biblia2.png'))),
              SizedBox(
                height: 130,
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                        fixedSize: Size.fromWidth(200),

                      ),
                      child: Text('Leitura'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
