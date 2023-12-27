//
//  loop.swift
//  swiftTest
//
//  Created by heojiwoo on 12/27/23.
//

import SwiftUI

struct loop: View {
    let names : [String] = ["dasom" , "jiwoo","human"]
    var body: some View {
        ForEach(names, id: \.self) { items in
            Text(items)
        }
    }
}

#Preview {
    loop()
}
