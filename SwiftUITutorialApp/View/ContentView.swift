//
//  ContentView.swift
//  SwiftUITutorialApp
//
//  Created by Raul Paneque on 1/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            Text("Bienvenido al curso de SwiftUI")
                .font(.largeTitle)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.gray)
                
            
            Spacer()
            ZStack{
                Text("").frame(maxWidth: .infinity,maxHeight: .infinity).background(.gray).padding()
                Text("").frame(maxWidth: .infinity,maxHeight: .infinity).background(.blue).padding(40)
                Text("").frame(maxWidth: .infinity,maxHeight: .infinity).background(.red).padding(60)
                Text("").frame(maxWidth: .infinity,maxHeight: .infinity).background(.green).padding(80)
            }
            
            Spacer()
            
            HStack{
                Text("Hola Hackerman")
                    .padding()
                    .background(.gray)
                    .foregroundColor(.red)
                Spacer()
                Text("Bienvenidos a MouresDev")
                    .padding()
                    .background(.gray)
                    .foregroundColor(.red)
            }
            
        }.background(.yellow)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
