import 'package:brogolf1/screens/signup.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login", 
          style: TextStyle(color: Colors.white,)
          ),
        backgroundColor: Color.fromARGB(255, 50, 110, 1),
        
      ),
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient( 
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 65, 144, 1),
              Color.fromARGB(255, 1, 187, 20),
              Color.fromARGB(255, 93, 212, 1),
              Color.fromARGB(255, 115, 228, 3),
            ]
          )
        ),
        child: Column(
          children: [
           const Align(
          alignment: Alignment.topCenter,
          child: Image(
            image: AssetImage('images/brogolf_temp-logo.png'),
            width: 300,
          ),
        ),

       const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
       const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
        Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const BottomNavigationBarExampleApp()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Color.fromARGB(255, 16, 14, 14), fontSize: 25),
                        ),
                      ),
                    ),
        Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              SignupPage()));
                    
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                      color: Color.fromARGB(255, 16, 14, 14), fontSize: 25),
                ),
              ),
            ),
        ]
      ),
      )
    );
  }

}




// class _LoginDemoState extends State<LoginDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("Login Page"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 60.0),
//               child: Center(
//                 child: Container(
//                     width: 200,
//                     height: 150,
//                     /*decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(50.0)),*/
//                     child: Image.asset('asset/images/flutter-logo.png')),
//               ),
//             ),
//             Padding(
//               //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Email',
//                     hintText: 'Enter valid email id as abc@gmail.com'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               //padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                     hintText: 'Enter secure password'),
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
//                 //TODO FORGOT PASSWORD SCREEN GOES HERE
//               },
//               child: Text(
//                 'Forgot Password',
//                 style: TextStyle(color: Colors.blue, fontSize: 15),
//               ),
//             ),
//             Container(
//               height: 50,
//               width: 250,
//               decoration: BoxDecoration(
//                   color: Colors.blue, borderRadius: BorderRadius.circular(20)),
//               child: FlatButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (_) => HomePage()));
//                 },
//                 child: Text(
//                   'Login',
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 130,
//             ),
//             Text('New User? Create Account')
//           ],
//         ),
//       ),
//     );
//   }
// }
