//
//  ContentView.swift
//  NotizenApp
//
//  Created by Mike Finimento on 04.11.24.
//

import SwiftUI


struct ContentView: View {

    @State var notizen: [String] = ["Zimmer Aufräumen", "Einkaufen gehen"]
    @State var notiz = ""
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(notizen, id: \.self){ notiz in
                        Text(notiz)
                    }.onDelete(perform: { indexSet in
                        notizen.remove(atOffsets: indexSet)
                    })
                }
                .navigationTitle("Notizen")
                HStack {
                    TextField("Neue Notiz", text: $notiz)
                    
                    Button("Hinzufügen"){
                        notizen.append(notiz)
                        notiz = ""
                    }
                }.padding(.horizontal)
            }
        }
    }
}

#Preview {
    ContentView()
}
