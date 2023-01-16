//
//  RowView.swift
//  SwiftUITutorialApp
//
//  Created by Raul Paneque on 1/16/23.
//

import SwiftUI

struct RowView: View {
 
    var programmer:Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 40,height: 40)
                .padding(10)
            VStack(alignment: .leading){
                Text(programmer.name)
                    .font(.largeTitle)
                Text(programmer.languages)
                    .font(.headline)
            }
            Spacer()
            if programmer.favorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
            
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer:Programmer(id: 1, name: "Brais Moures", languages: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: false))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
