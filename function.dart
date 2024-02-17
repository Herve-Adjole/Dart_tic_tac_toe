import 'dart:io';

printMyTable(List<List<String>> table){
  for (var row in table){
    print(row);
  }
}
List<List<String>> insertMySymbol(int l, String playerMotif, List<List<String>> table) {
  if (l >= 1 && l <= 3) {
    table[0][(l - 1)] = playerMotif;
  } else if (l >= 4 && l <= 6) {
    table[1][(l - 4)] = playerMotif;
  } else if (l >= 7 && l <= 9) {
    table[2][(l - 7)] = playerMotif;
  }
  return table;
}

/***bool isLocationOccupiedInTable(int l, List<List<String>> table) {
  if (l >= 1 && l <= 3) {
    return table[0][(l - 1)] == 'X' || table[0][(l - 1)] == 'O';
  } else if (l >= 4 && l <= 6) {
    return table[1][(l - 4)] == 'X' || table[1][(l - 4)] == 'O';
  } else if (l >= 7 && l <= 9) {
    return table[2][(l - 7)] == 'X' || table[2][(l - 7)] == 'O';
  }

  // Retourne false si l est en dehors de la plage 1-9
  return false;
}
    */

//int takeLocation(List<List<String>> table) {
int takeLocation() {


  int location;

  while (true) {
    stdout.write('Enter a location (1-9): ');
    String input = stdin.readLineSync() ?? '';
    int? parsedInput = int.tryParse(input);

    if (parsedInput != null && parsedInput >= 1 && parsedInput <= 9)  {
      //place checking
     //if (!isLocationOccupiedInTable(parsedInput, table)) {
        location = parsedInput;
        // Emplacement valide, sortie de la boucle
        break;
      // Valid, exit the loop

    } else {
      print('Invalid input. Please enter a valid location (1-9).');
    }
  }

  return location;
}


int checkMyWinner(List<List<String>> table, String playerMotif){
  //verifiions les lignes
  for (var row in table) {
    if (row.every((symbol) => symbol == playerMotif)) {
      int win=1 ;
      return win;
    }
  }

  // Vérifier les colonnes
  for (var i = 0; i < table.length; i++) {
    if (table.every((row) => row[i] == playerMotif)) {
      int win=1 ;
      return win;
    }
  }

  // Vérifier les diagonales
  if (table[0][0] == playerMotif &&
      table[1][1] == playerMotif &&
      table[2][2] == playerMotif) {
    int win=1 ;
    return win;
  }

  if (table[0][2] == playerMotif &&
      table[1][1] == playerMotif &&
      table[2][0] == playerMotif) {
    int win=1 ;
    return win;
  }

  // Aucun gagnant trouvé
  return 0;
}
