//
//  CatView.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/3/24.
//

import Foundation
import SwiftUI
import UIKit

struct CatView: View {
    var body: some View {
        

            List {
                Text("Vietnamese Year of the Cat")
                    .font(.largeTitle)
                ForEach(catTraits) {
                    traits in
                    Section(header: Text(traits.title)) {
                        ForEach(traits.element) {
                            Element in
                            Text(Element.name)
                        }
                    }
                }
                Section(header: Text("You Know You're a Cat Sign If:")) {
                    Text("Feel comfortable in social situations and being alone. You have the ability to alternative between the two.")
                    Text("Never want to settle down or be committed to one person or one thing.")
                    Text("Listen to yourself and don't care what other think.")
                    Text("You are kind and helpful.")
                }
                ForEach(catCompatibility) {
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
