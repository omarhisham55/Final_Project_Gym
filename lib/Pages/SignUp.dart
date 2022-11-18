import 'package:final_project_gym/Pages/Login.dart';
import 'package:final_project_gym/Pages/Navigation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var userController = TextEditingController();
  var passController = TextEditingController();
  var emailController = TextEditingController();
  var conPassController = TextEditingController();
  int groupRadio = 1;
  var radioVal = 'gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 102, 102, 102),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //title
              const Expanded(
                flex: 2,
                child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                ),
              ),
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
              const SizedBox(height: 20),
              //email
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    showCursor: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: 'Email',
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
              const SizedBox(height: 20),
              //password
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    showCursor: false,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: passController,
                    decoration: const InputDecoration(
                        hintText: 'Password',
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
              const SizedBox(height: 20),
              //Confirm password
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    showCursor: false,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: conPassController,
                    decoration: const InputDecoration(
                        hintText: 'Confirm Password',
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
              const SizedBox(height: 20),
              //gender
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Male',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: groupRadio,
                      activeColor: Colors.blue,
                      onChanged: (value) => setState(() => groupRadio = value as int),
                      // onChanged: (value) {
                      //   setState(() {
                      //     radioSelected = value;
                      //     radioVal = 'male';
                      //   });
                      // },
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      'Female',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: groupRadio,
                      activeColor: Colors.pink,
                      onChanged: (value) => setState(() => groupRadio = value as int),
                      // onChanged: (value) {
                      //   setState(() {
                      //     radioSelected = value;
                      //     radioVal = 'female';
                      //   });
                      // },
                    )
                  ],
              ),
              const Spacer(),
              //confirm button
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: ()
                      {
                        if(userController.text.isNotEmpty && passController.text.isNotEmpty
                          && emailController.text.isNotEmpty && conPassController.text.isNotEmpty){
                          if(conPassController.text == passController.text){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Navigation())
                            );
                          }
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
                        if(emailController.text.isEmpty || !emailController.text.contains("@")) {
                          const snackBar = SnackBar(
                            content: Text(
                              "Enter valid email",
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
                        if(conPassController.text != passController.text){
                          const snackBar = SnackBar(
                              content: Text(
                                'passwords are not the same',
                                style: TextStyle(fontSize: 14),
                              )
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),
                      ),
                    ),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 152, 191, 11)
                    ),
                  ),
                ),
              ),
              //login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ?',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 255, 0)
                      ),
                    ),
                    onPressed: () => setState(() => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()))
                    )
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
