//
//  RadioButtonView.swift
//  saletracker
//
//  Created by user257152 on 3/2/24.
//

import SwiftUI


struct RadioButtonView: View {
   
    var Greeting: String
   
    @Binding var selectGreetings: String

    var body: some View {
        VStack{
            
            Button(action: {
                
                selectGreetings = Greeting
            }) {
                HStack {
                    Image(systemName: selectGreetings == Greeting ? "largecircle.fill.circle" : "circle")
                        .foregroundColor(.primary)
                    Text(Greeting)
                        .foregroundStyle(.primary)
                }
                .tint(.primary)
            }
        }
       
    }
}

#Preview {
    AddProspect()
}
