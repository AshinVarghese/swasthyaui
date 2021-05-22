import 'package:Swasthya/CustomTextFormField.dart';
import 'package:Swasthya/model/model.dart';
import 'package:Swasthya/screens/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateForm extends StatefulWidget {
  const CreateForm({Key key}) : super(key: key);

  @override
  _CreateFormState createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model();

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;
    var size = MediaQuery.of(context).size;
    String chosenValue;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          width: halfMediaWidth,
                          child: MyTextFormField(
                            hintText: 'First Name',
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'First Name Required';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              model.firstName = value;
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          width: halfMediaWidth,
                          child: MyTextFormField(
                            hintText: 'Last Name',
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Last Name Required';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              model.lastName = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          width: halfMediaWidth,
                          child: MyTextFormField(
                            hintText: 'Date of Birth',
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Date of Birth Required';
                              }
                              return null;
                            },
                            onTap: () async {
                              var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now());
                            },
                            onSaved: (String value) {
                              model.dob = value;
                            },
                          ),
                        ),
                        Container(
                            alignment: Alignment.topCenter,
                            width: halfMediaWidth,
                            child: DropdownButtonFormField<String>(
                              value: chosenValue,
                              items: <String>[
                                'Male',
                                'Female',
                                'Other',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              hint: Text("Chose Gender"),
                              onChanged: (String value) {
                                setState(() {
                                  chosenValue = value;
                                });
                              },
                            )),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          width: halfMediaWidth,
                          child: MyTextFormField(
                            hintText: 'Pincode',
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Pincode Required';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              model.dob = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: MyTextFormField(
                      hintText: 'Emergency Contact Number',
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'contact Number Required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        model.dob = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          width: halfMediaWidth,
                          child: MyTextFormField(
                            hintText: 'Blood Group',
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Blood Group Required';
                              }
                              return null;
                            },
                            onSaved: (String value) {
                              model.dob = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: MyTextFormField(
                      hintText: 'Allergies',
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'contact Number Required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        model.dob = value;
                      },
                    ),
                  ),
                  Container(
                    child: MyTextFormField(
                      hintText: 'Emergency Contact Number',
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'contact Number Required';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        model.dob = value;
                      },
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      color: Colors.orange,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Result(model: this.model)));
                        }
                      },
                      child: Text('Create Profile'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
