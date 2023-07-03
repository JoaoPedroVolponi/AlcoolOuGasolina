//
//  ViewController.swift
//  AlcoolOuGasolina
//
//  Created by João Pedro on 01/07/23.
//

import UIKit

class HomeVC: UIViewController {

    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  view.backgroundColor = .red
    }


}

