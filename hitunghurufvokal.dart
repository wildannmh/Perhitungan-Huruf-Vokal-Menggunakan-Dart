import 'dart:io';

void main() {
  print('============================================');
  print('  APLIKASI PENGHITUNG HURUF VOKAL SEDERHANA ');
  print('============================================');
  stdout.write('Tulis kalimat yang kamu mau: ');

  String? kalimat = stdin.readLineSync();

  if (kalimat == null || kalimat.isEmpty) {
    print('Kamu tidak menulis apapun.');
    return;
  }

  String kalimatkecil = kalimat.toLowerCase();

  Set<String> aiueo = {'a', 'i', 'u', 'e', 'o'};

  int jumlahaiueo = 0;

  for (int i = 0; i < kalimatkecil.length; i++) {
    String char = kalimatkecil[i];
    
    if (aiueo.contains(char)) {
      jumlahaiueo++;
    }
  }

  print('\n--------------------------------------------');
  print('Kalimat yang kamu masukkan: "$kalimat"');
  print('Jumlah huruf vokal (a, i, u, e, o) adalah: $jumlahaiueo');
  print('--------------------------------------------');
}
