//
//  SimpleView.swift
//  swiftTest
//
//  Created by heojiwoo on 1/22/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack{
            Image(systemName:  "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
            
            Text("헤드라인 입니다")
                .font(.headline)
                .bold()
                .padding()
            
            Text("서브헤드라인 입니다")
                .font(.subheadline)
                .padding()
            
            Text("바디 입니다")
                .font(.body)
                .padding()
            
            Button {
                
            } label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }
            
        }
    }
}

struct SimpleView_Preview : PreviewProvider{
    static var previews: some View{
        SimpleView()
    }
}

