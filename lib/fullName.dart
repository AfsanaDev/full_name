
import 'package:flutter/material.dart';

class FullName extends StatefulWidget {
   FullName({super.key});

  @override
  State<FullName> createState() => _FullNameState();
}

class _FullNameState extends State<FullName> {
  String fullName ='';
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Name Show'),
      ),
      body: Column(
        children: [
          TextField(
            controller: firstName,
          ),
          TextField(
            controller: lastName,
          ),
          TextButton(
            onPressed: (){
              setState(() {
                fullName = "${firstName.text} ${lastName.text}";
              });
            },
          child: Text('Add')
          ),
          Text('Full Name is $fullName'),
        ],
      ),
    );
  }
}
