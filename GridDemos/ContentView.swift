//
//  ContentView.swift
//  GridDemos
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let data = (1...100).map {"item\($0)"}
    var body: some View {
        
        let  coloms:[GridItem]=[
            GridItem (.adaptive(minimum: 190, maximum: 250), spacing: 10, alignment: .center)
        ]
        NavigationView{
            
            ScrollView {
                LazyVGrid(columns: coloms) {
                    ForEach(data, id: \.self) { item in
                        NavigationLink( destination: Text(item)){
                      
                            VStack {
                                Text("The Due Point is 47 now")
//                                Text(item)
                            }
                        }

                    .padding()
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                                        }
                .navigationTitle("Grids")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
