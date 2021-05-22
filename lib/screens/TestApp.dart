import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key key}) : super(key: key);

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Your Self'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Row(children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter First Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter First Name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Last Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter First Name';
                  }
                  return null;
                },
              ),
            ]),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your Date of Birth',
                labelText: 'Date of Birth',
              ),
              onSaved: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {}
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
