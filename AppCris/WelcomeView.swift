//
//  WelcomeView.swift
//  AppCris
//
//  Created by Cristian Gómez  on 06/09/24.
//

import SwiftUI


struct WelcomeView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: ConsultarProfesoresView(profesores: sampleProfesores)) {
                Text("Consultar Profesores")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            NavigationLink(destination: MateriasView()) {
                Text("Crear mi Horario")
                    .font(.headline)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            
        }
        .navigationTitle("Bienvenido")
        .navigationBarBackButtonHidden(true)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        
    }
    
}


// Sample data for testing purposes
let sampleProfesores = [
    Profesor(nombre: "LARRAZA HERNANDEZ SILVIA", grupo: "1101", materia: "Álgebra Superior", horario: "LU, MI, VI 11:00 a 13:00", foto: "Larraza", descripcion: "Experta en álgebra avanzada con más de 10 años de experiencia en la enseñanza."),
    Profesor(nombre: "CORONEL RAMIREZ WENDY", grupo: "1101", materia: "Cálculo I", horario: "LU, MI, VI 07:00 a 09:00", foto: "wendy", descripcion: "Doctora en matemáticas aplicada a la ingeniería, especializada en cálculo diferencial."),
    Profesor(nombre: "RUBIO PEREZ ALEJANDRO ROBERTO", grupo: "1101", materia: "Organización de Computadoras", horario: "MA, JU 07:00 a 09:00", foto: "alejandro", descripcion: "Experto en arquitectura de computadoras con experiencia en investigación."),
    Profesor(nombre: "HERNANDEZ BALDERAS ANDRES", grupo: "1101", materia: "Programación I", horario: "VI 09:00 a 11:00 y LU, MI 09:00 a 11:00", foto: "andres", descripcion: "Ingeniero de software con enfoque en lenguajes de programación."),
    Profesor(nombre: "LOPEZ RODRIGUEZ FRANCISCO JAVIER", grupo: "1101", materia: "Solución Algorítmica de Problemas", horario: "JU 09:00 a 11:00 y MA 09:00 a 11:00", foto: "francisco", descripcion: "Experto en algoritmos y optimización."),
    Profesor(nombre: "DAVILA SANTOS ADRIANA", grupo: "1101", materia: "Lógica Matemática", horario: "MA, JU 11:00 a 13:00", foto: "adriana", descripcion: "Especialista en teoría de la lógica y sus aplicaciones."),
    
    // Grupo 1102
    Profesor(nombre: "SAAVEDRA LUIS HECTOR AXEL", grupo: "1102", materia: "Álgebra Superior", horario: "LU, MI, VI 09:00 a 11:00", foto: "saavedra", descripcion: "Matemático especializado en álgebra lineal."),
    Profesor(nombre: "GONZALEZ RAMOS GUSTAVO", grupo: "1102", materia: "Cálculo I", horario: "LU, MI, VI 11:00 a 13:00", foto: "gustavo", descripcion: "Especialista en análisis matemático y cálculo."),
    Profesor(nombre: "BAUTISTA MORA JOSE ROBERTO", grupo: "1102", materia: "Organización de Computadoras", horario: "JU 09:00 a 11:00 y MA 09:00 a 11:00", foto: "jose", descripcion: "Experto en diseño de sistemas y arquitectura de computadores."),
    Profesor(nombre: "MUÑOZ ALTAMIRANO SANDRA", grupo: "1102", materia: "Programación I", horario: "MI 07:00 a 09:00 y LU, VI 07:00 a 09:00", foto: "sandra", descripcion: "Ingeniera en sistemas con experiencia en lenguajes de programación."),
    Profesor(nombre: "QUIROZ ALMARAZ SERGIO", grupo: "1102", materia: "Solución Algorítmica de Problemas", horario: "JU 07:00 a 09:00 y MA 07:00 a 09:00", foto: "sergio", descripcion: "Experto en resolución de problemas algorítmicos."),
    Profesor(nombre: "LOPEZ GARCIA JEANETT", grupo: "1102", materia: "Lógica Matemática", horario: "MA, JU 11:00 a 13:00", foto: "jeanett", descripcion: "Especialista en lógica matemática y teoría de conjuntos."),
    
    // Grupo 1103
    Profesor(nombre: "DAVILA SANTOS ADRIANA", grupo: "1103", materia: "Álgebra Superior", horario: "LU, MI, VI 11:00 a 13:00", foto: "adriana", descripcion: "Experta en álgebra avanzada con más de 10 años de experiencia."),
    Profesor(nombre: "VITE MARTINEZ DOMINGO", grupo: "1103", materia: "Cálculo I", horario: "LU, MI, VI 07:00 a 09:00", foto: "domingo", descripcion: "Doctor en matemáticas aplicadas."),
    Profesor(nombre: "QUIROZ ALMARAZ SERGIO", grupo: "1103", materia: "Organización de Computadoras", horario: "JU 09:00 a 11:00 y MA 09:00 a 11:00", foto: "sergio", descripcion: "Especialista en sistemas de cómputo y organización de hardware."),
    Profesor(nombre: "ESLAVA GARCIA GEORGINA", grupo: "1103", materia: "Programación I", horario: "MI 09:00 a 11:00 y LU, VI 09:00 a 11:00", foto: "georgina", descripcion: "Ingeniera en sistemas y programación de aplicaciones."),
    Profesor(nombre: "CABALLERO MARTINEZ OSCAR GABRIEL", grupo: "1103", materia: "Solución Algorítmica de Problemas", horario: "JU 07:00 a 09:00 y MA 07:00 a 09:00", foto: "oscar", descripcion: "Especialista en desarrollo de algoritmos."),
    Profesor(nombre: "CARRILLO RAMIREZ TERESA", grupo: "1103", materia: "Lógica Matemática", horario: "MA, JU 11:00 a 13:00", foto: "teresa", descripcion: "Especialista en lógica matemática aplicada."),
    
    // Grupo 1104
    Profesor(nombre: "CUELLAR AGUAYO ADA RUTH", grupo: "1104", materia: "Álgebra Superior", horario: "LU, MI, VI 09:00 a 11:00", foto: "ada", descripcion: "Doctora en matemáticas con especialización en álgebra lineal."),
    Profesor(nombre: "ARCIA PEREZ ANA KARLA", grupo: "1104", materia: "Cálculo I", horario: "LU, MI, VI 11:00 a 13:00", foto: "ana", descripcion: "Especialista en cálculo diferencial e integral."),
    Profesor(nombre: "RICO CASTRO MAURICIO", grupo: "1104", materia: "Organización de Computadoras", horario: "JU 07:00 a 09:00 y MA 07:00 a 09:00", foto: "mauricio", descripcion: "Investigador en sistemas computacionales."),
    Profesor(nombre: "HERNANDEZ BALDERAS ANDRES", grupo: "1104", materia: "Programación I", horario: "VI 07:00 a 09:00 y LU, MI 07:00 a 09:00", foto: "andres", descripcion: "Ingeniero en desarrollo de software."),
    Profesor(nombre: "DEL TORO OBLEA CELINA KATYA", grupo: "1104", materia: "Solución Algorítmica de Problemas", horario: "JU 11:00 a 13:00 y MA 11:00 a 13:00", foto: "katya", descripcion: "Experta en algoritmos y estructuras de datos."),
    Profesor(nombre: "LOPEZ GARCIA JEANETT", grupo: "1104", materia: "Lógica Matemática", horario: "MA, JU 09:00 a 11:00", foto: "jeanett", descripcion: "Especialista en lógica matemática y teoría de conjuntos."),
    
    // Grupo 1105
    Profesor(nombre: "CUELLAR AGUAYO ADA RUTH", grupo: "1105", materia: "Álgebra Superior", horario: "LU, MI, VI 07:00 a 09:00", foto: "ada", descripcion: "Doctora en matemáticas con especialización en álgebra lineal."),
    Profesor(nombre: "ARCIA PEREZ ANA KARLA", grupo: "1105", materia: "Cálculo I", horario: "LU, MI, VI 09:00 a 11:00", foto: "ana", descripcion: "Especialista en cálculo diferencial e integral."),
    Profesor(nombre: "CARRILLO RAMIREZ TERESA", grupo: "1105", materia: "Organización de Computadoras", horario: "JU 09:00 a 11:00 y MA 09:00 a 11:00", foto: "teresa", descripcion: "Investigadora en la organización y diseño de hardware."),
    Profesor(nombre: "ESLAVA GARCIA GEORGINA", grupo: "1105", materia: "Programación I", horario: "LU, VI 11:00 a 13:00 y MI 11:00 a 13:00", foto: "georgina", descripcion: "Experta en programación y desarrollo de software."),
    Profesor(nombre: "LOPEZ RODRIGUEZ FRANCISCO JAVIER", grupo: "1105", materia: "Solución Algorítmica de Problemas", horario: "JU 07:00 a 09:00 y MA 07:00 a 09:00", foto: "francisco", descripcion: "Especialista en desarrollo de algoritmos y optimización."),
    Profesor(nombre: "LOPEZ GARCIA JEANETT", grupo: "1105", materia: "Lógica Matemática", horario: "MA, JU 11:00 a 13:00", foto: "jeanett", descripcion: "Experta en lógica formal y teoría de conjuntos."),
    
    // Grupo 1106
    Profesor(nombre: "VITE MARTINEZ DOMINGO", grupo: "1106", materia: "Álgebra Superior", horario: "LU, MI, VI 11:00 a 13:00", foto: "domingo", descripcion: "Doctor en matemáticas aplicadas y especialista en álgebra."),
    Profesor(nombre: "GONZALEZ RAMOS GUSTAVO", grupo: "1106", materia: "Cálculo I", horario: "LU, MI, VI 07:00 a 09:00", foto: "gustavo", descripcion: "Investigador en matemáticas, especializado en cálculo."),
    Profesor(nombre: "HERNANDEZ BALDERAS ANDRES", grupo: "1106", materia: "Organización de Computadoras", horario: "JU 09:00 a 11:00 y MA 09:00 a 11:00", foto: "andres", descripcion: "Ingeniero en sistemas con enfoque en arquitectura de computadoras."),
    Profesor(nombre: "MUÑOZ ALTAMIRANO SANDRA", grupo: "1106", materia: "Programación I", horario: "MI 09:00 a 11:00 y LU, VI 09:00 a 11:00", foto: "sandra", descripcion: "Experta en lenguajes de programación."),
    Profesor(nombre: "RUBIO PEREZ ALEJANDRO ROBERTO", grupo: "1106", materia: "Solución Algorítmica de Problemas", horario: "JU 07:00 a 09:00 y MA 07:00 a 09:00", foto: "alejandro", descripcion: "Investigador en el área de optimización y algoritmos."),
    Profesor(nombre: "DAVILA SANTOS ADRIANA", grupo: "1106", materia: "Lógica Matemática", horario: "MA, JU 11:00 a 13:00", foto: "adriana", descripcion: "Especialista en lógica matemática aplicada a la informática."),
    
    // Grupo 1151
    Profesor(nombre: "DAVILA SANTOS ADRIANA", grupo: "1151", materia: "Álgebra Superior", horario: "LU, MI, VI 07:00 a 09:00", foto: "adriana", descripcion: "Experta en álgebra avanzada con más de 10 años de experiencia."),
    Profesor(nombre: "LARRAZA HERNANDEZ SILVIA", grupo: "1151", materia: "Cálculo I", horario: "LU, MI, VI 11:00 a 13:00", foto: "silvia", descripcion: "Doctora en matemáticas con especialización en cálculo diferencial."),
    Profesor(nombre: "ESLAVA GARCIA GEORGINA", grupo: "1151", materia: "Organización de Computadoras", horario: "JU 07:00 a 09:00 y MA 07:00 a 09:00", foto: "georgina", descripcion: "Especialista en sistemas computacionales."),
    Profesor(nombre: "LOPEZ RODRIGUEZ FRANCISCO JAVIER", grupo: "1151", materia: "Programación I", horario: "LU, VI 09:00 a 11:00 y MI 09:00 a 11:00", foto: "francisco", descripcion: "Ingeniero en sistemas con experiencia en lenguajes de programación."),
    Profesor(nombre: "QUIROZ ALMARAZ SERGIO", grupo: "1151", materia: "Solución Algorítmica de Problemas", horario: "JU 09:00 a 11:00 y MA 09:00 a 11:00", foto: "sergio", descripcion: "Especialista en desarrollo de algoritmos y resolución de problemas."),
    Profesor(nombre: "BAUTISTA MORA JOSE ROBERTO", grupo: "1151", materia: "Lógica Matemática", horario: "MA, JU 11:00 a 13:00", foto: "jose", descripcion: "Investigador en lógica matemática y sus aplicaciones."),
    
    // Grupo 1152
    Profesor(nombre: "GONZALEZ RAMOS GUSTAVO", grupo: "1152", materia: "Álgebra Superior", horario: "LU, MI, VI 16:00 a 18:00", foto: "gustavo", descripcion: "Especialista en álgebra lineal y aplicada con amplia experiencia docente."),
    Profesor(nombre: "PACHECO PAEZ JUAN CARLOS", grupo: "1152", materia: "Cálculo I", horario: "LU, MI, VI 18:00 a 20:00", foto: "juancarlos", descripcion: "Experto en cálculo diferencial con enfoque en ingeniería."),
    Profesor(nombre: "GONZALEZ VIDEGARAY EFREN PABLO HECTOR", grupo: "1152", materia: "Organización de Computadoras", horario: "JU 18:00 a 20:00 y MA 18:00 a 20:00", foto: "efren", descripcion: "Investigador en arquitectura de computadores y optimización de hardware."),
    Profesor(nombre: "BAHENA GOMEZ FEDERICO GUILLERMO", grupo: "1152", materia: "Programación I", horario: "VI 20:00 a 22:00 y LU, MI 20:00 a 22:00", foto: "federico", descripcion: "Especialista en programación y desarrollo de sistemas embebidos."),
    Profesor(nombre: "SOTO OSORNIO ARTURO ANTONIO", grupo: "1152", materia: "Solución Algorítmica de Problemas", horario: "LU 20:00 a 22:00 y MA 20:00 a 22:00", foto: "arturo", descripcion: "Experto en resolución de problemas algorítmicos complejos."),
    Profesor(nombre: "ROSALES SANCHEZ SERGIO MIGUEL", grupo: "1152", materia: "Lógica Matemática", horario: "MA, JU 16:00 a 18:00", foto: "sergio", descripcion: "Investigador en lógica y fundamentos de las matemáticas aplicadas."),
    
    // Grupo 1153
    Profesor(nombre: "HARO SANCHEZ VIRGINIA", grupo: "1153", materia: "Álgebra Superior", horario: "LU, MI, VI 14:00 a 16:00", foto: "virginia", descripcion: "Doctora en matemáticas con énfasis en álgebra moderna."),
    Profesor(nombre: "GALINDO CUEVAS JESUS GIL", grupo: "1153", materia: "Cálculo I", horario: "LU, MI, VI 18:00 a 20:00", foto: "jesusgil", descripcion: "Especialista en cálculo diferencial e integral aplicado a las ciencias exactas."),
    Profesor(nombre: "GONZALEZ VIDEGARAY EFREN PABLO HECTOR", grupo: "1153", materia: "Organización de Computadoras", horario: "JU 16:00 a 18:00 y MA 16:00 a 18:00", foto: "efren", descripcion: "Ingeniero en sistemas con experiencia en hardware y software de sistemas."),
    Profesor(nombre: "APIA AGUILAR MARIA", grupo: "1153", materia: "Programación I", horario: "MI 16:00 a 18:00 y LU, VI 16:00 a 18:00", foto: "maria", descripcion: "Ingeniera de software enfocada en el desarrollo de aplicaciones móviles."),
    Profesor(nombre: "ROSALES SANCHEZ SERGIO MIGUEL", grupo: "1153", materia: "Solución Algorítmica de Problemas", horario: "MA, JU 18:00 a 20:00", foto: "sergio", descripcion: "Desarrollador de algoritmos y técnicas avanzadas de resolución de problemas."),
    Profesor(nombre: "VIQUEZ CANO MONICA ZAIMA", grupo: "1153", materia: "Lógica Matemática", horario: "MA, JU 14:00 a 16:00", foto: "monica", descripcion: "Especialista en lógica y razonamiento matemático."),
    
    // Grupo 1154
    Profesor(nombre: "SAAVEDRA LUIS HECTOR AXEL", grupo: "1154", materia: "Álgebra Superior", horario: "LU, MI, VI 16:00 a 18:00", foto: "hector", descripcion: "Investigador en álgebra aplicada con más de 8 años de experiencia docente."),
    Profesor(nombre: "BALTAZAR MARTINEZ ERNESTO", grupo: "1154", materia: "Cálculo I", horario: "LU, MI, VI 18:00 a 20:00", foto: "ernesto", descripcion: "Matemático especializado en cálculo diferencial e integral."),
    Profesor(nombre: "VASCONCELOS SANTILLAN JORGE", grupo: "1154", materia: "Organización de Computadoras", horario: "MA, JU 18:00 a 20:00", foto: "jorge", descripcion: "Ingeniero en computación con experiencia en diseño de arquitecturas de hardware."),
    Profesor(nombre: "MARTINEZ TORRES RENE", grupo: "1154", materia: "Programación I", horario: "VI 14:00 a 16:00 y LU, MI 14:00 a 16:00", foto: "rene", descripcion: "Programador experto en lenguajes de bajo nivel y optimización de código."),
    Profesor(nombre: "MANZANARES ALVAREZ FERNANDO", grupo: "1154", materia: "Solución Algorítmica de Problemas", horario: "LU, MI 20:00 a 22:00", foto: "fernando", descripcion: "Especialista en algoritmos de búsqueda y técnicas de optimización."),
    Profesor(nombre: "FRIAS SILVER ELSA", grupo: "1154", materia: "Lógica Matemática", horario: "MA, JU 16:00 a 18:00", foto: "elsa", descripcion: "Experta en lógica y razonamiento estructural aplicado a la informática."),
    // Grupo 1155
    Profesor(nombre: "GONZALEZ RAMOS GUSTAVO", grupo: "1155", materia: "Álgebra Superior", horario: "LU, MI, VI 18:00 a 20:00", foto: "gustavo", descripcion: "Especialista en álgebra lineal y aplicada con amplia experiencia docente."),
    Profesor(nombre: "CORONEL RAMIREZ WENDY", grupo: "1155", materia: "Cálculo I", horario: "LU, MI, VI 14:00 a 16:00", foto: "wendy", descripcion: "Doctora en matemáticas aplicada a la ingeniería, especializada en cálculo diferencial."),
    Profesor(nombre: "MORAN FLORES MIGUEL ANGEL", grupo: "1155", materia: "Programación I", horario: "MI 20:00 a 22:00 y LU, VI 20:00 a 22:00", foto: "miguel", descripcion: "Ingeniero en software con experiencia en sistemas distribuidos y programación avanzada."),
    Profesor(nombre: "CABALLERO MARTINEZ OSCAR GABRIEL", grupo: "1155", materia: "Lógica Matemática", horario: "MA, JU 20:00 a 22:00", foto: "oscar", descripcion: "Investigador en fundamentos de la lógica matemática y su aplicación en ciencias computacionales."),
    
    // Grupo 1156
    Profesor(nombre: "JAUREGUI BALLESTEROS FRANCISCO GUILLERMO", grupo: "1156", materia: "Álgebra Superior", horario: "LU, MI, VI 16:00 a 18:00", foto: "francisco", descripcion: "Especialista en álgebra abstracta y aplicada, con enfoque en docencia universitaria."),
    Profesor(nombre: "GALINDO LOPEZ JULIO CESAR", grupo: "1156", materia: "Cálculo I", horario: "LU, MI, VI 18:00 a 20:00", foto: "juliocesar", descripcion: "Matemático experto en cálculo avanzado y sus aplicaciones en ingeniería.")
    
    
]


#Preview {
    MateriasView()
}
