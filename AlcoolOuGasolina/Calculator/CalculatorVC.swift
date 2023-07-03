//
//  CalculatorVC.swift
//  AlcoolOuGasolina
//
//  Created by João Pedro on 03/07/23.
//

import UIKit

class CalculatorVC: UIViewController {
    
    var screen: CalculatorScreen?
    var alert: Alert?
    
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        screen?.delegate(delegate: self)
        alert = Alert(controller: self)
    }
    
    func validaTextFields() -> Bool {
        
        guard let ethanolPrice = screen?.ethanolPriceTextField.text else { return false }
        guard let gasPrice = screen?.gasPriceTextField.text else { return false }
        
        if ethanolPrice.isEmpty && gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção!", message: "Informe os Valores do Álcool e da Gasolina")
            return false
        } else if ethanolPrice.isEmpty{
            alert?.showAlertInformation(title: "Atenção!", message: "Informe o VALOR do ÁLCOOL")
        } else if gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção!", message: "Informe o VALOR da GASOLINA")
        }
        return true
    }
}

extension CalculatorVC: CalculatorScreenDelegate {
    
    func tappedCalculateButton() {
        
        if validaTextFields(){
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            
            let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            let gasPrice: Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            
            var vc: ResultVC?
            
            if ethanolPrice / gasPrice > 0.7 {
                print("Melhor utilizar Gasolina")
                vc = ResultVC(bestFuel: .gas)
            } else {
                print("Melhor utilizar Álcool")
                vc = ResultVC(bestFuel: .ethanol)
            }
            navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        }
    }
    
    func tappedBackButton() {
        print(#function)
    }
}
