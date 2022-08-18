package Data;



public class Postgres extends BDatos {

	@Override
	public void conectar() {
		System.out.println("Metodo para conectar BD de Postgres");
		
	}

	@Override
	public void consultar() {
		// TODO Auto-generated method stub
		System.out.println("Metodo para consultar en BD de Postgres");
	}

	@Override
	public void insertar() {
		// TODO Auto-generated method stub
		System.out.println("Metodo para insertar en BD de Postgres");
	}

	@Override
	public void eliminar() {
		// TODO Auto-generated method stub
		System.out.println("Metodo para eliminar en BD de Postgres");
	}


}
