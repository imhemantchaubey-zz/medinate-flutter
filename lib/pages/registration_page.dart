import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  late String _name;
  late String _email;
  late String _bloodType;
  late String _phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blood Donor Registration',
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              onSaved: (value) => _name = value!,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              onSaved: (value) => _email = value!,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Blood Type'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your blood type';
                }
                return null;
              },
              onSaved: (value) => _bloodType = value!,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone Number'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
              onSaved: (value) => _phoneNumber = value!,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Save the data to a database or send it to a server
                }
              },
              child: Text(
                'Submit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
