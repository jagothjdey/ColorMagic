//
//  ViewController.swift
//  ColorMagic
//
//  Created by Admin on 06.12.18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorLabel.text = colorName
    }
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC"{
            guard let colorPickerVC = segue.destination as?
                ColorPickerVC else { return }
            colorPickerVC.delegate = self
            
        }
    }


}

