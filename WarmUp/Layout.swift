//
//  Layout.swift
//  swiftTest
//
//  Created by heojiwoo on 1/22/24.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width:200,height: 200)
                .padding()
            
            Text("Text Element 1")
                .font(.headline)
                .padding()
            
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
            
            Text("Text Element 3")
                .font(.system(size: 20))
                .padding()
            
            HStack{
                MyButton(buttonTitle: "button1", buttonColor: .blue)
                MyButton(buttonTitle: "button2", buttonColor: .cyan)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            Button(action: {}, label: {
                VStack{
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50)
                    Text("Complex Button")
                }
                .padding()
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(10)
            })
        }
    }
}


struct Layout_Preview : PreviewProvider{
    static var previews: some View{
        Layout()
    }
}

