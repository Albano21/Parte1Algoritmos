const Alumno = require('./models/alumno')

const prompt = require('prompt-sync')()

// 1. Crear un algoritmo que muestre los números impares entre el 0 y el 100.

function generarNumeros(min, max){
    const numeros = [];
    for (let i = min; i <= max; i++) {
        numeros.push(i);
    }
    return numeros;
}

function esImpar(num){
    if(isNaN(num)) return false;
    return (num % 2) != 0 ? true : false;
}

numeros = generarNumeros(0, 100)

impares = numeros.filter(esImpar)

console.log(impares)

//2. Realizar un programa que ingrese los sueldos de 5 operarios en un vector. 
// Realizar la creación y carga del vector en el constructor. Crear un método para imprimir el vector.

function imprimirSueldos(sueldos){
    for (let i = 0; i < sueldos.length; i++) {
        console.log(`${i+1}° sueldo: ${sueldos[i]}`);
    }
}

const sueldos = [];

for (let i = 0; i < 5; i++) {
    const sueldo = prompt(`Ingrese el ${i+1}° sueldo: `)
    sueldos.push(sueldo);
}

imprimirSueldos(sueldos);

//3. Plantear una clase llamada Alumno y definir como atributos su nombre y su edad. En el constructor realizar el ingreso 
//de datos. Definir otros dos métodos para imprimir los datos ingresados y un mensaje si es mayor o no de edad (edad >= 18)

const alumno1 = new Alumno('Juan', 18);
const alumno2 = new Alumno('Pedro', 17);

alumno1.imprimir();
alumno1.esMayor();

alumno2.imprimir();
alumno2.esMayor();

//4. JavaScript ES6: Dados los siguientes array, imprimir por consola los elementos del array “y” que no se encuentran en 
//el array “x” utilizando para tal fin una única línea de código. const x = ["n", "bro", "c", "|"]; 
//const y = ["d", "n", "l", "bro", "g"];

const x = ["n", "bro", "c", "|"];
const y = ["d", "n", "l", "bro", "g"];

console.log(y.filter(a => !x.includes(a)));


