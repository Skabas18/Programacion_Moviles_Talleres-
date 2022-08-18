package Test;

import Data.Operaciones;
import Data.Oracle;
import Data.Postgres;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Operaciones opOracle = new Oracle();
		opOracle.conectar();
		opOracle.consultar();
		opOracle.insertar();
		opOracle.eliminar();
		
		System.out.println("\n Espacio entre las subclases \n");
		Operaciones opPostgres = new Postgres();
		opPostgres.conectar();
		opPostgres.consultar();
		opPostgres.insertar();
		opPostgres.eliminar();
		
	}

}
