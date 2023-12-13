//
//  ContentView.swift
//  SwiftDataPlayground
//
//  Created by Henrieke Baunack on 12/12/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment (\.modelContext) var modelContext
    @Query var students: [Student] // just adding @Query makes Swift Ui query the container to get all the students, it will also watch it for updates
    var body: some View {
        NavigationStack{
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Henny", "James", "Macie", "Jose"]
                    let lastNames = ["Smith", "Potter", "Ramirez", "Mills"]
                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    modelContext.insert(student)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
