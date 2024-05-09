//
//  SnakeView.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct SnakeView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Snake")
                    .font(.largeTitle)
                ForEach(snakeTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Snake Sign If:")) {
                    Text("Quiet and calm in appearance.")
                    Text("Passionate and intense internally.")
                }
                ForEach(snakeCompatibility) {
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
