import 'package:driverapp/screens/locate/driver_screen.dart';
import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/route.jpg',
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
              bottom: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.width * 0.04,
              left: MediaQuery.of(context).size.width * 0.04,
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
                          SizedBox(
                            height: 160.0,
                            child: ListView(
                              children: <Widget>[
                                ListTile(
                                  contentPadding: const EdgeInsets.all(-10),
                                  leading: const Icon(Icons.local_taxi),
                                  trailing: const Text('120 Kz', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
                                  title: const Text(
                                    'António Manuel',
                                    style: TextStyle(fontWeight: FontWeight.w500,),
                                  ),
                                  subtitle: const Text('Qualquer um pode pagar!', style: TextStyle(color: Colors.grey),),
                                  onTap: () {},
                                ),
                                ListTile(
                                  contentPadding: const EdgeInsets.all(0),
                                  leading: const Icon(Icons.local_taxi),
                                  trailing: const Text('120 Kz', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
                                  title: const Text(
                                    'Gustavo Lobato',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: const Text('Não perca tempo e poupe dinheiro.', style: TextStyle(color: Colors.grey),),
                                  onTap: () {},
                                ),
                                ListTile(
                                  contentPadding: const EdgeInsets.all(0),
                                  leading: const Icon(Icons.local_taxi),
                                  trailing: const Text('119 Kz', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
                                  title: const Text(
                                    'Alfredo Ambrósio',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: const Text('Rápido, barato e seguro!', style: TextStyle(color: Colors.grey),),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), 
                  SizedBox(
                    //width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31.0),
                        ),
                        backgroundColor: Colors.amber,
                        fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 45),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DriverScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Confirmar",
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