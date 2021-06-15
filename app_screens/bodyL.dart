import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:remedies/app_screens/english_screen.dart';
import './background.dart';
import './signup_screen.dart';
import './already_have_an_account_check.dart';
import 'authentication.dart';
import 'choose_screen.dart';
import 'or_divider.dart';
import 'rounded_button.dart';
import 'rounded_input_field.dart';
import 'rounded_password_field.dart';
import 'social_icon.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Future<void> signInWithGoogle() async {
    try {
      UserCredential userCredential;

      if (kIsWeb) {
        var googleProvider = GoogleAuthProvider();
        userCredential = await _auth.signInWithPopup(googleProvider);
      } else {
        final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
        BuildContext context;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChooseScreen()));
        print("***************");        final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
        final googleAuthCredential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        userCredential =
        await _auth.signInWithCredential(googleAuthCredential);
      }
      BuildContext context;

      final user = userCredential.user;
      print(user);

      Scaffold.of(context).showSnackBar(SnackBar(

        content: Text('Sign In ${user.uid} with Google'),
      ));
      // return user;
    }

    catch (e) {
      print("!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@@@@@@@!!!!!!!!!!!!!!!!!!");

      print(e);
      BuildContext context;
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to sign in with Google: $e'),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Image.asset(
              './images/REMEDIEZ+LOGO.png',
              height: 230,
              width: 300,
            ),
            SizedBox(height: 20.0),

            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Your Password",

              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EnglishScreen()));},
            ),
            SizedBox(height: size.height * 0.03),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: 'lib/app_screens/assets/icons/google-plus.svg',
                  press: () => googleSignIn().whenComplete(() async {
                    var user = await FirebaseAuth.instance.currentUser;

                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => EnglishScreen()));
                  },
                ),
              )
              ],
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
