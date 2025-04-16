import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: LoginScreen()
    );
  }
}





class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  bool isObscure = true;
  String name = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/pngs/logo.png',
                    width: 120,
                    height: 120,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to Lafyuu',
                  style: TextStyle(
                    color: Color(0xff223263),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    color: Color(0xff909881),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9098B1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9098B1))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9098B1))
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      minHeight: 25,
                    ),
                    prefixIcon: SvgPicture.asset('assets/svgs/emails.svg'),
                    hintText: 'Your Email',
                    hintStyle: TextStyle(
                      color: Color(0xff909881),
                      fontSize: 13,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9098B1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9098B1))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff9098B1))
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      minHeight: 25,
                    ),
                    prefixIcon: SvgPicture.asset('assets/svgs/password.svg'),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color(0xff909881),
                      fontSize: 13,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  child: IconButton(
                    onPressed: () {},
                    icon: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xff40BFFF)
                      ),
                    ),
                    ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Divider(thickness: 2.4, color: Color(0xffEBF0FF),),
                      ),
                    
                    SizedBox(width: 35),
                    Text('OR'),
                    SizedBox(width: 35),
                    Flexible(
                      child: Divider(thickness: 2.4, color: Color(0xffEBF0FF),),
                      ),
                  ],
                ),
                SizedBox(height: 25,),
                SizedBox(
                  height: 60,
                  child: OutlinedButton(
                    onPressed: () {}, 
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Color(0xffEBF0FF), width: 1.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/svgs/google.svg'),
                        Text('Login with Google'),
                        SizedBox()
                      ],
                    ),
                    ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 60,
                  child: OutlinedButton(
                    onPressed: () {}, 
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Color(0xffEBF0FF), width: 1.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/svgs/facebook.svg'),
                        Text('Login with Facebook'),
                        SizedBox()
                      ],
                    ),
                    ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xff40BFFF)),
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(color: Color(0xff40BFFF)),
                        ),
                      ),
                    ],
                  )

              ],
            ),
            ),
        ),
        ),
    );
  }
}