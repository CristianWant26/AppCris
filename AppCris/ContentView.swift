//
//  ContentView.swift
//  AppCris
//
//  Created by Cristian Gómez  on 04/09/24.
//
import SwiftUI

struct ContentView: View {
    @State private var isLoginActive = false
    @State private var isRegisterActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("ImageUM")
                    .frame(width: 300, height: 300)
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: LoginView(), isActive: $isLoginActive) {
                    Button(action: {
                        isLoginActive = true
                    }) {
                        Text("Iniciar Sesión")
                            .font(.title2)
                            .padding()
                            .background(Color.color1)
                            .foregroundColor(.colorRegistrarse)
                            .cornerRadius(8)
                    }.navigationBarBackButtonHidden(false)
                    
                }
                .padding(.bottom, 20)
                .navigationBarBackButtonHidden(false)
                
                
                NavigationLink(destination: RegisterView(), isActive: $isRegisterActive) {
                    Button(action: {
                        isRegisterActive = true
                    }) {
                        Text("Registrarse")
                            .font(.title2)
                            .padding()
                            .background(Color.color1)
                            .foregroundColor(.colorRegistrarse)
                            .cornerRadius(8)
                    }
                }
            }
            
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .navigationBarBackButtonHidden(true)

        }
    }
}
/*
 -----------------------------------------------------------
 */




#Preview{
        ContentView()
}
