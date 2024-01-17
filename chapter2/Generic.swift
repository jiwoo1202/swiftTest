//
//  Generic.swift
//  swiftTest
//
//  Created by heojiwoo on 1/18/24.
//

import SwiftUI

struct Generic: View {
    
    @State var input = ""
    @State var myStack = MyStack<Int>()
//    @State var myStack = MyStack<Float>()
    
    var body: some View {
        VStack{
            TextField("숫자를 입력해주세요",text: $input)
            Button(action: {
                myStack.insertValue(input: Int(input) ?? 0)
//                myStack.insertValue(input: Float(input) ?? 0.0)
            }, label: {
                Text("저장")
            })
            Button(action: {
                myStack.showData()
            }, label: {
                Text("출력")
            })
        }
    }
}

struct MyStack<T>{
    var data : [T] = []
    
   mutating func insertValue(input : T){
        data.append(input)
    }
    
    func showData(){
        data.forEach { 
            item in print(item)
        }
    }
}

struct Generic_Preview : PreviewProvider{
    static var previews: some View{
        Generic()
    }
}
