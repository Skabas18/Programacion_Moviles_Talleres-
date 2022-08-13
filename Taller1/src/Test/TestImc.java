package Test;
import javax.swing.JOptionPane;

import Data.IMC;

public class TestImc {

	public static void main(String[] args) {
		IMC imc = new IMC();

		double altura = Double.parseDouble(JOptionPane.showInputDialog("Introduce tu altura en Metros: "));
		double peso = Double.parseDouble(JOptionPane.showInputDialog("Introduce tu peso en Kg: ")); 
		double resultado=imc.calculo(peso, altura);
		 JOptionPane.showMessageDialog(null, "Tu indide de masa corporal es: "+ resultado);
	}

}
