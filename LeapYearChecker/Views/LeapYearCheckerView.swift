//
//  ContentView.swift
//  LeapYearChecker
//
//  Created by Ainsley Quyen Nguyenho on 2025-01-20.
//

import SwiftUI

struct LeapYearCheckerView: View {
    
    // MARK: Stored properties
    @State private var year = ""
    @State private var result = ""
    @State private var yearsGuessed: [Int] = []
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                // Input field
                TextField("Enter year", text: $year)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding()
                
                // my buttons
                HStack {
                    Button(action: { checkGuess() }) {
                        Text("Check")
                            .padding(9)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    Button(action: { reset() }) {
                        Text("Reset")
                            .padding(9)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                // Result display
                Text(result)
                    .font(.headline)
                    .padding()
                
                // List of guessed years
                List(yearsGuessed, id: \.self) { guessedYear in
                    Text("\(guessedYear)")
                }
                
                Spacer()
            }
            .navigationTitle("Leap Year Checker")
        }
    }
    
    // MARK: Functions
    func checkGuess() {
        // Ensure the year is a valid integer
        guard let yearInt = Int(year) else {
            result = "Please enter a valid year."
            return
        }
        
        // Leap year logic
        if (yearInt % 4 == 0 && yearInt % 100 != 0) || (yearInt % 400 == 0) {
            result = "\(yearInt) is a leap year!"
        } else {
            result = "\(yearInt) is not a leap year."
        }
        
        // Add to guessed years
        yearsGuessed.append(yearInt)
    }
    
    func reset() {
        // Reset everything
        year = ""
        result = ""
        yearsGuessed.removeAll()
    }
}

#Preview {
    LeapYearCheckerView()
}
