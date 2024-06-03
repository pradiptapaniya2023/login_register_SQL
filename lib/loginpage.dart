import 'package:flutter/material.dart';
import 'package:login_register_page/signuppage.dart';

class Login_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return State_Login_Page();
  }
}

class State_Login_Page extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'asset/images/Registerpage - Loginpage BG.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                        margin: EdgeInsets.fromLTRB(0, 45, 0, 190),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontFamily: 'fontsfamily'),
                        ),
                      ),
                      TextFiledWidget(Icons.email, emailController, 'Email',
                          TextInputType.emailAddress),
                      TextFiledWidget(Icons.password, passwordController,
                          'Password', TextInputType.name),
                      Container(
                        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                        padding: EdgeInsets.fromLTRB(175, 0, 5, 0),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password ?',
                              style: TextStyle(
                                  fontFamily: 'fontsfamily',
                                  fontSize: 20,
                                  color: Colors.red),
                            )),
                      ),
                      Container(
                        height: 60,
                        width: 180,
                        child: Card(
                          color: Colors.black,
                          shadowColor: Colors.black,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 25,
                                  fontFamily: 'fontsfamily'),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            child: Text(
                              'Or Login With',
                              style: TextStyle(
                                  fontFamily: 'fontsfamily',
                                  color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          SizedBox(width: 25),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              print('Google is tap');
                            },
                            child: Card(
                              shadowColor: Colors.grey,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'asset/images/Google.jpg'))),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print('Facebook is tap');
                            },
                            child: Card(
                              shadowColor: Colors.grey,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'asset/images/Facebook.jpg'))),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print('Twitter is tap');
                            },
                            child: Card(
                              shadowColor: Colors.grey,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'asset/images/Twitter.jpg'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not registered ?',
                            style: TextStyle(
                                color: Colors.grey, fontFamily: 'fontsfamily'),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return Signup_Page();
                                  },
                                ));
                              },
                              child: Text(
                                'Sign up now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'fontsfamily'),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget TextFiledWidget(IconData icon, TextEditingController controller,
      String s, TextInputType textInputType) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        shadowColor: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white,
        child: TextField(
          controller: controller,
          style: TextStyle(fontFamily: 'fontsfamily', color: Colors.black),
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintStyle: TextStyle(fontFamily: 'fontsfamily', fontSize: 17),
              hintText: s,
              contentPadding: EdgeInsets.all(10)),
          keyboardType: textInputType,
        ),
      ),
    );
  }
}