import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Register',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.push('/register');
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            // subtitle
            Text(
              'Silakan masuk untuk melanjutkan transaksi dan penggunaan akun Anda',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Masukkan email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Masukkan password',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {
                    // Add logic to toggle password visibility
                  },
                ),
              ),
              obscureText: true,
            ),
            // lupa password
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Lupa Password?',
                      style: Theme.of(context).textTheme.bodyMedium,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.push('/lupa_password');
                        },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {},
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'atau',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  side: BorderSide(
                    width: 0.3,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                onPressed: () {},
                icon: Brand(
                  Brands.google,
                  size: 25,
                ),
                label: const Text('Login dengan google'),
              ),
            ),
            const Spacer(),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    const TextSpan(text: 'Versi Aplikasi: 1.0.0\n'),
                    TextSpan(
                      text: 'Kebijakan Privasi',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add logic to open the privacy policy
                        },
                    ),
                    const TextSpan(text: '\nSyarat dan Ketentuan\n'),
                    const TextSpan(
                        text: 'Copyright © 2022. All rights reserved.\n'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
