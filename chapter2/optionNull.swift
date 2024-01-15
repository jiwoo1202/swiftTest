//
//  optionNull.swift
//  swiftTest
//
//  Created by heojiwoo on 1/8/24.
//

import SwiftUI

struct optionNull: View {
    var name :String = "jiwoo"
    var petName : String?
    var petName2 : String = "coco"
    
    var body: some View {
        VStack{
            Text("이름은 \(petName2)")
        }.onAppear{
            print("이름은 \(petName)")
        }
        
    }
}


#Preview {
    optionNull()
}
