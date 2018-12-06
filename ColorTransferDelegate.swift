//
//  ColorTransferDelegate.swift
//  ColorMagic
//
//  Created by Admin on 06.12.18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color : UIColor, withName colorName: String)
}
