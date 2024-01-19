
import 'package:driverapp/screens/locate/route_screen.dart';
import 'package:flutter/material.dart';

class WhereToGoLocationScreen extends StatefulWidget {
  const WhereToGoLocationScreen({Key? key}) : super(key: key);

  @override
  State<WhereToGoLocationScreen> createState() => _WhereToGoLocationScreenState();
}

class _WhereToGoLocationScreenState extends State<WhereToGoLocationScreen> {

   @override
  void initState(){
    super.initState();
    Future.wait([
      Future.delayed(const Duration(milliseconds: 10000)),
    ]).then((value) =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RouteScreen(),),),);
  }


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
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {Navigator.pop(context);},
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.gps_fixed_outlined),
                        hintText: 'De...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.fmd_good_outlined),
                        hintText: 'Para...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    const Text(
                      'Lugares recentes',
                      style: TextStyle(
                        fontSize: 16.0, 
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 300.0,
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            contentPadding: const EdgeInsets.all(-10),
                            leading: const Icon(Icons.fmd_good),
                            title: const Text(
                              'Talatona',
                              style: TextStyle(fontWeight: FontWeight.w500,),
                            ),
                            subtitle: const Text('25, Rua do Comércio, Bairro da Camama', style: TextStyle(color: Colors.grey),),
                            onTap: () {},
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: const Icon(Icons.fmd_good),
                            title: const Text(
                              'Kilamba Kiaxi',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text('09, Av. Pedro de Castro, Bairro Golfe', style: TextStyle(color: Colors.grey),),
                            onTap: () {},
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: const Icon(Icons.fmd_good),
                            title: const Text(
                              'Kilamba Kiaxi',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text('09, Av. Pedro de Castro, Bairro Golfe', style: TextStyle(color: Colors.grey),),
                            onTap: () {},
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: const Icon(Icons.fmd_good),
                            title: const Text(
                              'Rangel',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text('54, Av. Deolinda Rodrigues, Bairro Terra Nova', style: TextStyle(color: Colors.grey),),
                            onTap: () {},
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: const Icon(Icons.fmd_good),
                            title: const Text(
                              'Luanda',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text('82, Rua Amilcar Cabral, Bairro das Ingombotas', style: TextStyle(color: Colors.grey),),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
