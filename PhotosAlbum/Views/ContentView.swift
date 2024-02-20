import SwiftUI
struct ContentView: View {
    @ObservedObject var viewModel : UserViewModel
    @State private var newUsername : String = ""
    @State private var newEmail : String = ""
    @State private var newPassword : String = ""
    @AppStorage("Test") var test1 = 0
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Text("Username: \(viewModel.user.username)")
                    Text("Email: \(viewModel.user.email)")
                    Text("Password: \(viewModel.user.password)")
                }
                .padding()
                
                
                TextField("Username", text: $newUsername)
                TextField("Email", text: $newEmail)
                TextField("Password", text: $newPassword)
                
                Button("Press me to update UI") {
                    viewModel.updateEmail(newEmail: self.newEmail)
                    viewModel.updatePassword(newPassword: self.newPassword)
                    viewModel.updateUsername(newUsername: self.newUsername)
                }
                
                
                
                Button("Click me ") {
                    test1 += 1
                }
                
                .padding(.top, 50)
                Text("\(test1)")
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .bottom, endPoint:.top)
                    )
                NavigationLink("-> Go to second View <-", destination: StorageTestView())
                Spacer()
                
                
                
                
                Image(systemName: "heart.fill")
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                    .background(
                        Circle()
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [Color.blue, Color.yellow]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                            .frame(width: 100, height: 100)
                            .shadow(color: .gray, radius: 10)
                            .overlay(alignment: .bottomTrailing, content: {
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 35, height: 36)
                                    .overlay {
                                        Text("5")
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                    }
                                    .shadow(radius: 10)
                            })
                        
                    )
                
                
                
                
                Spacer()
                VStack(alignment: .leading, content: {
                    
                    Text("Vladyslav Maksymov")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 15)
                    
                    
                    Text("Jestem entuzjastą programowania na platformie iOS i mam doświadczenie w tworzeniu aplikacji mobilnych. Chociaż nie posiadam jeszcze dużego doświadczenia zawodowego, jestem gotowy wykonywać proste zadania i uczyć się nowych rzeczy, pracując w waszym zespole.")
                        .font(.caption)
                })
                .padding()
                .padding(.vertical, 10)
                
                .background(
                    Color.white
                        .cornerRadius(10)
                        .shadow(radius: 10, x: 2, y: 8)
                )
                .padding(.horizontal, 20)
            }
            Spacer()
            
            
            
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(email: "", password: "", username: "")
        ContentView(viewModel: UserViewModel(user: user))
    }
}
