//
//  MyButton.swift
//  swiftTest
//
//  Created by heojiwoo on 1/22/24.
//

import SwiftUI

struct MyButton: View {
    var buttonTitle: String
    var buttonColor : Color
    
    var body: some View {
        Button {
            
        }  label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(10)
        }
    }
}

struct MyButton_Preview : PreviewProvider{
    static var previews: some View{
        MyButton(buttonTitle: "button4", buttonColor: .brown)
    }
}
