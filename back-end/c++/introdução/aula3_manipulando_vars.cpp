#include <iostream>

using namespace std;

int main(){

    int varInt = 100;
    char r = 'c';
    double pontoFlutuante = 5.99;

    cout << "O valor da variável varInt é: " << varInt << endl;
    cout << "O valor da string R é: " << r << endl;
    cout << "O valor da variável pontoFlutuante é: " << pontoFlutuante << endl;
    cout << endl;
    cout << "Memória da variável varInt é: " << sizeof(varInt) << endl;
    cout << "Memória da variável R é: " << sizeof(r) << endl;
    cout << "Mmeória da variável pontoFlutuante é: " << sizeof(pontoFlutuante) << endl;

    return 0;
}