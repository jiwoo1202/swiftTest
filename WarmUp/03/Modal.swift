//
//  Modal.swift
//  swiftTest
//
//  Created by heojiwoo on 1/29/24.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack{
            Text("메일 페지이 입니다")
            Button{
                showModal = true
            }label: {
                Text("Modal 화면 전환")
            }
        }
        .sheet(isPresented: $showModal, content: {
            Detail(isPresented: $showModal)
        })
    }
}

#Preview {
    Modal()
}
