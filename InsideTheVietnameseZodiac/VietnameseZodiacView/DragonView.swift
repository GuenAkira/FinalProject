//
//  DragonView.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct DragonView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Dragon")
                    .font(.largeTitle)
                ForEach(dragonTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Dragon Sign If:")) {
                    Text("Love the outdoors.")
                    Text("Have good intuition for life and see all it has to offer.")
                    Text("Work from night to morning to get work done.")
                    Text("Leap over any wall that is stopping you from getting to your goal.")
                    Text("Aggressive when it is necessary.")
                    Text("You love to be busy and never like to be idle.")
                }
                ForEach(dragonCompatibility) {
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
