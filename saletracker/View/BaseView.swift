//
//  BaseView.swift
//  saletracker
//
//  Created by user257152 on 2/29/24.
//

import SwiftUI

struct BaseView: View {
    @State var showMenu: Bool = false
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @State var currentTab = "Home"
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    @GestureState var gestureoffset: CGFloat = 0
    var body: some View {
        let sideBarwidth = getRect().width - 90
        ZStack{
            HStack(spacing: 0){
                SlideMenu(showMenu: $showMenu)
                
                
                VStack(spacing: 0){
                    TabView(selection: $currentTab){
                        Home(showMenu: $showMenu)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Home")
                        
                        Profile()
                            .tag("Profile")
                            
                        
                        Text("Search")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Search")
                        
                        AddProspect()
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Add Prospect")
                    }
                    
//                    MARK: Custom Tab Bar
                    VStack(spacing: 0){
                        Divider()
                        
                        HStack(spacing: 0){
                            
    //                    MARK: Tabbar Buttton
                            
                            TabButton(image: "Home")
                            TabButton(image: "Profile")
                            TabButton(image: "Search")
                            TabButton(image: "Add Prospect")
                            
                            
                        }
                        .padding([.top],15)
                    }
                    
                }
                .frame(width: getRect().width)
                .overlay(
                    Rectangle()
                        .fill(
                            Color.primary
                                .opacity(Double((offset / sideBarwidth) / 5))
                                
                        )
                        .ignoresSafeArea(.container, edges: .vertical)
                        .onTapGesture {
                            withAnimation{
                                showMenu.toggle()
                            }
                        }
                )
            }
            .frame(width:getRect().width + sideBarwidth)
            .offset(x: -sideBarwidth / 2)
            .offset(x: offset > 0 ? offset : 0)
            .gesture(
                DragGesture()
                    .updating($gestureoffset, body: { value, out, _ in
                        out = value.translation.width
                        
                    })
                    .onEnded(onEnd(value: ))
            )
            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
        }
        .animation(.easeOut, value: offset == 0)
        .onChange(of: showMenu, perform: { newValue in
            if showMenu && offset == 0{
                offset = sideBarwidth
                lastStoredOffset = offset
            }
            if !showMenu && offset == sideBarwidth{
                offset = 0
                lastStoredOffset = 0
            }
        })
        .onChange(of: gestureoffset) { newValue in
            onChange()
        }
    }
    
    func onChange(){
        let sideBarwidth = getRect().width - 90
        
        offset = (gestureoffset != 0) ? (gestureoffset + lastStoredOffset < sideBarwidth ? gestureoffset + lastStoredOffset : offset) : offset
    }
    
    func onEnd(value: DragGesture.Value){
        let sideBarwidth = getRect().width - 90
        
        let translation = value.translation.width
        
        withAnimation{
            if translation > 0{
                if translation > (sideBarwidth / 2){
                    offset = sideBarwidth
                    showMenu = true
                }else{
                    
                    if offset == sideBarwidth{
                        return
                    }
                    
                    offset = 0
                    showMenu = false
                }
            }else{
                if -translation > (sideBarwidth / 2){
                    offset = 0
                    showMenu = false
                }else{
                    
                    if offset == 0 || showMenu{
                        return
                    }
                    
                    offset = sideBarwidth
                    showMenu = true
                }
            }
            
        }
        
        
//        storing last offset........
        lastStoredOffset = offset
    }
    
//    MARK: TabButton
    @ViewBuilder
    func TabButton(image: String)-> some View {
        
        Button(action: {
            withAnimation(){currentTab = image}
        }, label: {
            VStack(spacing: 0){
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(currentTab == image ? .primary : .gray)
                    .frame(maxWidth: .infinity)
                
                Text(image)
                    .font(.caption)
                    .lineLimit(1)
                    .foregroundColor(currentTab == image ? .primary : .gray)
            }
            
        })
    }
    
    
}

#Preview {
    BaseView()
}



