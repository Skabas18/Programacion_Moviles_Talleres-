package Data;
public class IMC {

private double altura, peso, imc;

public IMC() {}
public IMC(double altura, double peso) {
	super();
	this.altura=altura;
	this.peso=peso;
}

public double getAltura() {
	return altura;
}

public void setAltura(double altura) {
	this.altura = altura;
}

public double getPeso() {
	return peso;
}

public void setPeso(double peso) {
	this.peso = peso;
}

public double getImc() {
	return imc;
}

public void setImc(double imc) {
	this.imc = imc;
}

public double calculo(double peso, double altura) {
	double resultado= Math.round((peso/(altura*altura))*100.0)/100.0;
	return resultado;
}
}
