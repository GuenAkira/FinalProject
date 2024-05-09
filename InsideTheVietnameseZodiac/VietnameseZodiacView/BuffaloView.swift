//
//  BuffaloView.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct BuffaloView: View {
    var body: some View {
            List {
                Text( "Vietnamese Year of the Buffalo")
                    .font(.largeTitle)
                ForEach(buffaloTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Rat Sign If:")) {
                    Text("Devoted to your family and/or children.")
                    Text("Don't complain you just deal with what ever situation that comes your way good or bad.")
                    Text("A great speaker and make superb speeches.")
                    Text("Determined to work hard to make your dreams come true even if you have walls in your way.")
                }
                ForEach(buffaloCompatibility) {
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

