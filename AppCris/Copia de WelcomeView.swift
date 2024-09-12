//
//  SwiftUIView.swift
//  AppCris
//
//  Created by Cristian Gómez  on 05/09/24.
//
import SwiftUI

struct WelcomeView: View {
    let profesorEjemplo = Profesor(nombre: "Juan Pérez", grupo: "1301", materia: "Matemáticas", horario: "8:00 - 10:00", foto: "profesor1", descripcion: "Profesor con amplia experiencia en la enseñanza de matemáticas.")
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Bienvenido")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination:  DetalleProfesorView()) {
                    Button(action: {
                        // Acción para consultar profesores
                    }) {
                        Text("Consultar Profesores")
                            .font(.title2)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.bottom, 20)
                
                .padding(.bottom, 20)
                
                NavigationLink(destination: CrearHorarioView()) {
                    Text("Consultar")
                        .font(.title2)
                        .padding()
                        .background(Color.colorRegistrarse)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.colorbluepuma)
        }
        .navigationBarBackButtonHidden()
    }
}
