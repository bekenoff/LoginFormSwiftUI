//
//  ContentView.swift
//  MyProject
//
//  Created by Nursultan on 07.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    var colors = ["red", "white", "blue"]
    
    @State private var click = false
    @State private var selectedColor = 0
    @State private var tggl = false
    @State private var username = ""
    @State private var password = ""
    @State private var number = ""
    
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
                    
                    
                    TextField("Email", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("First name", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    TextField("Last name", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("Number", text: $number)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    
                    
                    Button("Registration") {
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top)
                    
                    
                    
                        
                        
                    Button(action: {
                        print("Floating Button Click")
                    }, label: {
                        NavigationLink(destination: ContentView()) {
                             Text("Do you have an account?")
                         }
                    })
                    
                }
            }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
