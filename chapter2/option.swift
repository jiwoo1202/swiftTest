//
//  option.swift
//  swiftTest
//
//  Created by heojiwoo on 1/8/24.
//

import SwiftUI

struct option: View {
    var jiwoo = People(name: "jiwoo")
    var dasom = People(name: "dasom", petName: "cat")
    var chain : People? = People(name: "chain",mbti: MBTI(name: "ENFP"))
    
    var body: some View {
        VStack{
            if let petName = jiwoo.petName{
                Text("이름은 \(jiwoo.name) 펫 이름은 \(petName)")
            }else{
                Text("이름은 \(jiwoo.name) 펫 이름은 없음")
            }
            
            if let petName = dasom.petName{
                Text("이름은 \(dasom.name) 펫 이름은 \(petName)")
            }
            
            /// chain
            if let jiwooMbti  = chain?.mbti?.name{
               Text("\(jiwooMbti)")
            }else{
                Text("없음")
            }
    
            
        }
    }
}

struct People {
    let name : String
    var petName : String?
    var mbti : MBTI?
}

struct MBTI{
    var name : String
}
#Preview {
    option()
}
