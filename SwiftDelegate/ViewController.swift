//
//  ViewController.swift
//  SwiftDelegate
//
//  Created by 云中科技 on 2018/3/5.
//  Copyright © 2018年 云中科技. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let viewController = FirstViewController()
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }

}
extension ViewController : changeViewColorDelegate {
    func changeColor(color: UIColor) {
        self.view.backgroundColor = color
    }
}
