import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login.dart'; // Import file login

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Langsung Tanpa Constants
  await Supabase.initialize(
    url: 'https://knixrkxjxbxcnybklebk.supabase.co', // URL sesuai screenshot kamu
    anonKey: 'sb_publishable_-uLVxl34Nor8rd4Z2_hFRA_Xv4v-Ml3',        // Ganti dengan Anon Key kamu
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peminjaman Alat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LoginScreen(), // Memanggil class dari login.dart
    );
  }
}