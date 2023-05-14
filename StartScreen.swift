//
//StartScreen.swift
//AgentCipher
//
//Created by Ved Pahune on 18/04/23.


import Foundation
import SwiftUI

struct StartScreen: View {
    var body: some View {
        NavigationView {
                
                ZStack {
                    Color(.init(red: 0.05, green: 0.07, blue: 0.09, alpha: 1.00)).edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Spacer()
                        Text("Agent Cipher")
                            .font(.system(size: 100, weight: .light, design: .serif))
                            .foregroundColor(.cyan)
                            .padding()
                        
                        Text("An interactive playground app to teach you about cryptographic functionality such as encryption and hashing using CryptoKit").font(.system(size: 20, weight: .light, design: .serif))
                            .foregroundColor(.cyan)
                            .padding(.horizontal, 80)
                        Spacer()
                        NavigationLink(destination: IntroScreen()) {
                            Text("Start")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 15, leading: 45, bottom: 15, trailing: 45))
                                .background(Color.blue)
                                .cornerRadius(10)
                            
                        }
                        Spacer()
                    }
                    
                    
                }
                .navigationTitle("Back")
                .navigationBarHidden(true)
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            
            
        }
    
    
    }
    

