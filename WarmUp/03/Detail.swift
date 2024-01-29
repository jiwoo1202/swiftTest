//
//  Detail.swift
//  swiftTest
//
//  Created by heojiwoo on 1/29/24.
//

import SwiftUI

struct Detail: View {
    @Binding var isPresented : Bool
    
    var body: some View {
        Text("모달 페이지 입니다2")
        
        Button{
            isPresented = false
        }label: {
            Text("닫기")
        }
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
