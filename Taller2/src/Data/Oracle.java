package Data;

public class Oracle implements Operaciones{

	@Override
	public void conectar() {
		System.out.println("Metodo para conectar BD de Oracle");
		
	}

	@Override
	public void consultar() {
		// TODO Auto-generated method stub
		System.out.println("Metodo para consultar en BD de Oracle");
	}

	@Override
	public void insertar() {
		// TODO Auto-generated method stub
		System.out.println("Metodo para insertar en BD de Oracle");
	}

	@Override
	public void eliminar() {
		// TODO Auto-generated method stub
		System.out.println("Metodo para eliminar en BD de Oracle");
	}

}
