import 'package:flutter/material.dart';
import 'clubtheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ClubTheme.light(),
      darkTheme: ClubTheme.dark(),
      home: const InitialPage(),
    );
  }
}

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.9;
    var height = MediaQuery.of(context).size.height * 0.07;
    return MaterialApp(
        title: 'Login and Sign Up',
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(child:
                Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const SizedBox(
                        width: 150,
                        height: 150,
                        child: Image(
                          image: AssetImage('assets/bxscilogo.jpeg'),
                        )),
                    SizedBox(
                        width: 150,
                        child: Text('BxSci Clubs',
                            style: Theme.of(context).textTheme.titleLarge))
                  ]),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('Catch up with your favorite club today!',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center)),
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'Enter School Email',
                              hintText: 'Enter your email',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Password',
                              hintText: 'Enter your password',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: const Color(0xFF097969)),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }
                            },
                            child: Text('LOG IN',
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                          ))),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: const Color(0xFF097969)),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              );
                            },
                            child: Text('SIGN UP',
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                          ))),
                          SizedBox(height: height, width: width),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text('Forgot Your Email?',
                          style: Theme.of(context).textTheme.displayMedium)),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text('Forgot Your Password?',
                          style: Theme.of(context).textTheme.displayMedium))
                ]),
              )),
            ),
          ),
          floatingActionButton: const Icon(Icons.phonelink_ring_rounded),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        ));
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.9;
    var height = MediaQuery.of(context).size.height * 0.07;
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up', style: Theme.of(context).textTheme.displayLarge),
          backgroundColor: const Color(0xFF097969),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                  child: SingleChildScrollView(
                    child:
                   Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const SizedBox(
                        width: 150,
                        height: 150,
                        child: Image(
                          image: AssetImage('assets/bxscilogo.jpeg'),
                        )),
                    SizedBox(
                        width: 150,
                        child: Text('BxSci Clubs',
                            style: Theme.of(context).textTheme.titleLarge))
                  ]),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'School Email',
                              hintText: 'Enter your Email',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Email';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Full Name',
                              hintText: 'Enter your Full Name',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Name';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Grad Year',
                              hintText: 'Enter your Graduation Year',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter the Year';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'OSIS Number',
                              hintText: 'Enter your OSIS',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your OSIS';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Password',
                              hintText: 'Enter your Password',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Password';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Club',
                              hintText: 'Enter your Club',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Club';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Phone Number',
                              hintText: 'Enter your Phone Number',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Number';
                              }
                              return null;
                            },
                          ))),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          height: height,
                          width: width,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Club Position',
                              hintText: 'Enter your Club Position',
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Club Position';
                              }
                              return null;
                            },
                          ))),
                          Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: const Color(0xFF097969)),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }
                            },
                            child: Text('SIGN UP',
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                          ))),
                          
                ])))));
  }
}



// class Announcements extends StatefulWidget {
//   final User person;
//   const Announcements({required this.person, Key? key}) : super(key: key);

//   @override
//   State<Announcements> createState() => 
// }
