//
//  FirstViewController.swift
//  SwiftDelegate
//
//  Created by 云中科技 on 2018/3/5.
//  Copyright © 2018年 云中科技. All rights reserved.
//

protocol changeViewColorDelegate : NSObjectProtocol {
    func changeColor(color:UIColor)
}

import UIKit

class FirstViewController: UIViewController {
    
    //weak var delegate : changeViewColorDelegate?

    var delegate : changeViewColorDelegate?
    
    deinit {
        let name = NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
        debugPrint("0000000000000000000000000",name)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegate?.changeColor(color: UIColor.red)
        self.dismiss(animated:true , completion: nil)
    }
}
