//
//  ContentView.swift
//  swiftTest
//
//  Created by heojiwoo on 12/24/23.
//
import SwiftUI
struct ContentView: View {
    
    var name : String = "리이오"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(name)님 안녕하세요1")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
