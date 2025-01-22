//
//  ContentView.swift
//  LeapYearChecker
//
//  Created by Ainsley Quyen Nguyenho on 2025-01-20.
//

import SwiftUI

struct LeapYearCheckerView: View {
    
    // MARK: Stored properties
    // What year the user has stated
    @State private var year = ""
    
    // MARK: Computed properties
    var body: some View {
        VStack {
           
            HStack {
                TextField("Enter year", text: $year)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            .padding()
            HStack {
                Button(action: {}) {
                    Text("Check")
                        .padding(9)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    Button(action: {}) {
                        Text("Reset")
                            .padding(9)
                            .foregroundStyle(.white)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    HStack {
                        // Print the result
                        
                        
                    }
                }
                    
            }
        }
        .padding()
        .navigationTitle("Leap Year Checker")
    }
}

#Preview {
    LeapYearCheckerView()
}

