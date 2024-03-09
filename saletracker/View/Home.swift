//
//  Home.swift
//  saletracker
//
//  Created by user257152 on 2/28/24.
//

import SwiftUI

struct Home: View {
    @Binding var showMenu: Bool 
    let homeModelData = Homedata.homeModeldata
    var body: some View {
        ZStack {
            
            VStack{
                
                VStack(spacing: 0){
                    HStack{
                        Button(action: {
                            withAnimation(.easeInOut){showMenu.toggle()}
                        }, label: {
                            Image(systemName: "line.3.horizontal")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(.primary)
                                
                        })
                        Spacer()
                        
                        Text("Home")
                            .font(.headline)
                        
                        Spacer()
                        
                        
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    
                    
                    Divider()
                    
                    List(homeModelData, id: \.self) { data in
                        NavigationLink(destination: PersonDetailsView(name: data.name)) {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Name: \(data.name)")
                                    .font(.headline)
                                
                                HStack{
                                    Text("Active: \(data.active)")
                                        .foregroundStyle(.blue)
                                    Text("Won: \(data.won)")
                                        .foregroundStyle(.gray)
                                    Text("Lost: \(data.lost)")
                                        .foregroundStyle(.gray)
                                }
                                
                            }
                        }
                    }
                    .listStyle(.plain)
                  

                    
                    
                }
                
                Spacer()
            }
        }
        
        
    }
    
}

#Preview {
    BottomBar()
}


