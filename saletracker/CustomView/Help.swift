//
//  Help.swift
//  saletracker
//
//  Created by user257152 on 3/1/24.
//

import SwiftUI

struct Help: View {
    var body: some View {
        VStack{
            Text("Hello")
            
            Image("homee")
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.red)
            
            Image(systemName: "house")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.red)
                
        }
    }
}

#Preview {
    Help()
}
