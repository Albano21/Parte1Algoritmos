
class Alumno {

    constructor(nombre, edad){
        this.nombre = nombre;
        this.edad = edad;
    }

    imprimir(){
        console.log(`Nombre: ${this.nombre} - Edad: ${this.edad}`)
    }

    esMayor(){
        console.log(this.edad >= 18 ? `${this.nombre} es mayor de edad` : `${this.nombre} no es mayor de edad`);
    }

}

module.exports = Alumno;