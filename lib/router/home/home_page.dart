import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_coffeashop/router/home/widget/list_menu.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController(initialPage: 0);
  int selected = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            selected = index;
          });
        },
        children: const [
          HomeSection(),
          InventarisSection(),
          NotificationSection(),
          ProfileSection(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        option: AnimatedBarOptions(
          opacity: 0.3,
          barAnimation: BarAnimation.fade,
          padding: const EdgeInsets.only(top: 5.0),
        ),
        iconSpace: 50.0,
        notchStyle: NotchStyle.circle,
        items: [
          BottomBarItem(
            icon: selected == 0
                ? const Icon(EvaIcons.home)
                : const Icon(EvaIcons.home_outline),
            title: const Text(
              'Beranda',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),
          BottomBarItem(
            icon: selected == 1
                ? const Icon(EvaIcons.archive)
                : const Icon(EvaIcons.archive_outline),
            title: const Text('Inventaris',
                style: TextStyle(
                  fontSize: 12.0,
                )),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),
          BottomBarItem(
            icon: selected == 2
                ? const Icon(EvaIcons.bell)
                : const Icon(EvaIcons.bell_outline),
            title: const Text('Notifikasi',
                style: TextStyle(
                  fontSize: 12.0,
                )),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),
          BottomBarItem(
            icon: selected == 3
                ? const Icon(EvaIcons.person)
                : const Icon(EvaIcons.person_outline),
            title: const Text('Profil',
                style: TextStyle(
                  fontSize: 12.0,
                )),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.jumpToPage(index);
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/pesanan');
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// Section Widgets
class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: const [
          AuthSection(),
          DashboardSection(),
          ProductManagementSection(),
          LoyaltyProgramSection(),
          ReportSection(),
          UserManagementSection(),
          SettingsSection(),
        ],
      ),
    );
  }
}

class PemesananSection extends StatelessWidget {
  const PemesananSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pesanan'),
        ),
        body: const Center(child: Text('Pemesanan Page')));
  }
}

class InventarisSection extends StatelessWidget {
  const InventarisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inventory'),
        ),
        body: const Center(child: Text('Inventaris Page')));
  }
}

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notifikasi'),
        ),
        body: const Center(child: Text('Notifikasi Page')));
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profil'),
        ),
        body: const Center(child: Text('Profil Page')));
  }
}
