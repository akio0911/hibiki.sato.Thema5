//
//  ViewController.swift
//  Thema5
//
//  Created by 佐藤響 on 2021/09/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var calculateLabel: UILabel!
    @IBAction private func tapCalculateButton(_ sender: Any) {
        // 入力
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0

        if textField1.text?.isEmpty == true {
            presentAlert(message: "割られる数を入力してください")
        } else if textField2.text?.isEmpty == true {
            presentAlert(message: "割る数を入力してください")
        } else if textField2.text == "0" {
            presentAlert(message: "割る数には0を入力しないでください")
        } else {
            let result = String(num1/num2)
            calculateLabel.text = result
        }
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}
