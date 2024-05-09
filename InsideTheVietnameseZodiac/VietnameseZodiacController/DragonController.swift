//
//  DragonController.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 4/23/24.
//

import UIKit
import SwiftUI

class DragonController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 0, y:0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Press for Information", for: .normal)
        button.backgroundColor = .systemRed
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        let viewController = UIHostingController(rootView: DragonView())
        show(viewController, sender: true)
    }
}
