
import 'package:driverapp/screens/welcome%20screens/confirm_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class EnterNumberScreen extends StatefulWidget {
  const EnterNumberScreen({super.key});

  @override
  State<EnterNumberScreen> createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {

  String phoneNumber = "000000000";
  String isoCode = "AGO";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConfirmNumberScreen()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80.0),
                Image.asset(
                  'assets/images/logo.png',
                  width: 240.0,
                  height: 200.0,
                ),
                const Expanded(
                  child: SizedBox(height: 10.0),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Digite o teu número de telefone',
                          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30.0),
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {},
                          initialValue: PhoneNumber(isoCode: 'AO', phoneNumber: ''),
                          inputDecoration: const InputDecoration(
                            labelText: '00 000 000 000',
                            border: InputBorder.none, 
                          ),
                          isEnabled: false,
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  } 
}