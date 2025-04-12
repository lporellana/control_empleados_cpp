#include "MySQLConexion.h"
#include "EloquentORM.h"
#include <iostream>

using namespace std;

int main() {

    MySQLConexion conn("root", "456l852Apo#37", "control_horario");
    if (!conn.open()) {
        cerr << "No se pudo conectar." << endl;
        return 1;
    }

    cout << "Conexión exitosa ✅" << endl;
    
    vector<string> columnas = {"nombre", "edad", "genero"};
    EloquentORM personas(conn, "personas", columnas);

    auto lista = personas.getAll();
    for (auto &reg : lista) {
        cout << "ID: " << reg["id"] << ", Nombre: " << reg["nombre"] << endl;
    }

    vector<string> columna = {"personas_id", "cargo"};
    EloquentORM empleados(conn, "empleados", columna);

    auto array = empleados.getAll();
    for (auto &reg : array) {
        cout << "ID: " << reg["id"] << ", Cargo " << reg["cargo"] << endl;
    }

    return 0;
}