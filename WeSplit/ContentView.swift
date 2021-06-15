//
//  ContentView.swift
//  WeSplit
//
//  Created by Theo Vora on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    let bears = ["Baby Bear", "Momma Bear", "Pappa Bear"]
    let bearEmojis = ["🧸", "🐻‍❄️" , "🐻" ]
    @State private var selectedBear = 0
    
    var body: some View {
        Picker("Select your student", selection: $selectedBear) {
            ForEach(0 ..< bears.count) {
                Text(self.bears[$0])
            }
        }
        Text("You selected \(bearEmojis[selectedBear])").font(.title)
    }
    
//    @State private var name = ""
//
//    var body: some View {
//        Form {
//            TextField("Enter your name", text: $name)
//            Text("Your name is \(name)")
//        }
//    }
    
//    @State private var tapCount = 0
//
//    var body: some View {
//        Button("Tap Count \(tapCount)") {
//            self.tapCount += 1
//        }
//    }
//    var body: some View {
//        NavigationView {
//            Form {
//                Section {
//                    Text("Hello, world!")
//                    //            .padding()
//                }
//            }
//            .navigationBarTitle("SwiftUI")
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
