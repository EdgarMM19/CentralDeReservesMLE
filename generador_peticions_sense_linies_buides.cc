#include <iostream>
#include <fstream>
#include <random>
#include <chrono>
using namespace std;

int get_random_nat() {
    unsigned seed = chrono::system_clock::now().time_since_epoch().count();
    mt19937 gen(seed);
    uniform_int_distribution<std::mt19937::result_type> dist;
 
    int n = dist(gen);
    if (n < 0) return -n;
    return n;
}

struct booking {
  int np;
  int arrival;
  int exit;

  booking(int a, int b, int c) {
    np = a;
    arrival = b;
    exit = c;
  }

  booking() {
    np = get_random_nat()%4 + 1;
    arrival = get_random_nat()%29 + 1;
    exit = get_random_nat()%(30-arrival) + arrival + 1;
  }
};

struct room {
  int np;

  room(int a) {
    np = a;
  }

  room() {
    np = get_random_nat()%4 + 1; 
  }
};

int ext,nr,nb;
int m0 = 10, m1 = 1, m2 = 80, m3 = 1, m4 = 120;
ofstream myfile;

void generate_problem_ext1() {
  myfile << "         (= (reserves-satisfetes) 0)" << endl;
  myfile << "   )" << endl;
  myfile << "   (:goal (forall (?res - reserva) (processada ?res)))" << endl;
  myfile << "   (:metric maximize (reserves-satisfetes))" << endl;
  myfile << ")" << endl;
}

void generate_problem_ext3() {
  myfile << "         (= (reserves-no-satisfetes) 0)" << endl;
  myfile << "         (= (desaprofitament-places) 0)" << endl;
  myfile << "   )" << endl;
  myfile << "   (:goal (forall (?res - reserva) (processada ?res)))" << endl;
  myfile << "   (:metric minimize (+ (* " << m0 <<" (reserves-no-satisfetes)) (* " << m1 <<" (desaprofitament-places))))" << endl;
  myfile << ")" << endl;
}

void generate_problem_ext4() {
  myfile << "         (= (reserves-no-satisfetes) 0)" << endl;
  myfile << "         (= (habitacions-obertes) 0)" << endl;
  myfile << "         (= (desaprofitament-places) 0)" << endl;

  myfile << "   )" << endl;
  myfile << "   (:goal  (and (forall (?res - reserva) (processada ?res)) (forall (?res - habitacio) (decidida ?res))))" << endl;
  myfile << "   (:metric minimize (+ (+ (* " << m2 << " (reserves-no-satisfetes)) (* " << m3 << " (desaprofitament-places))) (* " << m4 << " (habitacions-obertes))))" << endl;
  myfile << ")" << endl;
}

void generate_problem() {

  myfile.open ("temps-ext" + to_string(ext) + "-" + to_string(nr) + ".pddl");
  myfile << "(define (problem problema-h"<< nr << "-r" << nb << ")" << endl;
  myfile << "   (:domain reserves)" << endl;
  myfile << "   (:objects";

  for (int i = 0; i < nr; ++i) {
    myfile <<" hab" << i;
  }

  myfile << " - habitacio" << endl << "            ";

  for (int i = 0; i < nb; ++i) {
    myfile <<" res" << i;
  }

  myfile << " - reserva)" << endl;
  myfile << "   (:init" << endl;

  for (int i = 0; i < nr; ++i) {
    room r = room();
    myfile << "         (= (capacitat hab" << i << ") " << r.np << ")" << endl;
    myfile << "         (= (ultim-dia-ocupada hab" << i << ") 0)" << endl;
  }

  for (int i = 0; i < nb; ++i) {
    booking b = booking();
    myfile << "         (= (persones res" << i << ") " << b.np << ")" << endl;
    myfile << "         (= (principi res" << i << ") " << b.arrival << ")" << endl;
    myfile << "         (= (final res" << i << ") " << b.exit << ")" << endl;
  }

  if (ext == 1) {
    generate_problem_ext1();
  } else if(ext == 3) {
    generate_problem_ext3();
  } else {
    generate_problem_ext4();
  }
  myfile.close();
}


int main () {
  m0 = m1 = m2 = m3 = m4 = 1;
  cout << "Quina mida vols que tingui el problema?" << endl;
  cin >> nr;
  nb = nr;
  cout << "Quina extensio vols usar? (1,3,4)" << endl;
  cin >> ext;

  if (ext == 1 or ext == 3 or ext == 4) {
    generate_problem();
  } else {
    cout << "El numero de l'extensio es incorrecte." << endl;
  }
}