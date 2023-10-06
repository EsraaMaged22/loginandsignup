import 'package:flutter/material.dart';
import 'BuildTextField.dart';
import 'Loginpage.dart';




class SignupPage extends StatefulWidget {
  _SignupPageState createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 230,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff70B0D2),
                    Color(0xff54CDC6),
                    Color(0xff39E9BA),
                  ])
          ),
          child: SafeArea(child: Icon(Icons.menu, color: Colors.white,)),
          alignment: Alignment.topLeft,),
        Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 10,),
              Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w500,
                fontSize: 40,
                color: Color(0xff39E9BA),),)
            ]),
        SizedBox(height: 10,),

        Material(elevation: 10
            ,
            child: BuildTextField(controller: emailController,
                hintText: 'Email',
                labelText: "",
                isPassword: false)),
        SizedBox(height: 10,),
        Material(elevation: 10,
            child: BuildTextField(controller: passwordController,
                hintText: 'Password',
                labelText: "",
                isPassword: true)
        ),
        SizedBox(height: 10,),
        Material(elevation: 10,
          child: BuildTextField(controller: passwordController,
              hintText: 'Confirm Password',
              labelText: "",
              isPassword: true),
        ),

SizedBox (height: 18,),
          Row(
            children: [ SizedBox(width: 260,),
              ElevatedButton (
                  onPressed: (){
                    print('pressed');},

                  child: Text('Sign up',style: TextStyle(color:Colors.white ,fontSize: 19,fontWeight: FontWeight.bold),
                  ),


                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff37ecba)),

                ),
            ],
          ),


        SizedBox(height: 25,),
        GestureDetector( onTap:  (){ Navigator.pop(context, MaterialPageRoute(builder: (context)=>LoginPage() ) );
        },
          child: Container(  alignment: Alignment.center, width: double.infinity,height: 55,
            color: Color(0xff37ecba),
            child: Text( "Login",style: TextStyle( fontSize:20,fontWeight:FontWeight.bold,color: Colors.white),),),
        )
      ]


      ),

    );

  }
}


