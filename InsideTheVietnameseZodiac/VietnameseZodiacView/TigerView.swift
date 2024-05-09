//
//  TigerView.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct TigerView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Tiger")
                    .font(.largeTitle)
                ForEach(tigerTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Tiger Sign If:")) {
                    Text("Devoted to your family and/or children.")
                    Text("Don't complain you just deal with it.")
                    Text("Great speaker.")
                    Text("Determined and always work hard to make your dreams come true.")
                }
                ForEach(tigerCompatibility) {
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

