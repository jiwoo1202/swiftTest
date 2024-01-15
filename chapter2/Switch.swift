//
//  Switch.swift
//  swiftTest
//
//  Created by heojiwoo on 1/3/24.
//

import SwiftUI

struct Switch: View {
    @State var myDirection: Directions = .south
    var body: some View {
        VStack{
            switch myDirection{
            case .north:
                Text("북쪽입니다")
            case .west:
                Text("서쪽입니다")
            case .south:
                Text("남쪽입니다")
            case .east:
                Text("동쪽입니다")
            }
            Button(action: {
                switch myDirection {
                case .north:
                    myDirection = .east
                case .west:
                    myDirection = .north
                case .east:
                    myDirection = .south
                case .south:
                    myDirection = .west
                }
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}


enum Directions: String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Switch()
}
