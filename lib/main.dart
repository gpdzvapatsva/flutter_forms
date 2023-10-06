import 'package:flutter/material.dart';
void main() =>  runApp( const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Forms",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:MyCustomForm(),
      )
    );
  }
}
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.deepOrange,
                  hintText: 'Enter your firstname',
                  labelText: 'Firstname',
                ),
              ),
              const SizedBox(height:20.0),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.deepOrange,
                  hintText: 'Enter your lastname',
                  labelText: 'Surname',
                ),
              ),
              const SizedBox(height:20.0),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  iconColor: Colors.deepOrange,
                  hintText: 'Enter your phone number',
                  labelText: 'Phone Number',
                ),
              ),
          Padding(padding:const EdgeInsets.all(35.0),
          child: TextButton(
            onPressed: (){},
            child: const Text("Submit"),
          ),)

            ],
          ),
        ));
  }
}



