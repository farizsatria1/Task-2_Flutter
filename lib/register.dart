import 'package:flutter/material.dart';
import 'package:testudacoding/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
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
                Text("Create an Account", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
                ),
                SizedBox(height: 15),
                Text(
                  "Selamat datang di form register Politeknik Negeri Padang \n "
                      "Silahkan isi form pendaftaran di bawah ini untuk membuat akun",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50,),
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

                    SizedBox(height: 15,),
                    Text("Confirm Password", style: TextStyle(
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
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17),
                            suffixIcon: Icon(Icons.visibility_off)),
                      ),
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
                                "SIGN UP",
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
                        Text("Already have an account ?", style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                          },
                          child: Text(
                            "Sign In",
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
