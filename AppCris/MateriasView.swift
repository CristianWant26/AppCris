
import SwiftUI
import Foundation

struct Sesion: Identifiable {
    let id = UUID()
    let dia: String
    let inicio: Date
    let fin: Date
}

struct Materia: Identifiable, Equatable {
    let id = UUID()
    let nombre: String
    let profesor: String
    let grupo: String
    let horario: String
    
    var sesiones: [Sesion]
    
    static func == (lhs: Materia, rhs: Materia) -> Bool {
        return lhs.id == rhs.id
    }
}

func hayEmpalme(materiaSeleccionada: Materia, materiasSeleccionadas: [Materia]) -> Bool {
    for materia in materiasSeleccionadas {
        // Verifica si las materias son del mismo grupo
        if materiaSeleccionada.grupo == materia.grupo {
            continue // Las materias del mismo grupo no deben ser verificadas para empalmes
        }
        
        for sesionSeleccionada in materiaSeleccionada.sesiones {
            for sesion in materia.sesiones {
                if horariosEmpalmados(
                    inicio1: sesion.inicio, fin1: sesion.fin,
                    inicio2: sesionSeleccionada.inicio, fin2: sesionSeleccionada.fin
                ) {
                    return true
                }
            }
        }
    }
    return false
}

func horariosEmpalmados(inicio1: Date, fin1: Date, inicio2: Date, fin2: Date) -> Bool {
    return (inicio1 < fin2 && inicio2 < fin1)
}


func crearFecha(hora: Int, minuto: Int) -> Date {
    let calendar = Calendar.current
    var components = DateComponents()
    components.year = 2024
    components.month = 9
    components.day = 6
    components.hour = hora
    components.minute = minuto
    return calendar.date(from: components) ?? Date()
}

let sampleMaterias: [Materia] = [
    // Grupo 1152
    Materia(
        nombre: "Álgebra Superior",
        profesor: "Gonzalez Ramos Gustavo",
        grupo: "1152",
        horario: "Lunes, Miércoles y Viernes de 16:00 a 18:00", // Agrega el valor aquí
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0))
        ]),

    Materia(
        nombre: "Cálculo I",
        profesor: "Pacheco Paez Juan Carlos",
        grupo: "1152",
        horario: "Lunes, Miércoles y Viernes de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Organización de Computadoras",
        profesor: "Gonzalez Videgaray Efren Pablo Hector",
        grupo: "1152",
        horario: "Martes y Jueves de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Programación I",
        profesor: "Bahena Gomez Federico Guillermo",
        grupo: "1152",
        horario: "Lunes, Miércoles y Viernes de 20:00 a 22:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Solución Algorítmica de Problemas",
        profesor: "Soto Osornio Arturo Antonio",
        grupo: "1152",
        horario: "Martes y Domingo de 20:00 a 22:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0)),
            Sesion(dia: "Domingo", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Lógica Matemática",
        profesor: "Rosales Sanchez Sergio Miguel",
        grupo: "1152",
        horario: "Martes y Jueves de 16:00 a 18:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Álgebra Superior",
        profesor: "Haro Sanchez Virginia",
        grupo: "1153",
        horario: "Lunes, Miércoles y Viernes de 14:00 a 16:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Cálculo I",
        profesor: "Galindo Cuevas Jesus Gil",
        grupo: "1153",
        horario: "Lunes, Miércoles y Viernes de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Organización de Computadoras",
        profesor: "Gonzalez Videgaray Efren Pablo Hector",
        grupo: "1153",
        horario: "Martes y Jueves de 16:00 a 18:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Programación I",
        profesor: "Apia Aguilar Maria",
        grupo: "1153",
        horario: "Lunes, Miércoles y Viernes de 16:00 a 18:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Solución Algorítmica de Problemas",
        profesor: "Rosales Sanchez Sergio Miguel",
        grupo: "1153",
        horario: "Martes y Jueves de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Lógica Matemática",
        profesor: "Viquez Cano Monica Zaima",
        grupo: "1153",
        horario: "Martes y Jueves de 14:00 a 16:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Álgebra Superior",
        profesor: "Saavedra Luis Hector Axel",
        grupo: "1154",
        horario: "Lunes, Miércoles y Viernes de 16:00 a 18:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Cálculo I",
        profesor: "Baltazar Martinez Ernesto",
        grupo: "1154",
        horario: "Lunes, Miércoles y Viernes de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Organización de Computadoras",
        profesor: "Vasconcelos Santillan Jorge",
        grupo: "1154",
        horario: "Martes y Jueves de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Programación I",
        profesor: "Martinez Torres Rene",
        grupo: "1154",
        horario: "Lunes, Miércoles y Viernes de 14:00 a 16:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 14, minuto: 0), fin: crearFecha(hora: 16, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Solución Algorítmica de Problemas",
        profesor: "Manzanares Alvarez Fernando",
        grupo: "1154",
        horario: "Lunes y Miércoles de 20:00 a 22:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Lógica Matemática",
        profesor: "Frias Silver Elsa",
        grupo: "1154",
        horario: "Martes y Jueves de 16:00 a 18:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Álgebra Superior",
        profesor: "Gonzalez Ramos Gustavo",
        grupo: "1155",
        horario: "Lunes, Miércoles y Viernes de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ]
    ),
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
    ),
    Materia(
        nombre: "Lógica Matemática",
        profesor: "Caballero Martinez Oscar Gabriel",
        grupo: "1155",
        horario: "Martes y Jueves de 20:00 a 22:00",
        sesiones: [
            Sesion(dia: "Martes", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0)),
            Sesion(dia: "Jueves", inicio: crearFecha(hora: 20, minuto: 0), fin: crearFecha(hora: 22, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Álgebra Superior",
        profesor: "Jauregui Ballesteros Francisco Guillermo",
        grupo: "1156",
        horario: "Lunes, Miércoles y Viernes de 16:00 a 18:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 16, minuto: 0), fin: crearFecha(hora: 18, minuto: 0))
        ]
    ),
    Materia(
        nombre: "Cálculo I",
        profesor: "Galindo Lopez Julio Cesar",
        grupo: "1156",
        horario: "Lunes, Miércoles y Viernes de 18:00 a 20:00",
        sesiones: [
            Sesion(dia: "Lunes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Miércoles", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0)),
            Sesion(dia: "Viernes", inicio: crearFecha(hora: 18, minuto: 0), fin: crearFecha(hora: 20, minuto: 0))
        ])
    
    ]

struct MateriasView: View {
    @State private var materias: [Materia] = sampleMaterias
    @State private var materiasSeleccionadas: [Materia] = []
    @State private var mostrarAlerta = false
    @State private var mensajeAlerta = ""
    @State private var searchText = ""
    @State private var someList: [String] = []
    @State private var showSaveOptions = false

    
    private var filteredMaterias: [Materia] {
        if searchText.isEmpty {
            return materias
        } else {
            return materias.filter { materia in
                materia.nombre.lowercased().contains(searchText.lowercased()) ||
                materia.profesor.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(text: $searchText, placeholder: "Busca la materia o profesor")
                    .padding()
                
                List {
                    ForEach(filteredMaterias) { materia in
                        MateriaRow(
                            materia: materia,
                            isSelected: materiasSeleccionadas.contains(materia),
                            toggleSelection: {
                                if materiasSeleccionadas.contains(materia) {
                                    materiasSeleccionadas.removeAll { $0 == materia }
                                } else {
                                    if hayEmpalme(materiaSeleccionada: materia, materiasSeleccionadas: materiasSeleccionadas) {
                                        mensajeAlerta = "La materia \(materia.nombre) tiene empalmes con materias ya seleccionadas."
                                        mostrarAlerta = true
                                    } else {
                                        materiasSeleccionadas.append(materia)
                                    }
                                }
                            }
                        )
                    }
                }
                
                HStack {
                    
                    NavigationLink{
                        HorarioFinalView(materias: materiasSeleccionadas)
                    } label: {
                        Text("Aceptar")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .clipShape(Capsule())

                    }
                    .disabled(materiasSeleccionadas.isEmpty)
                    .padding(.trailing)

                    
                    
                    Button(action: borrarSeleccion) {
                        Text("Borrar Selección")
                            .padding()
                            .foregroundColor(.red)
                    }
                }
                .padding(.top)
                
                .alert(isPresented: $mostrarAlerta) {
                    Alert(title: Text("Resultado"), message: Text(mensajeAlerta), dismissButton: .default(Text("OK")))
                }
            }
            .navigationTitle("Horario")
            .navigationViewStyle(StackNavigationViewStyle())
            
        }
    }
    
    private func borrarSeleccion() {
        materiasSeleccionadas.removeAll()
    }
}



struct MateriaRow: View {
    let materia: Materia
    let isSelected: Bool
    let toggleSelection: () -> Void
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(materia.nombre) [\(materia.grupo)]")
                    .font(.headline)
                Text("Profesor: \(materia.profesor)")
                ForEach(materia.sesiones) { sesion in
                    Text("\(sesion.dia) de \(sesion.inicio, style: .time) a \(sesion.fin, style: .time)")
                }
            }
            Spacer()
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            toggleSelection()
        }
    }
}

struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    var placeholder: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        var parent: SearchBar
        
        init(parent: SearchBar) {
            self.parent = parent
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            parent.text = searchText
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.delegate = context.coordinator
        searchBar.placeholder = placeholder
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
}

//Permite ver el canva
#Preview{
    MateriasView()
}
