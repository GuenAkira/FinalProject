//
//  DogView.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct DogView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Dog")
                    .font(.largeTitle)
                ForEach(dogTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Dog Sign If:")) {
                    Text("Never turn back on friends.")
                    Text("Have a strong sense of right and wrong.")
                    Text("Prefer to keep a tight circle.")
                    Text("Large social gatherings make you uncomfortable.")
                }
                ForEach(dogCompatibility) {
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

