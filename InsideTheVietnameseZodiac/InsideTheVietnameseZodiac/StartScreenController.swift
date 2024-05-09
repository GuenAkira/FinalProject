//
//  StartScreenController.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/9/24.
//

import UIKit

class StartScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func StartButton(_ sender: Any) {
        performSegue(withIdentifier: "toListViewController", sender: nil)
    }
    
}
