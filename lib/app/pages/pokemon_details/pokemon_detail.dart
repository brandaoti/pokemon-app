import 'package:flutter/material.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.blue,
        child: Stack(
          // alignment: Alignment.topCenter,
          children: [
            Image.network(
              'https://i.pinimg.com/originals/f2/95/76/f295769d9bd3c34ffc552e837f5304ae.png',
              width: size.width,
              height: size.width,
              scale: 3,
              // fit: BoxFit.cover,
            ),

            //
            Positioned(
              top: size.height * .4,
              // left: 10.0,
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.9),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
                ),

                // Primeira seção
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Peso'),
                                  Text('50kg'),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Tipo'),
                                  Text('Foto'),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Altura'),
                                  Text('1.79m'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Divider(color: Colors.black),

                      // ? Segunda seção
                      Container(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // * Informa habilidade do pokemon
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Habilidade:',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                //TODO Instancia da habilidade, add aqui
                              ],
                            ),

                            // * Aqui pode ser adicionado uma descrição
                            // * Pode informar sobre a habilidade do pokémon
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(.02),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                'Aqui vai ser a descrição da habilidade do pokémon...',
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ? Fim segunda seção

                      SizedBox(height: 50.0),
                      // ! Terceira seção
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Informa evolução do pokemon
                          Text('Evolução:',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 24.0,
                              )),

                          Container(
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(.02),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  // color: Colors.white12,
                                  height: 80,
                                  width: 80,
                                  padding: EdgeInsets.all(3.0),
                                  child: Image.network(
                                    'https://i.pinimg.com/originals/f2/95/76/f295769d9bd3c34ffc552e837f5304ae.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  // color: Colors.white12,
                                  height: 80,
                                  width: 80,
                                  padding: EdgeInsets.all(3.0),
                                  child: Image.network(
                                    'https://i.pinimg.com/originals/f2/95/76/f295769d9bd3c34ffc552e837f5304ae.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  // color: Colors.white,
                                  height: 80,
                                  width: 80,
                                  padding: EdgeInsets.all(3.0),
                                  child: Image.network(
                                    'https://i.pinimg.com/originals/f2/95/76/f295769d9bd3c34ffc552e837f5304ae.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // ! Fim terceira seção
                    ],
                  ),
                ),
                // ? Fim primeira seção
              ),
            ),
          ],
        ),
      ),
    );
  }
}
