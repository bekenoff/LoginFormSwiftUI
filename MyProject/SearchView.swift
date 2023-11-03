
//
//  LoginView.swift
//  LoginForm
//
//  Created by Nursultan on 27.06.2023.
//

import SwiftUI




struct SearchView: View {
    
    
    @State private var click = false
    @State private var selectedColor = 0
    @State private var tggl = false
    @State private var username = ""
    @State private var password = ""
    @State private var device = ""
    @State private var model = ""
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.4)
                    .foregroundColor(.white).opacity(0.15)
                
                Circle()
                    .scale(1.1)
                    .foregroundColor(.white)
                
                
                    .navigationBarHidden(true)
                
                
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
                        
                    
                    Button("Find information") {
                        
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
                             Text("How it works?")
                         }
                    })
                    
                }
            }
        }
    }
        
    }


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
