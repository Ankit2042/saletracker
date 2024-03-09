//
//  DashBoard.swift
//  saletracker
//
//  Created by user257152 on 3/6/24.
//

import SwiftUI

struct DashBoard: View {
    var props: Properties
    @Binding var showSideBar: Bool
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15){
//                MARK: Top Nav Bar
                TopNavBar()
                
                
                        
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(){
            Color.blue.opacity(0.2)
                .ignoresSafeArea()
        }
    }
    @ViewBuilder
    func TopNavBar()-> some View{
        HStack(spacing: 15){
            if props.isiPad {
                Text("Dashboard")
                    .font(.title3.bold())
            }else{
                Button(action: {
                    withAnimation(.easeInOut){showSideBar = true}
                }, label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.title2)
                        .foregroundStyle(.white)
                })
            }
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
