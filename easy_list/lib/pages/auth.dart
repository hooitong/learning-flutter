import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _usernameValue = '';
  String _passwordValue = '';
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg-auth.jpeg'),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username / Email',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _usernameValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _passwordValue = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Accept Terms'),
                  value: _acceptTerms,
                  onChanged: (bool value) {
                    setState(() {
                      _acceptTerms = value;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/products');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
