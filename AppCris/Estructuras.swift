//
//  Estructuras.swift
//  AppCris
//
//  Created by Cristian Gómez  on 12/09/24.
//
import SwiftUI






struct ProfesorDetailView: View {
    let profesor: Profesor
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // Asegúrate de que 'foto' corresponde con el nombre de una imagen en tus assets
                Image(profesor.foto)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                Text(profesor.nombre)
                    .font(.title)
                    .padding(.bottom, 5)
                
                Text(profesor.descripcion)
                    .padding(.bottom, 10)
                
                Text("Grupo: \(profesor.grupo)")
                    .padding(.bottom, 2)
                Text("Materia: \(profesor.materia)")
                    .padding(.bottom, 2)
                Text("Horario: \(profesor.horario)")
            }
            .padding()
            
        }
        .navigationTitle(profesor.nombre)
    }
}

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
        .navigationBarBackButtonHidden()
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)

    }
    
}

