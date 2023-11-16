import SwiftUI

// User struct conforms to Codable to be encoded to JSON
struct User: Codable {
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
    var password: String
}

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.8)
                    .foregroundColor(.white).opacity(0.15)
                Circle()
                    .scale(1.5)
                    .foregroundColor(.white)
                    .navigationBarHidden(true)

                VStack {
                    Text("Registration")
                        .font(.largeTitle)
                        .bold()
                        .padding()

                    // Your text fields for input
                    TextField("First name", text: $firstName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    TextField("Last name", text: $lastName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    TextField("Phone Number", text: $phoneNumber)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)

                    // Registration button
                    Button("Registration") {
                        let user = User(firstName: firstName,
                                        lastName: lastName,
                                        email: email,
                                        phoneNumber: phoneNumber,
                                        password: password)
                        if let userData = try? JSONEncoder().encode(user) {
                            postUser(userData: userData)
                        }
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top)
                }
            }
        }
    }

    // Function to post user data
    func postUser(userData: Data) {
        guard let url = URL(string: "http://localhost:1000/api/register") else {
            // Handle the case when the URL is invalid
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = userData
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedUser = try? JSONDecoder().decode(User.self, from: data) {
                    // Handle the response, you can access decodedUser here
                    print(decodedUser)
                }
            } else if let error = error {
                // Handle the error
                print(error.localizedDescription)
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

