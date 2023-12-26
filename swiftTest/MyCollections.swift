//
//  MyCollections.swift
//  swiftTest
//
//  Created by heojiwoo on 12/26/23.
//

import SwiftUI

struct MyCollections: View {
    
    var food : [String] = ["egg","banana","bean"] /// List
    var jazzs : Set<String> = ["la","dudu","dids"] /// set
    var hiphop : Set<String> = ["la","rap","wow"] /// set
    var maps : [String: String] = ["id": "1234", "pw":"123"] /// map
    var body: some View {
        VStack{
            Text(food[0])
            Text(" hi \(hiphop.intersection(jazzs).description)")
            Button(
                action:{
                    var interaction = hiphop.intersection(jazzs).description
                }, label: {
                Text("hit")
            })
            
            Text(maps["id"]!)
        }
    }
}

#Preview {
    MyCollections()
}
