#include <iostream>
#include <fstream>
#include <stdlib.h> 
using namespace std;

  struct booking{
    int np;
    int arrival;
    int exit;


    booking(int a, int b, int c){
      np = a;
      arrival = b;
      exit = c;
    }

    booking(){
      np = rand()%4 + 1;
      arrival = rand()%29 + 1;
      exit = rand()%(30-arrival) + arrival + 1;
    }
  };

  struct room{
    int np;

    room(int a){
      np = a;
    }

    room(){
      np = rand()%4 + 1; 
    }
  };

int nr,nb;




void generate_problem(){
  ofstream myfile;
  myfile.open ("problema.pddl");
  myfile << "(define (problem problema-h"<< nr << "-r" << nb << ")" << endl;
  myfile << "   (:domain reserves)" << endl;
  myfile << "   (:objects";
  for(int i = 0; i < nr; ++i){
    myfile <<" hab" << i;
  }
  myfile << " - habitacio" << endl << "            ";
  for(int i = 0; i < nb; ++i){
    myfile <<" res" << i;
  }
  myfile << " - reserva)" << endl;
  myfile << "   (:init" << endl;
  for(int i = 0; i < nr; ++i){
    room r = room();
    myfile << "         (= (capacitat hab" << i << ") " << r.np << ")" << endl;
    myfile << "         (= (ultim-dia-ocupat hab" << i << ") 0)" << endl;
  }
  myfile << endl;
  for(int i = 0; i < nb; ++i){
    booking b = booking();
    myfile << "         (= (persones res" << i << ") " << b.np << ")" << endl;
    myfile << "         (= (principi res" << i << ") " << b.arrival << ")" << endl;
    myfile << "         (= (final res" << i << ") " << b.exit << ")" << endl;
    myfile << endl;
  }
  myfile << "         (= (reserves-satisfetes) 0)" << endl;
  myfile << endl;
  myfile << "   )" << endl;
  myfile << endl;
  myfile << "   (:goal  (forall (?res - reserva) (procesada ?res)))" << endl;
  myfile << endl;
  myfile << "   (:metric maximize (reserves-satisfetes))" << endl;
  myfile << endl;
  myfile << ")";
  myfile.close();

}


int main () {

  cout << "Quantes habitacions vols que tingui el problema?" << endl;
  cin >> nr;
  cout << "Quantes reserves vols que tingui el problema?" << endl;
  cin >> nb;
  generate_problem();

}