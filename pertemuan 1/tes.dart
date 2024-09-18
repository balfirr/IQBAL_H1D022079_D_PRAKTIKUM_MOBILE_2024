import 'dart:io';

void main() {
 
  stdout.write('Masukkan bilangan pertama: ');
  double? num1 = double.parse(stdin.readLineSync()!);


  stdout.write('Masukkan bilangan kedua: ');
  double? num2 = double.parse(stdin.readLineSync()!);


  print('Pilih operasi yang ingin dilakukan:');
  print('1. Penjumlahan');
  print('2. Pengurangan');
  print('3. Perkalian');
  print('4. Pembagian');

  stdout.write('Masukkan pilihan (1/2/3/4): ');
  int? pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      print('Hasil penjumlahan: ${num1 + num2}');
      break;
    case 2:
      print('Hasil pengurangan: ${num1 - num2}');
      break;
    case 3:
      print('Hasil perkalian: ${num1 * num2}');
      break;
    case 4:
      if (num2 != 0) {
        print('Hasil pembagian: ${num1 / num2}');
      } else {
        print('Tidak bisa membagi dengan 0');
      }
      break;
    default:
      print('Pilihan tidak valid');
  }
}
