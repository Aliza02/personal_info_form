import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const personal_info(),
    );
  }
}

class personal_info extends StatefulWidget {
  const personal_info({super.key});

  @override
  State<personal_info> createState() => _personal_infoState();
}

class _personal_infoState extends State<personal_info> {
  TextEditingController name = new TextEditingController();
  TextEditingController rollno = new TextEditingController();
  TextEditingController dept = new TextEditingController();
  TextEditingController batch = new TextEditingController();
  TextEditingController domicile = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 54, 122, 156),
          leading: const Icon(Icons.person),
          title: Text('Personal Information'),
        ),
        body: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter the value';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Enter Name",
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: rollno,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter the value';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Enter Rollno",
                      labelText: "Rollno",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: dept,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter the value';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Enter Department",
                      labelText: "Department",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: batch,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter the value';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Enter Batch ",
                      labelText: "Batch",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: domicile,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter the value';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Enter Domicile",
                      labelText: "Domicile",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50.0, 30.0, 0.0, 0.0),
                child: SizedBox(
                  width: 150.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SecondScreen()));
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Information'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text(name.text),
                                    Text(rollno.text),
                                    Text(dept.text),
                                    Text(domicile.text),
                                    Text(batch.text),
                                  ],
                                ),
                              ),
                            );
                          },
                          );
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 54, 122, 156),
                    ),
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

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _secondScreen();
}

class _secondScreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Submitted'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: Icon(
                Icons.check_box,
                size: 200.0,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
              child: Text(
                'Form Submitted',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              width: 150.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
