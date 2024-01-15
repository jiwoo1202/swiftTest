//
//  exception.swift
//  swiftTest
//
//  Created by heojiwoo on 1/16/24.
//

import SwiftUI

struct exception: View {
    @State var inputNumber = ""
    @State var resultNumber: Float = 0
    var body: some View {
        VStack{
            TextField("나눌 숫자를 입력해주세요",text: $inputNumber)
            Text("나눈 결과는 다음과 같아요 \(resultNumber)")
            Button{
                do{
                    try resultNumber = deviceTen(with: (Float(inputNumber) ?? 1.0) )
                }catch DivideError.dividedByZero{
                    print("0으로 나누기")
                    resultNumber = -1
                }
                catch{
                    print(error.localizedDescription)
                }
               
            }label: {
                Text("나누기")
            }
        }
    }
    func deviceTen(with inputNumber:Float) throws-> Float{
        var result: Float = 0
        if inputNumber == 0{
            throw DivideError.dividedByZero
        }else{
            result = 10 / inputNumber
        }
        return result
    }
}
///에러
enum DivideError : Error{
    case dividedByZero
}

struct Exception_Previews: PreviewProvider {
    static var previews: some View {
        exception()
    }
}
