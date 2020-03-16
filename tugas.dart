import 'dart:io';

int check = 0;
int saldo = 0;
main(){
  print("ATM Hebat");
   

  do{
   
  //user
  stdout.write("Masukan ID : ");
  var id = stdin.readLineSync();
  //pass
  stdout.write("Masukan pwd : ");
  var pwd = stdin.readLineSync();

  if( id == "izzul" && pwd == "123" || id == "acep" && pwd == "456"){
    print("Selamat Datang\n Ini ATM TARIK,SETOR,CEK\n");
    if (id == "izzul" )
      saldo = 100;
    else if (id == "acep")
      saldo = 200;
    check ++;
    menu();
  }
  else{
    check = 0;
  }
  }while(check < 1  );
  

  }

  menu(){
    stdout.write("Pilihan \n1.Tarik\n2.Setor\n3.Cek\n pilih : ");
    int pilihan = int.parse(stdin.readLineSync());

    switch (pilihan) {
      case 1 : {
        print("Ini Saldo Kamu : $saldo");
        stdout.write("Mau Tarik Berapa : ");
        int tarik = int.parse(stdin.readLineSync());
        saldo = saldo - tarik;
        print("=====\nIni Saldo Kamu : $saldo");
        kembali();
      }break;
      
      case 2 : {
        print("Ini Saldo Kamu : $saldo");
        stdout.write("Mau Setor Berapa : ");
        int setor = int.parse(stdin.readLineSync());
        saldo = saldo + setor;
        print("=====\nIni Saldo Kamu : $saldo");
        kembali();
      }break;

      case 3 : {
        print("=====\nIni Saldo Kamu : $saldo");
        kembali();
      }

    }
  }

  kembali(){
  stdout.write("Kembali Ke Menu ? y/n : ");
  String jawab = stdin.readLineSync();

  var hasil = (jawab == 'y') ? menu() : print("TERIMAKASIH YA!\nbye");
  }

