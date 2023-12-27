//
//  condition.swift
//  swiftTest
//
//  Created by heojiwoo on 12/26/23.
//

import SwiftUI

struct condition: View {
    
    var num = 4;
    var hasLogIn = false;
    
    var body: some View {
        if(num>4){
            Text("4보다 크다")
            }
        if(hasLogIn){
            Text("로그인되었습니다")
        }else{
            Text("로그인이 실패하였습니다")
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    condition()
}
