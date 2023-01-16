//
//  ListDetailsView.swift
//  SwiftUITutorialApp
//
//  Created by Raul Paneque on 1/16/23.
//

import SwiftUI



struct ListDetailsView: View {
    
    var programmer: Programmer
    
    var body: some View {
        VStack {
            programmer.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(.black, lineWidth: 4)).shadow(color:Color.gray, radius: 5)
            Text(programmer.name).font(.largeTitle)
            Text(programmer.languages).font(.title)
            Spacer()
        }
        
    }
}

struct ListDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailsView(programmer: Programmer(id: 1, name: "Brais", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true))
    }
}
