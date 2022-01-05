import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Latihan Form Flutter",
    home: LatihanForm(),
  ));
}

class LatihanForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<LatihanForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Membuat Form Flutter"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              //tambahkan komponen seperti input field disini
              Padding(
                padding: const EdgeInsets.all(8.0),
                //contoh
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Masukkan nama lengkap anda",
                    labelText: "Nama lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: "Masukkan password",
                    labelText: "Password",
                    icon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: new InputDecoration(
                    hintText: "Contoh: 0812xxxxxxx",
                    labelText: "Nomor telp",
                    icon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
