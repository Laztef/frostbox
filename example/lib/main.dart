import 'package:frostbox/frostbox.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              stops: [.05, .25, .45, .55, .75, .95],
              colors: [
                Colors.black,
                Colors.blue,
                Colors.black,
                Colors.black,
                Colors.purple,
                Colors.black,
              ],
            ),
          ),
        ),
        Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .7,
            ////////////////////////////////////////////
            // The FrostBox get the parent size //
            ////////////////////////////////////////////
            child: FrostBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/github.webp", height: 50, width: 50),
                    Text(
                      'Welcome to "your app"',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Sign in")),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have an account? Sign up",
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
