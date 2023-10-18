import 'dart:io';

void main() {
  stdout.write('Masukan Nilai Transaksi : Rp. ');
  var harga = num.parse(stdin.readLineSync()!);
  var jpoin = harga / 10000;
  var tpoin = jpoin / 100;
  if (tpoin<1) {
    print("Point Anda Tidak Cukup Untuk Di Tukar");
    print("Silahkan Melakukan Transaksi Lagi Untuk Menambah Jumlah Point");
  } else {
    var jpoina = jpoin.floor();
    var tpoin1 = tpoin.floor();
    var tpoin2 = tpoin1 * 12500;
    var rppoin = tpoin2.toStringAsFixed(0);

    print("Jumlah Point Adalah $jpoina Bisa Di Tukar Sebesar Rp.$rppoin");
  }
}
