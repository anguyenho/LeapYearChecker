//
//  ContentView.swift
//  LeapYearChecker
//
//  Created by Ainsley Quyen Nguyenho on 2025-01-20.
//

import SwiftUI

struct LeapYearCheckerView: View {
    @State private var year = ""
    var body: some View {
        VStack {
           
            HStack {
                TextField("Enter year", text: $year)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        .padding()
    }
}

#Preview {
    LeapYearCheckerView()
}

