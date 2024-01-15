//
//  diff.swift
//  swiftTest
//
//  Created by heojiwoo on 12/27/23.
//

import SwiftUI

struct diff: View {
    let myCar = Car(name: "붕붕이", owner: "허지우")
   @ObservedObject var yourCar = Kar(name: "붕붕이2", owner: "신다솜")
    @State var name : String = "";
    var body: some View {
        VStack{
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
            Text("\(myCar.name)의 주인은 \(myCar.owner)입니다")
            Button(action: {
                
                /// 구조체
                var sisterCar = myCar
                sisterCar.name = "붕붕이4"
                sisterCar.owner = "신다솜3"
                
                /// class
                var broCar = yourCar
                broCar.name = "붕붕이3"
                broCar.owner = "신다솜2"
                
                broCar.sayHi()
                yourCar.sayHi()
            }, label: {
                Text("출발")
            })
        }
    }
}
struct Car {
    var name : String
    var owner : String
    
    func sayHi(){
        print("hi \(name)")
    }
}
class Kar : ObservableObject {
    @Published var name : String
    var owner : String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayHi(){
        print("hi \(name)")
    }
}
#Preview {
    diff()
}
