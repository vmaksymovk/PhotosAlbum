//
//  PhotosAlbumApp.swift
//  PhotosAlbum
//
//  Created by Влад on 12/13/23.
//

import SwiftUI

@main
struct PhotosAlbumApp: App {
    var body: some Scene {
        WindowGroup {
            let user = User(email: "", password: "", username: "")
            ContentView(viewModel: UserViewModel(user: user))
        }
    }
}
