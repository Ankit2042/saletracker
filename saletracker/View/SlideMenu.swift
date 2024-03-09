//
//  SlideMenu.swift
//  saletracker
//
//  Created by user257152 on 2/29/24.
//

import SwiftUI

struct SlideMenu: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            VStack(alignment: .leading, spacing: 14){
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Text("hii Test")
                    .font(.title2.bold())
               
            }
            .padding(.horizontal)
            .padding(.leading)
            
            
            
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    VStack(alignment: .leading, spacing: 45){
                        TabButton(title: "Home", image: "house.fill", destination: Text("Home View"))
                        
                        TabButton(title: "Add Product", image: "plus.rectangle.fill.on.folder.fill", destination: AddProduct())
                        TabButton(title: "Add Team Member", image: "person.fill.badge.plus", destination: AddTeamMember())
                        TabButton(title: "Add Contact", image: "book.pages.fill", destination: AddContact())
                        TabButton(title: "Add Prospect", image: "person.crop.circle.badge.checkmark.fill", destination: AddProspect())
                        TabButton(title: "Logout", image: "arrow.left.circle", destination: Login())
                    }
                    .padding()
                    .padding(.leading)
                    .padding(.top,35)
                   
                    
                    
                }
            }
        }
        .background(
            Color.theme.BlackWhite
                .ignoresSafeArea()
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    func TabButton<Destination: View>(title: String, image: String, destination: Destination) -> some View {
        NavigationLink(destination: destination) {
            HStack(spacing: 13) {
                Image(systemName: image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 22, height: 22)
                
                Text(title)
            }
            .foregroundColor(.primary)
            .frame(width: 250, alignment: .leading)
        }
    }
}

#Preview {
    BottomBar()
}


extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
