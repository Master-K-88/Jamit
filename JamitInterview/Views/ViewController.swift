//
//  ViewController.swift
//  JamitInterview
//
//  Created by Prof K on 9/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginConfirmed()
        passwordTextField.rightView = UIImageView(image: UIImage(named: "eye"))
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        let email = emailTextField.text
        let password = passwordTextField.text
        viewModel.login(with: email, and: password)
    }
    
    @IBAction func skipBtnTapped(_ sender: Any) {
        viewModel.loginConfirmed()
    }
    
    func loginConfirmed() {
        viewModel.login = { [weak self] text in
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let newController = storyboard.instantiateViewController(withIdentifier: "AudioViewController") as? AudioViewController else {
                return
            }
            newController.modalPresentationStyle = .fullScreen
            newController.modalTransitionStyle = .flipHorizontal
            self?.present(newController, animated: true)
        }
    }
    
}

