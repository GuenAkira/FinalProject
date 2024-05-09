//
//  PigView.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct PigView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Pig")
                    .font(.largeTitle)
                ForEach(pigTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Pig Sign If:")) {
                    Text("Have difficulty saying no to others")
                    Text("Avoid confrontations.")
                    Text("You forgive easily and take the blunt of being blamed for things you didn't do.")
                }
                ForEach(pigCompatibility) {
                    compatibility in
                    Section(header: Text(compatibility.title)) {
                        ForEach(compatibility.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
            }
        }
    }
    
    

