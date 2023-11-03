
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
                
                    .navigationBarHidden(true)
                Circle()
                    .scale(1.8)
                    .foregroundColor(.white).opacity(0.1)
                
                Circle()
                    .scale(1.3)
                    .foregroundColor(.white).opacity(0.2)
                
                
                VStack {
                    Text("Enter the information")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.black)
                    
                    
            
                    
                    TextField("Device name", text: $device)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    
                    
                    TextField("Model number", text: $model)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        
                        
                    
                    Button("Find information") {
                        
                    }
                    .foregroundColor(.black)
                    .frame(width: 300, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.top)
                    
                    Button(action: {
                        print("Floating Button Click")
                    }, label: {
                        NavigationLink(destination: ContentView()) {
                             Text("How do you get the name of the device right?")
                                .foregroundColor(.black)
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
