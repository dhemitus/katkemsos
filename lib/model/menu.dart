import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/pages/signin_page.dart';
import 'package:flutter_katkemsos/pages/program_page.dart';

class MenuItem {
  final String label;
  final Widget link;

  MenuItem(this.label, this.link);
}

List<MenuItem> defaultMenu = [
  MenuItem('HEAD', SignInPage()),
  MenuItem('KAT', SignInPage()),
  MenuItem('Program KAT', ProgramPage()),
  MenuItem('Profil KAT', SignInPage()),
  MenuItem('Pendampingan', SignInPage()),
  MenuItem('Peran Pemda', SignInPage()),
  MenuItem('Peran Dunia Usaha', SignInPage()),
  MenuItem('Login', SignInPage()),
];

List<MenuItem> extendMenu = [
  MenuItem('HEAD', SignInPage()),
  MenuItem('Identitas Lokasi', SignInPage()),
  MenuItem('Batas Lokasi', SignInPage()),
  MenuItem('Aksesibilitas', SignInPage()),
  MenuItem('Kelompok Habitat', SignInPage()),
  MenuItem('Berdasarkan Kelompok Umur', SignInPage()),
  MenuItem('Berdasarkan Jenis Usaha', SignInPage()),
  MenuItem('Berdasarkan Agama', SignInPage()),
  MenuItem('Berdasarkan Pendidikan', SignInPage()),
  MenuItem('Rencana Pemberdayaan', SignInPage()),
  MenuItem('Realisasi Pemberdayaan', SignInPage()),
  MenuItem('Fasilitas Umum', SignInPage()),
  MenuItem('Potensi dan Sumber Daya Lokal', SignInPage()),
  MenuItem('Potensi Bencana', SignInPage()),
  MenuItem('Data PMKS', SignInPage()),
  MenuItem('Data PSKS', SignInPage()),
  MenuItem('Gallery', SignInPage()),
  MenuItem('History', SignInPage()),

  MenuItem('KAT', SignInPage()),
  MenuItem('Program KAT', ProgramPage()),
  MenuItem('Profil KAT', SignInPage()),
  MenuItem('Pendampingan', SignInPage()),
  MenuItem('Peran Pemda', SignInPage()),
  MenuItem('Peran Dunia Usaha', SignInPage()),
  MenuItem('Login', SignInPage()),
];