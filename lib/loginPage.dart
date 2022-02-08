import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color color1 = const Color(0xff0196ae);
  Color color2 = const Color(0xff2a5a98);
  bool view = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black87, BlendMode.dstATop),
                image: AssetImage("assets/image3.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            _appName(),
            const SizedBox(
              height: 80,
            ),
            _emailAndPassword(),
            const Expanded(
              child: SizedBox(),
            ),
            _button()
          ],
        ),
      ),
    );
  }

  Widget _appName() {
    return Column(
      children: [
        Text(
          "Travello",
          style: TextStyle(
              color: color1, fontSize: 34, fontWeight: FontWeight.w700),
        ),
        Text(
          "Travel with us!",
          style: TextStyle(color: color2, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Widget _emailAndPassword() {
    return Container(
        child: Column(
      children: [_email(), _password(), _forgetPassword()],
    ));
  }

  Widget _email() {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              label: Text("Email",
                  style: TextStyle(color: color2, fontWeight: FontWeight.w600)),
              enabledBorder:
                  UnderlineInputBorder(borderSide: BorderSide(color: color2)),
              focusedBorder:
                  UnderlineInputBorder(borderSide: BorderSide(color: color2)),
              suffixIcon: const Icon(
                Icons.check_circle,
                color: Colors.green,
              )),
        ));
  }

  Widget _password() {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          obscureText: view,
          decoration: InputDecoration(
              label: Text("Password",
                  style: TextStyle(color: color2, fontWeight: FontWeight.w600)),
              enabledBorder:
                  UnderlineInputBorder(borderSide: BorderSide(color: color2)),
              focusedBorder:
                  UnderlineInputBorder(borderSide: BorderSide(color: color2)),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    view = !view;
                  });
                },
                child: Icon(
                  view ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black87,
                ),
              )),
        ));
  }

  Widget _forgetPassword() {
    return InkWell(
      onTap: () {
        print("forget password clicked");
      },
      child: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(top: 25, right: 18),
        child: Text(
          "Forget Password?",
          style: TextStyle(color: color2, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Widget _button() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Don't have an account? ",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Sign Up",
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
        InkWell(
          onTap: () {
            print("login Pressed");
          },
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            height: 75,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: color1,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: const Text(
              "Log In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}
