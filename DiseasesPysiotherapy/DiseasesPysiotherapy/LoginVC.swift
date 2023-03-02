//
//  LoginVC.swift
//  DiseasesPysiotherapy
//
//  Created by Fernanda Perovano on 02/03/23.
//

import UIKit

class LoginVC: UIViewController {

    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

