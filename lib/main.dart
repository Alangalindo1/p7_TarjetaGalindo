import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TarjetaApp());
}

class TarjetaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaginaInicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({
    Key? key,
  }) : super(key: key);

  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo de Tarjeta"),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
        backgroundColor: Color(0xff3cc2ff),
        shape: StadiumBorder(),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.merge(
                  BorderSide(
                      width: 1.5, color: Colors.grey, style: BorderStyle.solid),
                  BorderSide(
                      width: 1.5,
                      color: Colors.grey,
                      style: BorderStyle.solid)),
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xff96ffbe),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide.merge(
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Galindo Is Cool',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 30),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(height: 100, width: 100, child: FlutterLogo())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
