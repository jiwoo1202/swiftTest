//
//  ContentView.swift
//  swiftTest
//
//  Created by heojiwoo on 1/18/24.
//

import SwiftUI

struct ContentViews: View {
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                               .green, .purple, .pink]

    var body: some View {
        VStack{
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello")
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
            Stepper(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(4)/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Range@*/1...10/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
            }
        }.padding()
    }
    
    func incrementStep() {
           value += 1
           if value >= colors.count { value = 0 }
       }

       func decrementStep() {
           value -= 1
           if value < 0 { value = colors.count - 1 }
       }
}


struct ContentViews_Preview : PreviewProvider{
    static var previews: some View{
        ContentViews()
    }
}

