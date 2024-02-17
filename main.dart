import 'dart:io';
import 'function.dart';

void main(){
  List<List<String>> table = [
    ['1','2','3'],
    ['4','5','6'],
    ['7','8','9']
  ];
  String? player1 ="X";
  String? player2 ="Y";

  String player1Motif ="";
  String player2Motif ="";
  String? choice1 ="";

  //
  String game_winner;
  bool winner;


  stdout.write("First player's name ? : ");
  player1=stdin.readLineSync();
  stdout.write("$player1; Please take a symbole : 1 for \"X\" and anything except 1 for \"O\": ");
  choice1= stdin.readLineSync();
  if (choice1=="1") {
    player1Motif = "X";
    player2Motif = "O";
  }
  else {
    player1Motif = "O";
    player2Motif = "X";
  }
  stdout.write("Second player's name ? : ");
  player2 = stdin.readLineSync();
  print("Player 1 : $player1; Player 2 : $player2");
  printMyTable(table);
  //self.code


  int l;
  print("FIRST TURN");
  int win = 0;
  String gagnant;
  do{
    print("$player1; turn!!!");
    l = takeLocation();
    insertMySymbol(l, player1Motif, table);
    int winn = checkMyWinner(table, player1Motif);
    if(winn == 1) {
      win = 1;
      print("Le gagnant du jeu est $player1!");
      printMyTable(table);
      print("Le gagnant du jeu est $player1!");
      break;
    }
    printMyTable(table);


    print("$player2; turn!!!");
    l = takeLocation();
    insertMySymbol(l, player2Motif, table);
    winn = checkMyWinner(table, player2Motif);
    if(winn == 1) {
      win = 1;
      print("Le gagnant du jeu est $player2!");
      printMyTable(table);
      print("Le gagnant du jeu est $player2!");
      break;
    };
    printMyTable(table);

  }while(win == 0);
  /// faire l'annonce du gagnant et l'arret de la boucle


















}