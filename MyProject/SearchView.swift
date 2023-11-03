import SwiftUI

struct SearchView: View {
    @State private var device = ""
    @State private var model = ""
    
    var body: some View {
        TabView {
            // Tab 1
            NavigationView {
                VStack {
                    Text("Enter the information")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.black)
                    
                    TextField("Device name", text: $device)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("Model number", text: $model)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Find information")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.top)
                    }
                }
                .background(Color.white.ignoresSafeArea()) // Set the background color to white
              
            }
            .tabItem {
                Label("Search", systemImage: "person")
            }
            
            // Tab 2
            Text("Other Page 1")
                .tabItem {
                    Label("First page", systemImage: "1.circle")
                }
            
            // Tab 3
            Text("Other Page 2")
                .tabItem {
                    Label("Second page", systemImage: "2.circle")
                }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
