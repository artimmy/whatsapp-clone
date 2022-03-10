import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  String _logError = "";

  final String _emailMock = "arthur@email.com";
  final String _passwordMock = "123";

  _logUser()
  {
    String email = _email.text;
    String password = _password.text;
    
    if( email.isNotEmpty && email.contains("@") && email == _emailMock )
    {
      if( password.isNotEmpty && password == _passwordMock )
      {
        setState(() {
          _logError = "Congratulations 😎😎😎";
        });
      }
      else
      {
        setState(() {
          _logError = "Type a valid password";
        });
      }
    }
    else
    {
      setState(() {
        _logError = "Type a valid email";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xff075E54)),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Image.asset("images/logo.png", width: 200, height: 150,),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(32, 12, 32, 16),
                      hintText: "E-mail",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    controller: _email,
                  ),
                ),
                TextField(
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(32, 12, 32, 16),
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    controller: _password,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 10),
                    child: RaisedButton(
                      onPressed: ()
                      {
                        _logUser();
                      }, 
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.green,
                      padding: const EdgeInsets.fromLTRB(32, 12, 32, 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ), 
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      child: const Text(
                        "Don't have and account? Make one!",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: (){},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Center(
                      child: Text(
                        _logError,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}