//
//  protocol.swift
//  swiftTest
//
//  Created by heojiwoo on 1/16/24.
//

import SwiftUI

struct protocol: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

protocol driveable {
    func speedDown(with speed: Int) ->Int
}
#Preview {
    protocol()
}
