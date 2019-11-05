import 'package:cheffperuano/pagina/pagFavorito.dart';
import 'package:cheffperuano/pagina/pagInicio.dart';
import 'package:cheffperuano/pagina/pagTip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class PagLogin extends StatefulWidget {
  @override
  _PagLoginState createState() => new _PagLoginState();
 }

 class _PagLoginState extends State<PagLogin> {
  /// Normally the signin buttons should be contained in the SignInPage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(50, 50, 50, 1.0),
      body: Container(
              decoration: new BoxDecoration(image: new DecorationImage(
                image: AssetImage('assets/images/login.jpg'),fit: BoxFit.cover )
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            /*SignInButtonBuilder(
              text: 'Get going with Email',
              icon: Icons.email,
              onPressed: () {},
              backgroundColor: Colors.blueGrey[700],
              width: 200.0,
            ),*/
            Divider(),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PagTip()),);
              },
            ),
            SignInButton(
              Buttons.Facebook,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PagFavorito()),);
              },
            ),
            /*SignInButton(
              Buttons.GitHub,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Pinterest,
              text: "Sign up with Pinterest",
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Twitter,
              text: "Use Twitter",
              onPressed: () {},
            ),*/
            /*Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.LinkedIn,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Tumblr,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Facebook,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButtonBuilder(
                  icon: Icons.email,
                  text: "Ignored for mini button",
                  mini: true,
                  onPressed: () {},
                  backgroundColor: Colors.cyan,
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}