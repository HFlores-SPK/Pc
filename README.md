#include <iostream>
using namespace std;

int main () {

    int dimension1;
    int dimension2;
	int conjuntoA[20];
	int conjuntoB[20];

	cout <<"Ingrese el numero de elementos del conjunto A:";
	cin >>dimension1;
	cout <<"Ingrese el numero de elementos del conjunto B:";
	cin >>dimension2;
	cout<<"\n";




	cout <<"Ingrese los elementos para el conjunto A:\n";
	for (int i=0;i<dimension1;i++)
	{
		cin >>conjuntoA[i];
	}
	cout<<"\n";

	cout <<"Ingrese los elementos para el conjunto B:\n";
	for (int j=0;j<dimension2;j++)
	{
		cin >>conjuntoB[j];
	}
    cout<<"\n";



	cout <<"La union de estos conjuntos es = {";

	int k;
	for (int i=0;i<dimension1;i++)
	{
		cout <<conjuntoA[i]<<"; ";
	}
	for (int j=0;j<dimension2;j++)
	{
		for (k=0;k<dimension1;k++)
		{
			if (conjuntoB[j]==conjuntoA[k])
			{
				break;
			}
		}
		if (k==dimension1)
		{
			cout<<conjuntoB[j]<<"; ";
		}
	}
	cout <<"}";
	cout<<"\n";
}
