//
//  MainView.swift
//  saletracker
//
//  Created by user257152 on 3/5/24.
//

import SwiftUI

struct MainView: View {
    @State var currentTab: Tab = .Home
    @State var showSidebar: Bool = false
    var body: some View {
        ResponsiveView {props in
            HStack(spacing: 0){
//                MARK: Side Bar
//                MARK: Displaying Only For ipad and not on split Mode
                
                if props.isiPad {
                    SideBar(props: props, currentTab: $currentTab)
                }
                
                DashBoard(props: props, showSideBar: $showSidebar)
                
            }
            .overlay {
                ZStack(alignment: .leading){
                    Color.black
                        .opacity(showSidebar ? 0.35 : 0)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation(.easeInOut){showSidebar = false}
                        }
                    
                    if showSidebar{
                        SideBar(props: props, currentTab: $currentTab)
                            .transition(.move(edge: .leading))
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
