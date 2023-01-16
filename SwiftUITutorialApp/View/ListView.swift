//
//  ListView.swift
//  SwiftUITutorialApp
//
//  Created by Raul Paneque on 1/16/23.
//

import SwiftUI

private let programmers =
[Programmer(id: 1, name: "Brais Moures", languages: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: true),
 Programmer(id: 2, name: "Raul Enrique", languages: "Python", avatar: Image(systemName: "person.fill"), favorite: false),
 Programmer(id: 3, name: "Aris Vilarino", languages: "Medico Veterinaria", avatar: Image(systemName: "person.fill"), favorite: true),
 Programmer(id: 4, name: "Arlys Lopez", languages: "Primaria", avatar: Image(systemName: "person.fill"), favorite: false),
 Programmer(id: 5, name: "Tito", languages: "Bebe", avatar: Image(systemName: "person.fill"), favorite: false)
    
    ]

struct ListView: View {
    
    @State private var showFavorites = false
    
    private var filteredProgrammer: [Programmer] {
        return programmers.filter{ programmer in
            return !showFavorites || programmer.favorite
            
        }
    }
    
    var body: some View {
        VStack{
            
            Toggle(isOn: $showFavorites) {
                Text("Mostrar Favoritos")
            }.padding()
            
            NavigationView{
                List(filteredProgrammer,id: \.id){ programmer in
                    NavigationLink(destination: ListDetailsView(programmer: programmer)){
                        RowView(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers").font(.largeTitle)
            }
            
        }
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
