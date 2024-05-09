//
//  MonkeyView.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct MonkeyView: View {
    var body: some View {
        
        NavigationView {
            List {
                Text("Vietnamese Year of the Monkey")
                    .font(.largeTitle)
                ForEach(monkeyTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Monkey Sign If:")) {
                    Text("Abilty to connect with anyone instantly.")
                    Text("Have a gift for language.")
                }
                ForEach(monkeyCompatibility) {
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
}
