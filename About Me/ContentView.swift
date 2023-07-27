//
//  ContentView.swift
//  About Me
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var info: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 10){
                Text("Tiana")
                    .font(.largeTitle)
                Text("Chi")
                    .font(.title2)
                
                Image("spf")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .cornerRadius(15)
                
                Button("Show more") {
                    info.toggle()

                        }

                .font(.title2)
                
                Group {
                    if info == true  {
                        VStack(alignment: .center, spacing: 10) {
                            Text("Chi was born in Greenwich, CT but lives in Scarsdale, NY. She is a Crocs ENTHUSIAST!!! She makes sure to reapply her sunscreen every 2 hours. Her favorite foods are mochi, siracha-mayo shrimp, shaved ice, and chi(ese) ;) ")
                        }
                        .padding()
        
                        
                    } else {
                        VStack {
                            Text("  ")
                        }
                    }
                }
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                
                
                
            }
        
        
    
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

