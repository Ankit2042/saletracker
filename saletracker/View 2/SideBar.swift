//
//  SideBar.swift
//  saletracker
//
//  Created by user257152 on 3/5/24.
//

import SwiftUI

struct SideBar: View {
    var props: Properties
    @Binding var currentTab: Tab
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                Label(
                    title: { Text("iCloud")
                        .fontWeight(.semibold)},
                    icon: {
                        Image("pf4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    }
                )
                .padding(.vertical,20)
                .padding(.bottom,15)
                
                Rectangle()
                    .fill(.white.opacity(0.1))
                    .frame(height: 1)
                    .padding(.horizontal, -15)
                
                ForEach(Tab.allCases, id: \.rawValue){tab in
                    Button {
                        withAnimation(.easeInOut){currentTab = tab}
                            
                    } label: {
                        HStack(spacing: 15){
                            Image(tab.rawValue)
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                            
                            Text(tab.rawValue)
                                .fontWeight(.semibold)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(currentTab == tab ? .white : .white.opacity(0.5))
                    
                }
                .padding(.top)
            }
            .padding(15)
        }
        .frame(width: 240)
        .background(){
            Color.gray
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
