import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatelessWidget {


  // This widget is the root of your application.
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
      title: Center(
          child: Text('Gezi Rehberim' , style: TextStyle(color: Colors.black))

      ),
backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right:20.0, left:20.0, top:50.0, bottom:100.0),

          child: SafeArea(
            child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
borderRadius: BorderRadius.circular(10),
                child:
                Image.asset('assets/images/home.jpg',height: size.height * .5, width: size.width*.9),
                ),
                SizedBox(height: size.height * .03,),
                Column(

crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
ElevatedButton(
                       style: ElevatedButton.styleFrom( primary: Colors.white),
                        onPressed: () {
                      print('Giriş yap butonu' );
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }, child: Text('Giriş yap' , style: TextStyle(color: Colors.black))),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                      print('Kayıt ol butonu');
                    }, child: Text('Kayıt ol' , style: TextStyle(color: Colors.black),))
                  ],
                ),
              ],
            ),
            ),
          ),



      ),
    );


  }
}