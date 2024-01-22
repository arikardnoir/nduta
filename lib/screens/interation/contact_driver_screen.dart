/* import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ContactDriverScreen extends StatefulWidget {
  const ContactDriverScreen({Key? key}) : super(key: key);

  @override
  State<ContactDriverScreen> createState() => _ContactDriverScreenState();
}

class _ContactDriverScreenState extends State<ContactDriverScreen> {
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
                            height: 190.0,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(width: 10.0,),
                                     const CircleAvatar(
                                      radius: 40.0,
                                      backgroundImage: AssetImage('assets/images/driver.jpg'),
                                    ),
                                    const SizedBox(width: 8.0),
                                    Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    const Text(
                                        'Antonio Manuel',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4.0),
                                      RatingBar.builder(
                                        itemBuilder: (context, __) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {},
                                        itemCount: 5, 
                                        itemSize: 16.0,
                                        initialRating: 4.5, 
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        unratedColor: Colors.grey,
                                        itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                      ),
                                    ],
                                  ),
                              ]),
                                const SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    const SizedBox(width: 30.0,),
                                    const Center(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text('Hyundai i10', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text('2020', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),),
                                            ],
                                          ),
                                          SizedBox(height: 12.0,),
                                          Row(
                                            children: [
                                            Text('Cor azul     ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/car.jpg', // Substitua pelo caminho da sua imagem no projeto
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ) 
                                  ],
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
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(31.0),
                                ),
                                backgroundColor: Colors.amber,
                                fixedSize: Size(MediaQuery.of(context).size.width * 0.4, 45),
                              ),
                              onPressed: () {
                                /* Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const DriverScreen(),
                                  ),
                                ); */
                              },
                              child: const Text(
                                "Chamada",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ]
                        ),
                        const SizedBox(width: 10.0,),
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(31.0),
                                  side: const BorderSide(color: Colors.black)
                                ),
                                backgroundColor: Colors.white,
                                fixedSize: Size(MediaQuery.of(context).size.width * 0.49, 45),
                              ),
                              onPressed: () {
                                /* Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const DriverScreen(),
                                  ),
                                ); */
                              },
                              child: const Text(
                                "Mensagem",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ]
                        ),
                      ],
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
 */

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ContactDriverScreen extends StatefulWidget {
  const ContactDriverScreen({Key? key}) : super(key: key);

  @override
  State<ContactDriverScreen> createState() => _ContactDriverScreenState();
}

class _ContactDriverScreenState extends State<ContactDriverScreen> {
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
                onPressed: () {
                  Navigator.pop(context);
                },
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
                            height: 190.0,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(width: 10.0),
                                    const CircleAvatar(
                                      radius: 40.0,
                                      backgroundImage: AssetImage('assets/images/driver.jpg'),
                                    ),
                                    const SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Antonio Manuel',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 4.0),
                                        RatingBar.builder(
                                          itemBuilder: (context, __) => const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {},
                                          itemCount: 5,
                                          itemSize: 16.0,
                                          initialRating: 4.5,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          unratedColor: Colors.grey,
                                          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    const SizedBox(width: 30.0),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text('Hyundai i10', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text('2020', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                                            ],
                                          ),
                                          SizedBox(height: 12.0),
                                          Row(
                                            children: [
                                              Text('Cor azul     ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/car.jpg', // Substitua pelo caminho da sua imagem no projeto
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31.0),
                              ),
                              backgroundColor: Colors.amber,
                            ),
                            onPressed: () {
                              /* Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const DriverScreen(),
                                ),
                              ); */
                            },
                            child: const Text(
                              "Chamada",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31.0),
                                side: const BorderSide(color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              /* Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const DriverScreen(),
                                ),
                              ); */
                            },
                            child: const Text(
                              "Mensagem",
                              style: TextStyle(
                                color: Colors.black,
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
          ],
        ),
      ),
    );
  }
}
