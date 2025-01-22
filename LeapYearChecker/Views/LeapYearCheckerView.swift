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
    
    // Result from guess
    @State private var result = ""
    
    // Years guessed
    @State private var yearsGuessed: [Int] = []
    
    // Calculation things
    
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    TextField("Enter year", text: $year)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                .padding()
                HStack {
                    Button(action: {checkGuess()}) {
                        Text("Check")
                            .padding(9)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        Button(action: {reset()}) {
                            Text("Reset")
                                .padding(9)
                                .foregroundStyle(.white)
                                .background(Color.blue)
                        }
                    }
                    HStack {
                        
                    }
                }
                .padding()
                .navigationTitle("Leap Year Checker")
            }
        }
    }
    
    // MARK: Functions
    func checkGuess() {
        if year % 400 == 0 {
        } print("\(year) is a leap year")
    }
    
    func reset() {
        // Reset everything
        yearsGuessed.removeAll()
    }
    
    #Preview {
        LeapYearCheckerView()
    }
}
