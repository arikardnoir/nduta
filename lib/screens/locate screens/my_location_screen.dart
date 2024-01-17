import 'package:flutter/material.dart';

class MyLocationScreen extends StatefulWidget {
  const MyLocationScreen({Key? key}) : super(key: key);

  @override
  State<MyLocationScreen> createState() => _MyLocationScreenState();
}

class _MyLocationScreenState extends State<MyLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/mylocation.jpg',
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 40.0,
              left: 10.0,
              child: IconButton(
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Adicione a lógica do botão aqui
                },
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.width * 0.1,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15.0,),
                          const Text(
                            'Viagens recentes',
                            style: TextStyle(
                              fontSize: 16.0, 
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 170.0, // Ajuste a altura conforme necessário
                            child: ListView(
                              children: <Widget>[
                                ListTile(
                                  contentPadding: const EdgeInsets.all(-10),
                                  leading: const Icon(Icons.fmd_good_outlined),
                                  title: const Text(
                                    'Talatona',
                                    style: TextStyle(fontWeight: FontWeight.w400,),
                                  ),
                                  subtitle: const Text('25, Rua do Comércio, Bairro da Camama', style: TextStyle(color: Colors.grey),),
                                  onTap: () {},
                                ),
                                ListTile(
                                  contentPadding: const EdgeInsets.all(0),
                                  leading: const Icon(Icons.fmd_good_outlined),
                                  title: const Text(
                                    'Kilamba Kiaxi',
                                    style: TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  subtitle: const Text('09, Av. Pedro de Castro, Bairro Golfe', style: TextStyle(color: Colors.grey),),
                                  onTap: () {},
                                ),
                                ListTile(
                                  contentPadding: const EdgeInsets.all(0),
                                  leading: const Icon(Icons.fmd_good_outlined),
                                  title: const Text(
                                    'Kilamba Kiaxi',
                                    style: TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  subtitle: const Text('09, Av. Pedro de Castro, Bairro Golfe', style: TextStyle(color: Colors.grey),),
                                  onTap: () {},
                                ),
                                // Adicione mais ListTiles conforme necessário
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Ajuste conforme necessário
                  SizedBox(
                    //width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31.0),
                        ),
                        backgroundColor: Colors.amber,
                        fixedSize: Size(MediaQuery.of(context).size.width * 0.5, 45),
                      ),
                      onPressed: () {
                        // Adicione a lógica do botão aqui
                      },
                      child: const Text(
                        "Aonde queres ir?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}