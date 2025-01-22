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
                                    }
                                }
                HStack {
                    // Show the users input
                    Text("History")
                        .font(.title2)
                    ScrollView {
                        VStack(spacing: 5) {
                            ForEach(yearsGuessed, id: \.self) { year in
                                Text("\(year)")
                                Divider()
                            }
                            
                            
                            
                            
                            
                        }
                        HStack {
                            // Print result
                            if(year % 400 == 0, (year % 4 == 0, year % 100 == 0)):
                                    print("year is a leap year")
                                else:
                                    print("year is not a leap year")
                        }
                    }
                    
                }
            }
            .padding()
            .navigationTitle("Leap Year Checker")
        }
    }
}

// MARK: Functions
func checkYear(_ year: Int) -> Bool {
    if year % 400 == 0 {
        return true
    } else if year % 100 == 0 {
        return false
    } else if year % 4 == 0 {
        return true
    } else {
        return false
    }
}


#Preview {
    LeapYearCheckerView()
}

