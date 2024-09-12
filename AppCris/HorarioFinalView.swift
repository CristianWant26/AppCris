import SwiftUI
import Foundation

struct HorarioFinalView: View {
    var materias: [Materia]
    
    var body: some View {
        NavigationStack{
            List(materias, id: \.nombre) { materia in
                VStack(alignment: .leading) {
                    Text(materia.nombre)
                        .font(.headline)
                    Text("Profesor: \(materia.profesor)")
                    Text("Grupo: \(materia.grupo)")
                    Text("Horario: \(materia.horario)")
                }
                .padding(.vertical, 5)
            }
        }
        .navigationTitle("Horario Final")
        
    }
}

#Preview{
    HorarioFinalView(materias: [
        Materia(
            nombre: "Cálculo I",
            profesor: "Coronel Ramirez Wendy",
            grupo: "1155",
            horario: "Lunes, Miércoles y Viernes de 14:00 a 16:00",
            sesiones: [
                Sesion(dia: "Lunes", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0)),
                Sesion(dia: "Miércoles", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0)),
                Sesion(dia: "Viernes", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0))
            ]
        ),
        Materia(
            nombre: "Programación I",
            profesor: "Moran Flores Miguel Angel",
            grupo: "1155",
            horario: "Lunes, Miércoles y Viernes de 20:00 a 22:00",
            sesiones: [
                Sesion(dia: "Lunes", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0)),
                Sesion(dia: "Miércoles", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0)),
                Sesion(dia: "Viernes", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0))
            ]
        )
    ])
}
//__________________________________________
