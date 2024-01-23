//
//  ListLoop.swift
//  swiftTest
//
//  Created by heojiwoo on 1/23/24.
//

import SwiftUI

struct Fruit : Hashable{
    let name : String
    let matchFruitName :String
    let price : Int
}

struct ListLoop: View {
    
    @State var fruitName: String = ""
    @State var favoriteFruit = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 2000),
        Fruit(name: "Cherry", matchFruitName: "DoubleKiwi", price: 3000)
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    TextField("insert Fruit name", text: $fruitName)
                    Button(action: {
                        favoriteFruit.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    }, label: {
                        Text("insert")
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                            
                    })
                }
                .padding()
                List{
                    ForEach(favoriteFruit, id: \.self, content: { fruits in
                        VStack(alignment: .leading){
                            Text("name : \(fruits.name)")
                            Text("matchFruit : \(fruits.matchFruitName)")
                            Text("price : \(fruits.price)")
                        }
                        
                    }).onDelete(perform: { index in
                        favoriteFruit.remove(atOffsets: index)
                    })
                }
                .navigationTitle("Fruit List")
            }
        }
        
    }
}

#Preview {
    ListLoop()
}
