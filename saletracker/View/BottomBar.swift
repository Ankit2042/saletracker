//
//  BottomBar.swift
//  saletracker
//
//  Created by user257152 on 3/6/24.
//

import SwiftUI

struct BottomBar: View {
    @State var showMenu: Bool = false
    @State var selection = 1
    var body: some View {
        ZStack(alignment: .leading) {
          
                TabView(selection: $selection) {
                    Home(showMenu: $showMenu)
                        .tabItem {
                            
                            Label("Home", systemImage: "house")
                        }
                    Profile()
                        .tabItem {
                            
                            
                            Label("Profile", systemImage: "person")
                        }
                    Text("Search")
                        .tabItem {
                            
                            Label("Search", systemImage: "magnifyingglass")
                        }
                    AddProspect()
                        .tabItem {
                            
                            Label("Add Prospect", systemImage: "plus.circle")
                        }
                }
                
            if showMenu {
                ZStack{
                    Color.primary
                        .opacity(0.09)
                        .ignoresSafeArea()
                }
                .onTapGesture{
                    showMenu.toggle()
                }
                
            }
           
            
           SlideMenu(showMenu: $showMenu)
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300)
                .navigationBarBackButtonHidden()
                
                
        }
    }
}

#Preview {
    BottomBar()
}

