import 'package:flutter/material.dart';
// The argument type 'MyAppBar' can't be assigned
// to the parameter type 'PreferredSizeWidget?
// that's why we need to add implements PreferredSizeWidget
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/logo.png',
            width: 70.0,
            height: 70.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 15.0),
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 15.0),
              Text(
                'Properties',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                'Admin',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


