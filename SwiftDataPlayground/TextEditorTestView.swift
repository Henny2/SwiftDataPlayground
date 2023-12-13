//
//  TextEditorTestView.swift
//  SwiftDataPlayground
//
//  Created by Henrieke Baunack on 12/12/23.
//

import SwiftUI

struct TextEditorTestView: View {
    @State private var notes = ""
    var body: some View {
        Form{
            TextField("Put in something", text: $notes, axis: .vertical)
            TextEditor(text: $notes)
        }
    }
}

#Preview {
    TextEditorTestView()
}
