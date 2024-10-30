// ignore_for_file: deprecated_member_use

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_coffeashop/core/theme/app_pallete.dart';
import 'package:pos_coffeashop/features/auth/presentation/pages/register_page.dart';
import 'package:pos_coffeashop/features/theme/cubit/switch_theme_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://xyzcompany.supabase.co',
    anonKey: 'public-anon-key',
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SwitchThemeCubit(),
        ),
      ],
      child: BlocBuilder<SwitchThemeCubit, SwitchThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            debugShowMaterialGrid: false,
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            title: 'Flutter Demo',
            theme: themeState.isDarkMode ? darkTheme : lightTheme,
            home: const RegisterPage(),
          );
        },
      ),
    );
  }
}
