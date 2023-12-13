//
//  SwiftDataPlaygroundApp.swift
//  SwiftDataPlayground
//
//  Created by Henrieke Baunack on 12/12/23.
//

import SwiftUI
import SwiftData

// this is our launch pad for the code we are running
// it is called App struct
// here we add some code to load the data models we stored in SwiftData
// here we want to tell SwiftData to set up the data storage

@main // this tells Swift what launches the application
struct SwiftDataPlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // telling Swift to make our data available everywhere
        .modelContainer(for: Student.self)
    }
}
