import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  void changelanguage() {
    // This function can be used to change the language dynamically
    // For example, you can toggle between English and Arabic
    if (context.locale.languageCode == 'en') {
      context.setLocale(Locale('ar'));
    } else {
      context.setLocale(Locale('en'));
    }
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'email'.tr(), // Using EasyLocalization for translation
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: changelanguage
          ),
        ],
      ),
      body: Center(
        child: 
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'current language: ${context.locale.languageCode}',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: '\nWorld!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              TextSpan(
                text: '\nWelcome to the Home View.',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}