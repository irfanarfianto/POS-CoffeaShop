import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    text: 'Login',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.pop();
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daftar akun baru',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              // subtitle
              Text(
                'Silakan daftar untuk melanjutkan transaksi dan penggunaan akun Anda',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Nama',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Masukkan nama anda',
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
                  helperText:
                      'Password harus mengandung huruf besar, huruf kecil, angka dan minimal 8 karakter',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Konfirmasi Password',
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {},
                child: const Text('Daftar'),
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
                  label: const Text('Daftar dengan google'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
      ),
    );
  }
}
