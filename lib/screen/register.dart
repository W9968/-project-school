import 'package:frema/main.dart';
import 'package:flutter/material.dart';
import 'package:frema/atoms/input.dart';
import 'package:frema/screen/login.dart';
import 'package:frema/screen/dashboard.dart';
import 'package:frema/models/user-register.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isLoading = false;

  final key = GlobalKey<FormState>();
  var userRegister = UserRegister();

Future<void> createUserWithEmailAndPassword(UserRegister req) async {
    setState(() {
      _isLoading = true;
    });
    try {
      final AuthResponse res = await supabase.auth.signUp(
        email: req.getEmail,
        password: req.getPassword,
      );

      final User? user = res.user;

      if (user != null) {
        await supabase.from('datatable_user').insert([
          {
            'userid': user.id,
            'username': req.getUsername,
            'avatar': 'https://i.imgur.com/4nSdMfl.png',
            'email': user.email,
          }
        ]);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Account created successfully!"),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        );

        if (mounted) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Dashboard(),
            ),
          );
        }
      }
    } on AuthException catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 124.0,
              width: MediaQuery.of(context).size.width,
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 24.0),
              color: Theme.of(context).colorScheme.surface,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    "Enter your details below to create your account.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10.0),
              color: Theme.of(context).colorScheme.background,
              child: Form(
                key: key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: <Widget>[
                    Input(
                      animatedLabel: "Username",
                      placeholder: 'Enter your name',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Username is required';
                        }
                        return null;
                      },
                      onSaved: (String? value) =>
                          userRegister.setUsername = value!,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 16.0)),
                    Input(
                      animatedLabel: "Email",
                      placeholder: 'Enter your email',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                      onSaved: (String? value) =>
                          userRegister.setEmail = value!,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 16.0)),
                    Input(
                      animatedLabel: "Password",
                      placeholder: 'Enter your password',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                      isPassword: true,
                      onSaved: (String? value) =>
                          userRegister.setPassword = value!,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 32.0)),
                    SizedBox(
                      width: double.infinity,
                      height: 48.0,
                      child: ElevatedButton(
                        onPressed: _isLoading
                            ? null
                            : () {
                          if (key.currentState!.validate()) {
                            key.currentState!.save();
                                  createUserWithEmailAndPassword(userRegister);
                              
                          } else {
                            print("error");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          _isLoading ? "loading" : "Sign up",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 16.0, left: 24.0, right: 24.0, bottom: 16.0),
              color: Theme.of(context).colorScheme.background,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const Login(), // Replace with your actual Signup screen
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
