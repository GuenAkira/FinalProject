//
//  HorseView.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct HorseView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Horse")
                    .font(.largeTitle)
                ForEach(horseTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Horse Sign If:")) {
                    Text("Eager to help others.")
                    Text("Decisive and have the ability to choose. When someone ask you where to go for lunch, you make decision for them.")
                    Text("Favorite party guest at the party.")
                    Text("Dress elegantly and have plenty of sex appeal.")
                    Text("Seek social activities where you can make a lot of social contact.")
                    Text("You prefer to be heard rather than listen.")
                }
                ForEach(horseCompatibility) {
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

