//
//  UIViewController+Alert.swift
//  MVVM+Rx
//
//  Created by  M.Elshaer on 16/2/20.
//  Copyright © 2020 M.Elshaer. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlertMesage(_ message: String){
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
