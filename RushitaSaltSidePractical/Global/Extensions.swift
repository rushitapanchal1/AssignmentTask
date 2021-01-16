//
//  Extensions.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita Panchal on 16/01/21.
//  Copyright © 2021 Rushita Panchal. All rights reserved.
//

import UIKit
import Foundation

extension UILabel {
    func setUpLabel(title : String, titleColor : UIColor, titleFont : UIFont? = nil) {
        self.textColor = titleColor
        self.font = titleFont
        self.text = title
        self.backgroundColor = .clear
    }
}

extension UITableView {
    func registerTablViewCell(cellIdentifier : String)  {
           let nib = UINib(nibName: cellIdentifier, bundle: nil)
           self.register(nib, forCellReuseIdentifier: cellIdentifier)
           self.tableFooterView = UIView()
           self.showsVerticalScrollIndicator = false
    }
}
