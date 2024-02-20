//
//  StorageTestView.swift
//  PhotosAlbum
//
//  Created by Влад on 2/11/24.
//

import SwiftUI

struct StorageTestView: View {
    @AppStorage("Test") var test2 = 0
    var body: some View {
        Text("\(test2)")
        Button("Click me ") {
            test2 += 1
        }
    }
}

#Preview {
    StorageTestView()
}
