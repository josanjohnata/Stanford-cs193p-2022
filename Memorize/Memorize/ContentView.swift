//
//  ContentView.swift
//  Memorize
//
//  Created by Josan Johnata Paixao Pontes on 09/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(lineWidth: 3)
            Text("Hello, world! - I'm John")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
    }
}
