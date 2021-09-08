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
        // アラートを作成
        let title1 = "課題5"
        let message1 = "割られる数を入力してください"
        let alert1 = UIAlertController(title: title1, message: message1, preferredStyle: .alert)
        let title2 = "課題5"
        let message2 = "割る数を入力してください"
        let alert2 = UIAlertController(title: title2, message: message2, preferredStyle: .alert)
        let title3 = "課題5"
        let message3 = "割る数には0を入力しないでください"
        let alert3 = UIAlertController(title: title3, message: message3, preferredStyle: .alert)
        // OKボタンを作成&追加
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert1.addAction(okButton)
        alert2.addAction(okButton)
        alert3.addAction(okButton)
        // アラートを表示
        if textField1.text?.isEmpty == true {
            present(alert1, animated: true, completion: nil)
        } else if textField2.text?.isEmpty == true {
            present(alert2, animated: true, completion: nil)
        } else if textField2.text == "0" {
            present(alert3, animated: true, completion: nil)
        } else {
            let result = String(num1/num2)
            calculateLabel.text = result
        }
    }
}
