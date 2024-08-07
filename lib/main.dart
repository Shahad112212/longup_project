import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home());
  }
}


bool isSecured=true;
List<User>users=[
User(email:"shahad114414@gmail.com" ,password:"12345678");];


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.pink,
title: const Center(child: Text("Long in",style: TextStyle(fontSize: 26,color:Colors.white),)),

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network('https://th.bing.com/th/id/OIP.WO7PGRD-CO4I_TmJvPcuBAHaFu?w=1207&h=934&rs=1&pid=ImgDetMain',
            
            width: 350,
            height: 350,
            
            ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(  
            children: [TextFormField(
          decoration: const InputDecoration(
            label: Text("Enter Email"),
            prefixIcon: Icon(Icons.person, color:Colors.black),
        border: OutlineInputBorder(
        borderSide: BorderSide(),
        
        
        ),
          ),
          
            ),

             const SizedBox(height: 20),
            TextFormField(
              obscureText: isSecured,
        decoration: InputDecoration(
          label:Text("Enter password"),
          prefixIcon: Icon(Icons.lock,color:Colors.black),
          suffixIcon: IconButton(
            onPressed: (){
            setState(() {
              isSecured=!isSecured;
            });
            },
            
           icon:  Icon(Icons.remove_red_eye),),
          border: OutlineInputBorder(
        borderSide: BorderSide()
          ),
        ),
            ),
             const SizedBox(height: 40),
           InkWell(
            onTap: (){
              print("logned");
            },
child: Container(
  padding: const EdgeInsets.all(15),
 
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
  color:Colors.pink,
  ),
child: const Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [Text("login",style: TextStyle(color:Colors.white,fontSize: 24),
),
SizedBox(width: 5,),
Icon(Icons.login,color:Colors.white),],


),
  
  
  ),



           ),
           
            ],
          ),
        ),
        
          ],
        ),
      ),
      
      );

  }
}
    
