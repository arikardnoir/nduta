import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:driverapp/screens/locate/my_location_screen.dart';

class ConfirmNumberScreen extends StatefulWidget {
  const ConfirmNumberScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmNumberScreen> createState() => _ConfirmNumberScreenState();
}

class _ConfirmNumberScreenState extends State<ConfirmNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.all(60.0),
              child: Text(
                'Digite o teu número de telefone',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {},
              initialValue: PhoneNumber(isoCode: 'AO', phoneNumber: ''),
              inputDecoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
            Container(
              height: 1.0,
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            const SizedBox(height: 25.0),
            Flexible(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(31.0),
                  ),
                  backgroundColor: Colors.amber,
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 45),
                ),
                child: const Text(
                  "Avançar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyLocationScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
