//
//  Choice.swift
//  swiftTest
//
//  Created by heojiwoo on 1/3/24.
//

import SwiftUI

struct Choice: View {
    var direction: Directionsd = .north
    var member : Member = .jiwoo
    var menu : Menu = .steak("미디움")
    var body: some View {
        VStack{
            Text("방향은 \(direction.rawValue)입니다")
        }
        
    }
}

enum Member: String {
    case jiwoo , dasom, human
}

enum Menu {
    case pasta
    case pizza
    case steak(String)
}

enum Directionsd: String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Choice()
}


