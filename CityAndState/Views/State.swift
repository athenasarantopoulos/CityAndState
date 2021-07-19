//
//  State.swift
//  CityAndState
//
//  Created by Athena Fernandes Sarantôpoulos on 16/07/21.
//

import SwiftUI

struct StateView: View {
    
    @State private var showCityView = false
    
    var cityName: String = "Florestal"
    
    var body: some View {
      
            ZStack {
                
                Image("mg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
                VStack{
                    Text("Minas Gerais")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)

                    Text("Terra do Pão de Queijo")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)

                    Button(action: {
                        self.showCityView.toggle()
                    }){
                        Text("IR PARA MINHA CIDADE")
                            .padding()
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .background(Color("Purple"))
                    }
                    .sheet(isPresented: $showCityView) {
                        CityView(city: cityName)
                    }
                    
                
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.opacity(0.5))
                
                
            }
        
        }
        
    
}

struct State_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
