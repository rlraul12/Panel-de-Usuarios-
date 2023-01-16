//
//  ListView.swift
//  SwiftUITutorialApp
//
//  Created by Raul Paneque on 1/16/23.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject{
    
    
    
    @Published var programmers =
            [Programmer(id: 0, name: "Brais Moures", languages: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: true),
             Programmer(id: 1, name: "Raul Enrique", languages: "Python", avatar: Image(systemName: "person.fill"), favorite: false),
             Programmer(id: 2, name: "Aris Vilarino", languages: "Medico Veterinaria", avatar: Image(systemName: "person.fill"), favorite: true),
             Programmer(id: 3, name: "Arlys Lopez", languages: "Primaria", avatar: Image(systemName: "person.fill"), favorite: false),
             Programmer(id: 4, name: "Tito", languages: "Bebe", avatar: Image(systemName: "person.fill"), favorite: false)
             
            ]
}


struct ListView: View {
    
    @EnvironmentObject var programmersModelData:ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammer: [Programmer] {
        return programmersModelData.programmers.filter{ programmer in
            return !showFavorites || programmer.favorite
            
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
            
            Toggle(isOn: $showFavorites) {
                Text("Mostrar Favoritos")
            }.padding()
            
            
                List(filteredProgrammer,id: \.id){ programmer in
                    NavigationLink(destination: ListDetailsView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)){
                        RowView(programmer: programmer)
                    }
                }
                
            }.navigationTitle("Programmers").font(.largeTitle)
            
        }
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
