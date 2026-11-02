import 'package:flutter/material.dart';
import 'package:maskan/widgets/app_bar.dart';

class LoginAdminScreen extends StatelessWidget {
  const LoginAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset(
            'images/key.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 110,),
                const Text(
                  'Welcome To ',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                const Text(
                  'Maskan',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),
                ),
                SizedBox(height: 20,),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                Container(
                  width: 190,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'email address',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15.0),
                Container(
                  width: 190,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login To Your Account'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}
