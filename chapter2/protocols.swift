//
//  protocol.swift
//  swiftTest
//
//  Created by heojiwoo on 1/16/24.
//

import SwiftUI

struct protocols: View {
    var myCar : KIA = KIA()
    var broCar : Hyundai = Hyundai()
    let cars : [driveable] = [KIA(),Hyundai()]
    @State var speed : Int = 10
    
    var body: some View {
        VStack{
           Text("speed : \(speed)")
            Button(action: {
                speed = myCar.speedDown(with: speed)
                cars.randomElement()?.speedDown(with: speed)
            }, label: {
                Text("감속")
            })
        }
        
    }
}
struct KIA : driveable{
    func speedDown(with speed: Int) -> Int {
        print("속도가 줄어듭니다")
        return speed - 5;
    }
}
struct Hyundai : driveable{
    func speedDown(with speed: Int) -> Int {
        print("현대 속도가 줄어듭니다")
        return speed - 9;
    }
}
/// 프로토콜
protocol driveable {
    func speedDown(with speed: Int) ->Int
}
#Preview {
    protocols()
}
