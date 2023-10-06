import 'package:flutter/material.dart';
import 'BuildTextField.dart';
import 'SignupPage.dart';




class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: Column(children: <Widget>[
          Container(
            width: double.infinity,
            height: 250,
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
              children: [SizedBox(height: 30,),
                Text('LOGIN', style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Color(0xff39E9BA),),)
              ]),
          SizedBox(height: 30,),

          Material(elevation: 20
              ,
              child: BuildTextField(controller: emailController,
                  hintText: 'Email',
                  labelText: "",
                  isPassword: false)),
          SizedBox(height: 20,),
          Material(elevation: 20,
              child: BuildTextField(controller: passwordController,
                  hintText: 'Password',
                  labelText: "",
                  isPassword: true)
          ),
        SizedBox(height: 30,),
        Row(children: [  SizedBox(width: 20,),
          Text('Forgot Password  ?',style:TextStyle(fontWeight: FontWeight.bold,  fontSize:15 ,color:Color(0xff37ecba)),),

     SizedBox(width: 80,),
     SizedBox( width: 100,height: 40,
       child: ElevatedButton (
            onPressed: (){
          print('pressed');},

              child: Text('Login',style: TextStyle(color:Colors.white ,fontSize: 19,fontWeight: FontWeight.bold),
              ),


         style: ElevatedButton.styleFrom(backgroundColor: Color(0xff37ecba)),

       ),
     )  ],
        ),
        SizedBox(height: 20,),
        GestureDetector( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage() ) );
          },
          child: Container(  alignment: Alignment.center, width: double.infinity,height: 55,
          color: Color(0xff37ecba),
          child: Text( "Sign Up",style: TextStyle( fontSize:20,fontWeight:FontWeight.bold,color: Colors.white),),),
        )
        ]


        ),

      );

  }
  }


