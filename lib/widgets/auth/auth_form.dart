import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    child: Text('Login'),
                    onPressed: () {},
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    // ),
                  ),
                  TextButton(
                    child: Text('Create New Account'),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
