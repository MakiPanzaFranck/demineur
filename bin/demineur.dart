import 'dart:io';

import 'package:ansicolor/ansicolor.dart';

void afficherGrille(int largeurGille, int hauteurGrille, List<int> grille){
stdout.writeln("c/l    a b c d e f g h");
stdout.writeln("    ---------------");
var numCol= 1;
for(var i= 0; i<grille.length;  i++){
  if ( i% largeurGille == 0){
    stdout.write("$numCol   ");
    numCol += 1;
  }
  stdout.write("|x");
  if(i % largeurGille == largeurGille - 1){
    stdout.writeln("|\n    ---------------\n");
  }
}
}
void main(List<String> arguments) {
  var execution = true;
  int largeurGille = 8;
  int hauteurGrille = 8;
  int tailleGrille= largeurGille * hauteurGrille;

  final penVert= ansiColor()..green();

  var grille = List<int>.generate(tailleGrille,(i)=> 0);
  String?choixUtilisateur;
  while(execution){
    stdout.write('\x1B[2J\x1B[0;0H');
    print("-=-=-=-=-=-=-=-");
    print("-   DEMINEUR  -");
    print("-=-=-=-=-=-=-=-");
    //TODO afficher le dernier coup jouer ou message d'erreur ou le message
    if(choixUtilisateur!= null){
    print("dernier coup: $choixUtilisateur");
    }
    stdout.write(penVert("Saisissez votre coup(cl) ou q pour quitter:"));
    choixUtilisateur= stdin.readByteSync() as String?;
    choixUtilisateur=choixUtilisateur?.toLowerCase();
    execution= choixUtilisateur != "q";
    //TODO valider  si le choix de l'utilisateur est un coup valide.

  }
}

