//
//  Setting.swift
//  swiftTest
//
//  Created by heojiwoo on 1/28/24.
//

import SwiftUI

struct SettingInfo :Hashable{
    let title : String
    let systemName : String
    let backgroundColor : Color
    let foregroundColor : Color
    
}

struct Setting: View {
    
    let data : [[SettingInfo]] = [
        [SettingInfo(title: "스크린타임", systemName: "hourglass", backgroundColor: .purple, foregroundColor: .white)],
        [SettingInfo(title: "일반", systemName: "gear", backgroundColor: .gray, foregroundColor: .white),
         SettingInfo(title: "손쉬운 사용", systemName: "hourglass", backgroundColor: .blue, foregroundColor: .white)]
    ]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(data, id: \.self) { section in
                    Section{
                        ForEach(section , id: \.self){ item in
                            Label{
                                Text(item.title)
                            }icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20,height: 20)
                                    .padding(.all,7)
                                    .background(item.backgroundColor)
                                    .foregroundColor(item.foregroundColor)
                                    .cornerRadius(6)
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
