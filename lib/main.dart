import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      home:Scaffold(
        backgroundColor: Colors.cyan[800],
        body: SafeArea(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/abdelrahman.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Abd Elrahman Hossam',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 12),
                 Text(
                  'App Developer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white, fontStyle: FontStyle.italic,),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.only(left: 16),
                  height: 60,
                  child: Row(
                    children: [
                      Icon(Icons.phone, size: 35, color: Colors.cyan[800]),
                      SizedBox(width: 20,),
                      Text(
                        '+20 155 491 9001',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  ),
                  SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.only(left: 16),
                  height: 60,
                  child: Row(
                    children: [
                      Icon(Icons.email, size: 35, color: Colors.cyan[800]),
                      SizedBox(width: 20,),
                      Text('alqrshbdalrhmn08@gmail.com',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  )
              ],
              ),
          ),
          ),
      ),
    );
  }
}
