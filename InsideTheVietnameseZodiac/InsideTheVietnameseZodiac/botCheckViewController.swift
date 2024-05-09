//
//  botCheckViewController.swift
//  InsideTheVietnameseZodiac
//
//  Created by  on 5/7/24.
//

import UIKit
import LocalAuthentication

class botCheckViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        let authContext = LAContext()
        var error : NSError?
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Are you human or bot?") { (success, error) in
                if success == true {
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "toListController", sender: nil)
                    }
                } else {
                    DispatchQueue.main.async {
                        let alert = UIAlertController(title: "Not Access", message: "You're not able to use this app.", preferredStyle: UIAlertController.Style.alert)
                        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                            print ("button clicked")
                        }
                        alert.addAction(okButton)
                        self.present(alert, animated: true, completion: nil)
                    }
                }
                
            }
        }
    }
}

