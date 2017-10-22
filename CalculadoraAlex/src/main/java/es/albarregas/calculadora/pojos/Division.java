/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.calculadora.pojos;

/**
 *
 * @author Alex
 */
public class Division {
    public int Dividir(int operando1, int operando2) {
        int resultado = 0;
        try {
            resultado = Division(operando1, operando2);
        } catch (ArithmeticException e) {
            resultado = Integer.MAX_VALUE;
        }
        return resultado;
    }


    public int Division(int dividendo, int divisor) throws ArithmeticException {
        int resultado = 0;
        if (divisor != 0) {
            resultado = dividendo / divisor;
        } else {
            throw new ArithmeticException("Se ha intentado dividir por cero");
        }
        return resultado;
    }


}