//
//  ResultVC.swift
//  AlcoolOuGasolina
//
//  Created by João Pedro on 03/07/23.
//

import UIKit

class ResultVC: UIViewController {

    var screen: ResultScreen?
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
