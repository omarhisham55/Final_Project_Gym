import 'package:final_project_gym/Home.dart';
import 'package:final_project_gym/Navigation.dart';
import 'package:final_project_gym/SignUp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 102, 102, 102),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //title
              Expanded(
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),
              ),
              SizedBox(height: 40),
              //username
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      showCursor: false,
                      keyboardType: TextInputType.name,
                      controller: userController,
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        )
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                ),
              ),
              //password
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        )
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              new Spacer(),
              //confirm button
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 30
                  ),
                  child: Container(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: ()
                      {
                        if(userController.text.isNotEmpty && passController.text.isNotEmpty){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Navigation())
                          );
                        }
                        if(userController.text.isEmpty) {
                          const snackBar = SnackBar(
                            content: Text(
                              "Enter valid username",
                              style: TextStyle(fontSize: 14),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                        if(passController.text.isEmpty || passController.text.length < 8){
                          const snackBar = SnackBar(
                            content: Text(
                              "Min characters 8",
                              style: TextStyle(fontSize: 14),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 152, 191, 11)
                    ),
                  ),
                ),
              ),
              //signup
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ?',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp())
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 255, 0)
                    ),
                  ),
                )
              ],
            )
          ],
      ),
        ),
      ),
    );
  }
}
