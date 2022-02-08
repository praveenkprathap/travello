import 'package:flutter/material.dart';
import 'package:travello/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image1.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Get ready for your \nLifetime journey",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5, right: 10),
              child: Text(
                "There are so many amazing places around the globe to see, we couldn't possibly include them all in just one list. But, these breathtaking destinations are definitely worth bumping to the top of your travel bucket list–whether you're looking to relax on a beach, get off the grid or explore a city.",
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 40, top: 20),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: const BoxDecoration(
                      color: Color(0xff0196ae),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
