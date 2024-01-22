import 'package:driverapp/screens/interation/contact_driver_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DriverScreen extends StatefulWidget {
  const DriverScreen({Key? key}) : super(key: key);

  @override
  State<DriverScreen> createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
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
              top: 100.0,
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
              child: Card(
                elevation: 3.0,
                margin: const EdgeInsets.all(100.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/images/driver.jpg'),
                      ),
                      const SizedBox(width: 8.0),
                      // Nome da pessoa do lado direito
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Antonio Manuel',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            RatingBar.builder(
                              itemBuilder: (context, _) => const Icon(
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.width * 0.04,
              left: MediaQuery.of(context).size.width * 0.04,
              child: SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: Colors.amber,
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 45),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ContactDriverScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Iniciar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
