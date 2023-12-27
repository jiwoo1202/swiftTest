//
//  Elevator.swift
//  swiftTest
//
//  Created by heojiwoo on 12/27/23.
//

import SwiftUI

struct Elevator: View {
    
    @State var elevator = ElevatorStruct(level: 4)
  
    var body: some View {
    VStack{
        Text("층수 \(elevator.level)층")
        HStack{
            Button(action: {
                elevator.goUp()
            }, label: {
                Text("위로")
            })
            Button(action: {
                elevator.goDown()
            }, label: {
                Text("아래로")
            })
        }
    }
}
}

struct ElevatorStruct {
    var level : Int = 1
    
    mutating func goUp()  {
        level =  level + 1;
    }
    mutating func goDown(){
        level = level - 1;
    }
}
#if DEBUG
struct Elevator_Previews: PreviewProvider {
    static var previews: some View {
        Elevator()
    }
}
#endif
