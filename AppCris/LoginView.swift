//
//  LoginView.swift
//  AppCris
//
//  Created by Cristian Gómez  on 05/09/24.
//

import SwiftUI




struct LoginView: View {
    @State private var accountNumber = ""
    @State private var password = ""
    @State private var isWelcomeActive = false
    @State private var showError = false // Para mostrar el mensaje de error si falla
    
    var body: some View {
        NavigationStack{
            
            VStack {
                
                Image("ImageUM")
                    .frame(width: 300, height: 300)
                    .font(.largeTitle)
                    .padding()
                
                TextField("Número de Cuenta", text: $accountNumber)
                    .keyboardType(.numberPad)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color(.colorPaja2))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                
                SecureField("Contraseña", text: $password)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color(.colorPaja2))
                    .cornerRadius(8)
                    .padding(.bottom, 20)
                
                if showError {
                    Text("Número de cuenta o contraseña incorrectos.")
                        .foregroundColor(.red)
                        .padding(.bottom, 20)
                }
                
                NavigationLink(destination: WelcomeView(), isActive: $isWelcomeActive) {
                    Button(action: {
                        // Validar los datos ingresados
                        let storedAccount = UserDefaults.standard.string(forKey: "accountNumber")
                        let storedPassword = UserDefaults.standard.string(forKey: "password")
                        
                        if accountNumber == storedAccount && password == storedPassword {
                            isWelcomeActive = true
                        } else {
                            // Mostrar mensaje de error
                            showError = true
                        }
                    }) {
                        Text("Iniciar Sesión")
                            .font(.title2)
                            .padding()
                            .background(Color.colorRegListo)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .disabled(accountNumber.isEmpty || password.isEmpty)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        }
        .navigationBarBackButtonHidden(true)
    }
}
