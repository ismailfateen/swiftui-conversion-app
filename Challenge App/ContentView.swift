//
//  ContentView.swift
//  Challenge App
//
//  Created by Ismail Fateen on 22/06/2022.
//

import SwiftUI

enum ConversionType {
    case time
    case volume
    case length
    case temperature
}

struct ContentView: View {
    @FocusState private var isKeyboardFocused: Bool
    @State private var conversionType = ConversionType.time
    @State private var from = "Meters"
    @State private var to = "Kilometers"
    @State private var value: String = "2.0"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("What's the type of the conversion?", selection: $conversionType) {
                        Text("Volume").tag(ConversionType.volume)
                        Text("Length").tag(ConversionType.length)
                        Text("Time").tag(ConversionType.time)
                        Text("Temperature").tag(ConversionType.temperature)
                    }.pickerStyle(.menu)
                }
                
                Section {
                    Picker("What's the input type?", selection: $from) {
                        ForEach(HelperClass(for: conversionType).getOptions(), id: \.self) { thing in
                            Text(thing).tag(thing)
                        }
                    }.pickerStyle(.inline)
                }
                    Section {
                        Picker("What's the output type?", selection: $to) {
                            ForEach(HelperClass(for: conversionType).getOptions(), id: \.self) { thing in
                                Text(thing).tag(thing)
                            }
                        }.pickerStyle(.inline)
                    }
                Section {
                    TextField("Type to convert: ", text: $value)
                        .keyboardType(.decimalPad)
                        .focused($isKeyboardFocused)
                        .toolbar {
                            ToolbarItemGroup(placement: .keyboard) {
                                Spacer()
                                Button("Done") {
                                    isKeyboardFocused = false
                                }
                            }
                        }
                        .onSubmit {
                            if Double(value) != nil {} else {
                                value = "1.0"
                            }
                        }
                        
                        
                    Text("Your converted number is: \(HelperClass(for: conversionType).convert(from: from, to: to, value: Double(value) ?? 0.0).formatted())")
                    
                }
            }
            .navigationTitle("Conversion App")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
