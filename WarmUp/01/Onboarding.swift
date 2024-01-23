//
//  Onboarding.swift
//  swiftTest
//
//  Created by heojiwoo on 1/23/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack{
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
                .padding(.top,50)
            
            HStack{
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
//                    .padding(.leading)
//                    .padding(.leading,4)
                    .padding(.horizontal,7)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading){
                    Text("Shard Library")
                        .font(.headline)
                    Text("combine photos and videocombine photos and videocombine photos and videocombine photos and videocombine photos and videocombine photos and video")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            HStack{
                Image(systemName:  "doc.on.doc.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
//                    .padding(.leading)
//                    .padding(.leading,4)
                    .padding(.horizontal,7)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading){
                    Text("Copy & paste Edits")
                        .font(.headline)
                    Text("combine photos and videocombine photos and videocombine photos and videocombine photos and videocombine photos and videocombine photos and video")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            HStack{
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
//                    .padding(.leading)
//                    .padding(.leading,4)
                    .padding(.horizontal,7)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading){
                    Text("Mearge Duplicate")
                        .font(.headline)
                    Text("combine photos and videocombine photos and videocombine photos and videocombine photos and videocombine photos and videocombine photos and video")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            Spacer()
            Button(action: {}, label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
            })
            .padding(.bottom,60)
        }
    }
}

#Preview {
    Onboarding()
}
