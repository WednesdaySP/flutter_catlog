import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ='';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png"),
              SizedBox(height: 20,),
              Text("Welcome $name",
              style: TextStyle(color: Colors.black,fontSize: 24,fontWeight:FontWeight.w500),),
              SizedBox(height: 20,),
          
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Enter your name",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {
                    
                  });
                },
              ),
          
                TextFormField(
                  obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Enter your password",
                ),
              ),
             SizedBox(height: 20,),

             InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/home");
              },
               child: Container(
                width: 150,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text("Login",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),),
               ),
             )
              // ElevatedButton(onPressed:() {
              // },
              // style:  TextButton.styleFrom(maximumSize: Size(150, 40)),
              //  child: Text("Login",
              // style: TextStyle(color: Colors.black),))
            ],
          
          ),
        ),
      ),
    );
  }
}