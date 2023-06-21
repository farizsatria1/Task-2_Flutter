import 'package:flutter/material.dart';
import 'package:testudacoding/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/pnp.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 15,),
                Text("Welcome Back", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
                ),
                SizedBox(height: 10),
                Text(
                  "Selamat datang di Login Form Politeknik Negeri Padang \n Silahkan isi Email dan Password anda di bawah",
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17),
                            hintText: "email@gmail.com",
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.6))
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    Text("Password", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),

                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17),
                            suffixIcon: Icon(Icons.visibility_off)),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: (BorderRadius.circular(5))),
                            ),
                            SizedBox(width: 15,),
                            Text("Remember me", style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        Text("Forgot Password ?", style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                        )
                      ],
                    ),

                    SizedBox(height: 30,),
                    Center(
                      child: Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              onPressed: () {},
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,),
                              )
                          )
                      ),
                    ),

                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("You don't have an account ?", style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    )
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
