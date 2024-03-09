//
//  PersonDetailsView.swift
//  saletracker
//
//  Created by user257152 on 3/4/24.
//

import SwiftUI

struct PersonDetailsView: View {
    var name:String
    var body: some View {
        VStack(spacing: 20){
            HStack{
                Text(name)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("Active")
                    .padding(.vertical,5)
                    .padding(.horizontal,20)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .background(){
                        Capsule()
                            .fill(Color.theme.buttonColor)
                    }
                
                
                Text("H")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding(8)
                    .background(){
                        Circle()
                            .fill(Color.orange)
                    }
                Spacer()
                Text("Close")
                    .padding(7)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .background(){
                        Capsule()
                            .fill(Color.gray)
                    }
            }
            
            HStack{
                Text("VAT Registration")
                    .font(.caption)
                
                Text("|")
                    
                
                Text("Partner")
                    .font(.caption)
                
                Text("|")
                
                Text("20 Nov 2023")
                    .font(.caption)
                
                Spacer()
            }
            
            HStack{
                HStack{
                    
                    VStack {
                        HStack{
                            Text("Current Stage")
                                .font(.caption)
                            
                            Text("Schedule A Meeting")
                                .font(.caption)
                                .foregroundStyle(.white)
                                .padding(.vertical,7)
                                .padding(.horizontal,40)
                                .background(){
                                    Capsule()
                                        .fill(
                                            Color.orange
                                        )
                                }
                            
                            Spacer()
                        }
                        HStack{
                            Text("Due Date")
                                .font(.caption)
                            
                            Text("16 Nov 2023")
                                .font(.caption)
                            
                            
                            Text("!")
                                .foregroundStyle(.white)
                                .padding(10)
                                .background(){
                                    Circle()
                                        .fill(
                                            Color.red
                                        )
                                }
                            
                            Spacer()
                        }
                    }
                    
                    
                    Divider()
                        .frame(height: 90)
                    
                }
            }
            
            Spacer()
        }
        .padding()
        .padding()
    }
}

#Preview {
    PersonDetailsView(name: "Sumit Sahani")
}
