import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_coffeashop/features/theme/cubit/switch_theme_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POS Coffeashop'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // Section Auth
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Auth'),
            children: [
              ListTile(
                title: const Text('Login'),
                onTap: () {
                  context.pushNamed('login');
                },
              ),
              ListTile(
                title: const Text('Register'),
                onTap: () {
                  context.pushNamed('register');
                },
              ),
            ],
          ),
          // Section Dashboard
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Dashboard'),
            children: [
              ListTile(
                title: const Text('Pemesanan'),
                onTap: () {
                  context.pushNamed('pemesanan');
                },
              ),
              ListTile(
                title: const Text('Pembayaran'),
                onTap: () {
                  context.pushNamed('pembayaran');
                },
              ),
            ],
          ),
          // Section Manajemen Produk & Inventaris
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Manajemen Produk & Inventaris'),
            children: [
              ListTile(
                title: const Text('Daftar Produk'),
                onTap: () {
                  context.pushNamed('daftar_produk');
                },
              ),
              ListTile(
                title: const Text('Tambah/Edit Produk'),
                onTap: () {
                  context.pushNamed('tambah_edit_produk');
                },
              ),
              ListTile(
                title: const Text('Stok Bahan Baku'),
                onTap: () {
                  context.pushNamed('stok_bahan_baku');
                },
              ),
            ],
          ),
          // Section Program Loyalitas Pelanggan
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Program Loyalitas Pelanggan'),
            children: [
              ListTile(
                title: const Text('Riwayat Pelanggan'),
                onTap: () {
                  context.pushNamed('riwayat_pelanggan');
                },
              ),
              ListTile(
                title: const Text('Detail Program Loyalitas'),
                onTap: () {
                  context.pushNamed('detail_program_loyalitas');
                },
              ),
            ],
          ),
          // Section Laporan
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Laporan'),
            children: [
              ListTile(
                title: const Text('Laporan Penjualan'),
                onTap: () {
                  context.pushNamed('laporan_penjualan');
                },
              ),
              ListTile(
                title: const Text('Laporan Stok'),
                onTap: () {
                  context.pushNamed('laporan_stok');
                },
              ),
            ],
          ),
          // Section Manajemen Pengguna
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Manajemen Pengguna'),
            children: [
              ListTile(
                title: const Text('Daftar Pengguna'),
                onTap: () {
                  context.pushNamed('daftar_pengguna');
                },
              ),
              ListTile(
                title: const Text('Detail Pengguna'),
                onTap: () {
                  context.pushNamed('detail_pengguna');
                },
              ),
            ],
          ),
          // Section Pengaturan
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Pengaturan'),
            children: [
              ListTile(
                title: const Text('Profil Toko'),
                onTap: () {
                  context.pushNamed('profil_toko');
                },
              ),
              ListTile(
                title: const Text('Integrasi Pembayaran'),
                onTap: () {
                  context.pushNamed('integrasi_pembayaran');
                },
              ),
              ListTile(
                title: const Text('Backup Data'),
                onTap: () {
                  context.pushNamed('backup_data');
                },
              ),
            ],
          ),
          // Section Ganti Tampilan
          ListTile(
            title: Text(
              'Ganti Tampilan',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: BlocBuilder<SwitchThemeCubit, SwitchThemeState>(
              builder: (context, state) {
                return Switch(
                  value: state.isDarkMode,
                  onChanged: (value) {
                    context.read<SwitchThemeCubit>().toggleTheme();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
