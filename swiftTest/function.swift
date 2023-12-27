//
//  function.swift
//  swiftTest
//
//  Created by heojiwoo on 12/27/23.
//

import SwiftUI

struct function: View {
    @State var number : Int  = 4;
    var body: some View {
        VStack{
            Button(action: {
                number = plusFive(num: number)
            }, label: {
                Text("+5")
            })
            Text("숫자는 ? \(number)")
        }
      
    }
  
    /// 앞에 추가해주는 방법
//    func plusFive(numTest num : Int) -> Int {
//        return num + 5;
//    }
    
    func plusFive( num : Int) -> Int {
        return num + 5;
    }
    
}

#Preview {
    function()
}
