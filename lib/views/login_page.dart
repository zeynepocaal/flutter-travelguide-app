import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      centerTitle : true,
        title : Text('Gezi Rehberim', style: TextStyle(color: Colors.black)),
      ),

body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.07))],
                 // border: Border.all(),
                  color: Colors.white

            
    ),

              child: Padding(

                padding: const EdgeInsets.only(left: 20.0, top: 320.0, right:50.0, bottom: 20.0),
                child: Column(

                  children: [

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,

     children: [
                         TextField(
                           controller: emailController,
                           cursorColor: Colors.black,
                           keyboardType: TextInputType.emailAddress,
                           decoration: InputDecoration(

                             prefixIcon: Icon(Icons.attach_email, color: Colors.black,),
                                 hintText: 'Kullanıcı maili',
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.black)
                             ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.black)
                             )
                           ),

                           ),

                         TextField(
                           controller:passwordController,
                           obscureText: isVisible ? true : false,
                           cursorColor: Colors.black,
                           decoration: InputDecoration(
                             suffixIcon: InkWell(
                               onTap: () {
                                 print('göz ikonu');
                               },
                                 child: Icon(Icons.remove_red_eye, color: Colors.black,)),
                         prefixIcon: Icon(Icons.vpn_key, color: Colors.black,),
                          hintText: 'Şifreyi giriniz',
                           enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.black)
                           ),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black)
                         ),
                           ),
                         ),



      ],

                      ),
                    ),

                  ],
                ),
              ),

            ),
                SizedBox(height: 50,),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white
                    ),

                    onPressed: () {}, child: Text('Giriş yap', style: TextStyle(color: Colors.black ))),
      ],
      ),
          ),
        ),
),
    );

  }
}


