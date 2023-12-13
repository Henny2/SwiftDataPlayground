//
//  ContentView.swift
//  SwiftDataPlayground
//
//  Created by Henrieke Baunack on 12/12/23.
//

import SwiftUI

struct CustomButton: View {
    @Binding var boolean: Bool
    var body: some View {
        Button("Click here"){
            print("clicked the button: \(boolean)")
            boolean.toggle()
        }
        .frame(width:200, height:200)
        .background(boolean ? .green : .red)
    }
}

struct ContentView: View {
    @State private var boolean = true
    var body: some View {
        VStack{
            CustomButton(boolean: $boolean)
            Text("the bool value: \(String(boolean))")
        }
    }
}

#Preview {
    ContentView()
}
