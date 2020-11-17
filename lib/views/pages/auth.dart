import 'package:flutter/material.dart';
// import 'package:inap/utils/constants.dart';
import 'package:inap/utils/styles.dart';
import 'package:inap/views/partials/gradient_button.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  static const textNormalStyle = TextStyle(fontSize: 18, color: Colors.white);
  static const textBoldStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const textHeroStyle = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static const Gradient blackGradient = LinearGradient(
    colors: [Color(0xFF262833), Color(0xFF17181D)],
  );
  static const Gradient blueGradient = LinearGradient(
    colors: [Color(0xFF263C84), Color(0xFF19295F)],
  );

  // Future<bool> checkAuth() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String email = prefs.getString(Contants.userEmailKey) ?? "";
  //   String token = prefs.getString(Contants.userTokenKey) ?? "";
  //   if (token != "" && email != "") {
  //     // return await api.validateToken(token, email);
  //   }
  //   return false;
  // }

  @override
  void initState() {
    // wtf???
    super.initState();
    if (false) {
      Navigator.of(context).pushReplacementNamed("/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.appPrimaryColor,
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text("Tahukah Kamu?", style: textNormalStyle),
            ),
            Text(
              "1/3 Waktu hidup kita adalah untuk tidur. Masih berfikir tidur tidak penting?",
              style: textHeroStyle,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  GradientButton(
                    margin: EdgeInsets.fromLTRB(16, 72, 16, 0),
                    child: Text("Masuk", style: textBoldStyle),
                    gradient: blackGradient,
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/home");
                    },
                  ),
                  GradientButton(
                    child: Text("Daftar", style: textBoldStyle),
                    gradient: blueGradient,
                  ),
                  Text(
                    "atau kamu dapat masuk dengan google",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  GradientButton(
                    child: Text("Masuk Dengan Google", style: textBoldStyle),
                    gradient: blackGradient,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
