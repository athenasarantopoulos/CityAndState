//
//  City.swift
//  CityAndState
//
//  Created by Athena Fernandes Sarantôpoulos on 19/07/21.
//

import SwiftUI

struct CityView: View {
    @State private var showStateView = false
    var city: String
    
    
    var body: some View {
      
                ZStack {
                    Image("mg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                    VStack{
                        Text("\(city)")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)

                        Text("Terra da Floresta")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)

                        Button(action: {
                            self.showStateView.toggle()
                        }) {
                            
                            Text("IR PARA MEU ESTADO")
                                
                                
                                .padding()
                                .background(Color("Purple"))
                                .foregroundColor(Color.white)
                        }
                        .sheet(isPresented: $showStateView) {
                            StateView()
                        }
                        
                    
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.5))
                    
                    
                }
            
            
            
        }
    }


