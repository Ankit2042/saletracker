//
//  DatePicker.swift
//  saletracker
//
//  Created by user257152 on 3/2/24.
//

import SwiftUI



#Preview {
    AddProspect()
}



import SwiftUI

struct SelectDate: View {
    @State var selectedDate: Date = Date()
    @Binding var dateString: String // String variable to store the formatted date
    var label: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(label)
                .font(.headline)
                .fontWeight(.medium)

            HStack {
                DatePicker(selection: $selectedDate, displayedComponents: [.date]){
                    Text("Select a date")
                        .font(.headline)
                        .fontWeight(.medium)
                }
                    .datePickerStyle(.compact)
                    
                    .onChange(of: selectedDate) { _ in
                        updateDateString() // Update the string representation of the date
                    }
                
               
            }
            .padding(.vertical, 5)
            .padding(.horizontal,8)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
        .onAppear {
            updateDateString() // Initialize the string representation when the view appears
        }
    }

    private func updateDateString() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        dateString = formatter.string(from: selectedDate)
    }
}


