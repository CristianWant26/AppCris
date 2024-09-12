//
//  RegisterView.swift
//  AppCris
//
//  Created by Cristian Gómez  on 05/09/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var accountNumber = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            TextField("Nombre", text: $firstName)
                .padding()
                .background(Color(.colorPaja))
                .cornerRadius(8)
                .padding(.bottom, 20)
            
            TextField("Apellido", text: $lastName)
                .padding()
                .background(Color(.colorPaja))
                .cornerRadius(8)
                .padding(.bottom, 20)
            
            TextField("Número de Cuenta", text: $accountNumber)
                .keyboardType(.numberPad)
                .padding()
                .background(Color(.colorPaja))
                .cornerRadius(8)
                .padding(.bottom, 20)
                .onChange(of: accountNumber) { newValue in
                    if newValue.count > 10 {
                        accountNumber = String(newValue.prefix(10))
                    }
                }
            
            SecureField("Contraseña", text: $password)
                .padding()
                .background(Color(.colorPaja))
                .cornerRadius(8)
                .padding(.bottom, 20)
            
            SecureField("Confirmar Contraseña", text: $confirmPassword)
                .padding()
                .background(Color(.colorPaja))
                .cornerRadius(8)
                .padding(.bottom, 20)
            
            Button(action: {
                if password == confirmPassword {
                    // Guardar los datos del registro
                    UserDefaults.standard.set(accountNumber, forKey: "accountNumber")
                    UserDefaults.standard.set(password, forKey: "password")
                    self.presentationMode.wrappedValue.dismiss()
                } else {
                    // Mostrar error si las contraseñas no coinciden
                }
            }) {
                Text("Registrarse")
                    .font(.title2)
                    .padding()
                    .background(Color.colorRegListo)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .disabled(firstName.isEmpty || lastName.isEmpty || accountNumber.isEmpty || password.isEmpty || confirmPassword.isEmpty || password != confirmPassword)
        }
        .padding()
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.colorbluepuma)
    }
}
