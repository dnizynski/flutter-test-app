import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app_1/HomePage/home_page.dart';
import 'package:test_app_1/widgets/CurrentUser.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatefulWidget {
  static const route = '/introPage';

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _formKey = GlobalKey<FormState>();

  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String validator(String value) {
    if (value == null || value.isEmpty) {
      return 'Field cannot be empty';
    }
    return null;
  }

  void login() {
    if (_formKey.currentState.validate()) {
      if (_loginTextController.text == 'koko' &&
          _passwordTextController.text == 'koko') {
        context.read<CurrentUser>().logIn();
        Navigator.pushReplacementNamed(context, HomePage.route);
      }
    }
  }

  final Future<bool> isLogged = SharedPreferences.getInstance()
      .then((value) => value.getBool(('isLoggedIn')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: <Widget>[
              Center(
                  child: Hero(
                tag: 'logoHero',
                child: Image(
                  image: AssetImage('img/logo.png'),
                ),
              )),
              FutureBuilder(
                  future: isLogged,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data) {
                        // context.read<CurrentUser>().logIn();
                        Future.delayed(Duration.zero, () {
                          Navigator.pushReplacementNamed(
                              context, HomePage.route);
                        });
                      }

                      return SizedBox();
                    } else {
                      return SizedBox();
                    }
                  }),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: TextFormField(
                        validator: validator,
                        controller: _loginTextController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Login'),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      validator: validator,
                      controller: _passwordTextController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: ElevatedButton(
                  onPressed: login,
                  child: Container(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
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
