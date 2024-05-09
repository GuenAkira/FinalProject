//
//  GoatView.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct GoatView: View {
    var body: some View {
        
            List {
                Text("Vietnamese Year of the Goat")
                    .font(.largeTitle)
                ForEach(goatTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Goat Sign If:")) {
                    Text("Have an eye for art and fashion.")
                    Text("Seek approval from others on what you do.")
                    Text("Never want to wrong people and if you do you try your best to mediate and rectify things.")
                }
                ForEach(goatCompatibility) {
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
