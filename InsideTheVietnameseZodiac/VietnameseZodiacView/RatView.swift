//
//  RatView.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/2/24.
//

import Foundation
import SwiftUI
import UIKit

struct RatView: View {
    var body: some View {
            List {
                Text("Vietnamese Year of the Rat")
                    .font(.largeTitle)
                ForEach(ratTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Rat Sign If:")) {
                    Text("Use your charm and wit to hide your private life.")
                    Text("People have told you that you are intelligent and your curious and analytical.")
                    Text("A natural in social situations. However, you prefer to socialize with close friends and family members instead of a room full of strangers.")
                    Text("Love to teach and sharing your knowledge with others.")
                }
                ForEach(ratCompatibility) {
                    compatibility in
                    Section(header: Text(compatibility.title)) {
                        ForEach(compatibility.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
            }.background(Color.red)
        }
    }





