//
//  ConsultarProfesoresView.swift
//  AppCris
//
//  Created by Cristian Gómez  on 06/09/24.
//
import SwiftUI

struct ConsultarProfesoresView: View {
    @State private var searchText: String = ""
    let profesores: [Profesor]
    
    var filteredProfesores: [Profesor] {
        if searchText.isEmpty {
            return profesores
        } else {
            return profesores.filter { $0.nombre.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        VStack {
            // Buscador de profesores
            TextField("Buscar profesores", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Lista de profesores
            List(filteredProfesores) { profesor in
                NavigationLink(destination: ProfesorDetailView(profesor: profesor)) {
                    ProfesorRow(profesor: profesor)
                }
            }
            .navigationTitle("Consultar Profesores")
        }
    }
}

struct Profesor: Identifiable {
    //En esta linea me manda el error de Invalid redeclaration of 'Profesor'
    let id = UUID()
    let nombre: String
    let grupo: String
    let materia: String
    let horario: String
    let foto: String
    let descripcion: String
}

struct ProfesorRow: View {
    let profesor: Profesor
    //En esta linea me sale 'Profesor is ambiguos for tyoe lookup in this context
    
    var body: some View {
        HStack {
            // Asegúrate de que 'foto' corresponde con el nombre de una imagen en tus assets
            Image("ImageDefault")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(profesor.nombre)
                    .font(.headline)
                Text(profesor.materia)
                    .font(.subheadline)
            }//.navigationBarBackButtonHidden(true)
        }
    }
}
