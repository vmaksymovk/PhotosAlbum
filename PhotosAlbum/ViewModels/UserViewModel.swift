import Foundation
import SwiftUI

class UserViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
    
    func updateUsername(newUsername : String){
        user.username = newUsername
    }
    func updateEmail(newEmail: String){
        user.email = newEmail
    }
    func updatePassword(newPassword : String){
        user.password = newPassword
    }
    
    
}
