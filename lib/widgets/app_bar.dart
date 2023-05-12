import 'package:flutter/material.dart';
// The argument type 'MyAppBar' can't be assigned
// to the parameter type 'PreferredSizeWidget?
// that's why we need to add implements PreferredSizeWidget
class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  String selectedScreen = '/home';

  @override
  Widget build(BuildContext context) {
    return AppBar(

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                selectedScreen = '/home';
              });
              Navigator.pushReplacementNamed(context, '/home');
            },
            child: Image.asset(
              'images/logo.png',
              width: 70.0,
              height: 70.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    selectedScreen = '/home';
                  });
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: selectedScreen == '/home' ? Colors.blue : Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 15.0),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedScreen = '/about';
                  });
                  Navigator.pushReplacementNamed(context, '/about');
                },
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: selectedScreen == '/about' ? Colors.blue : Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 15.0),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedScreen = '/properties';
                  });
                  Navigator.pushReplacementNamed(context, '/properties');
                },
                child: Text(
                  'Properties',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: selectedScreen == '/properties' ? Colors.blue : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedScreen = '/loginAdmin';
              });
              Navigator.pushReplacementNamed(context, '/loginAdmin');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: selectedScreen == '/loginAdmin' ? Colors.blue : Colors.black,
                  ),
                ),
                const SizedBox(height: 4.0),
                const Text(
                  'Admin',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




