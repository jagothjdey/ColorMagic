//
//  ColorPickerVC.swift
//  ColorMagic
//
//  Created by Admin on 06.12.18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorBtnWaspressed(sender: UIButton){
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text!)!)
        self.navigationController?.popViewController(animated: true)
    }
}
