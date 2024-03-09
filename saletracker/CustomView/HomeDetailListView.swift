//
//  HomeDetailListView.swift
//  saletracker
//
//  Created by user257152 on 3/2/24.
//

import SwiftUI

struct HomeDetailListView: View {
    var name: String
    var active: Int
    var won: Int
    var lost: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text(name)
                .font(.headline)
            
            HStack{
                Text("Active: \(active)")
                    .foregroundStyle(.blue)
                Text("Won: \(won)")
                    .foregroundStyle(.gray)
                Text("Lost: \(lost)")
                    .foregroundStyle(.gray)
            }
        }
        .padding(30)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(){
            RoundedRectangle(cornerRadius: 15,style: .continuous)
                .fill(
                    Color.white
                )
                .shadow(radius: 5)
        }
    }
}

#Preview {
    HomeDetailListView(name: "Sumit", active: 2, won: 0, lost: 0)
}
