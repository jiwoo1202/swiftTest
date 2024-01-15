//
//  Sample.swift
//  swiftTest
//
//  Created by heojiwoo on 1/8/24.
//

import SwiftUI

struct Sample: View {
    let data = [
        Destination(direction: .north,
                    food: "파스타맛집",
                    image: Image(systemName:"carrot")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName:"sunrise")),
        Destination(direction: .west,
                food: nil,
                image: Image(systemName:"balloon")),
        Destination(direction: .south,
                food: "순대맛집",
                image: Image(systemName:"cursor.rays"))
    ]
    @State var selectedDestionation : Destination?
    var body: some View {
        VStack{
            selectedDestionation?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
            
            
            if let destion = selectedDestionation{
                Text(destion.direction.rawValue)
                if let food = destion.food{
                    Text(food)
                }
            }
            
            Button(action: {
                selectedDestionation = data.randomElement()
            }, label: {
                Text("돌려요!")
            })
        }
    }
}

struct Destination {
    let direction : Direction
    let food : String?
    let image : Image
}
enum Direction : String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Sample()
}
