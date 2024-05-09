//
//  RoosterView.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct RoosterView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Rooster")
                    .font(.largeTitle)
                ForEach(roosterTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Rooster Sign If:")) {
                    Text("Work better around others than by yourself.")
                    Text("Dream and ponder new ideas.")
                    Text("Stylish and love being the center of attention.")
                    Text("Make sure you are prefect in appearance when you step out in public.")
                }
                ForEach(roosterCompatibility) {
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
