package Data;


public abstract class BDatos implements Operaciones {
	@Override public void conectar() {
		System.out.println("Hola desde la clase abstracta");
	}
	
	@Override public void consultar() {
		System.out.println("Hola desde la clase abstracta");
	}
	@Override public void insertar() {
		System.out.println("Hola desde la clase abstracta");
	}
	@Override public void eliminar() {
		System.out.println("Hola desde la clase abstracta");
	}
	

}
