//
//  Functions.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita Panchal on 16/01/21.
//  Copyright © 2021 Rushita Panchal. All rights reserved.
//

import UIKit
import SVProgressHUD

func GetAppFont(FontType : AppFont,FontSize : FontSize) -> UIFont{
    guard let font = UIFont(name: FontType.rawValue, size: CGFloat(FontSize.rawValue)) else {
        print("Font with provided font name not found!")
        return UIFont.systemFont(ofSize: CGFloat(FontSize.rawValue))
    }
    return font
}

func GetViewController(StoryBoard : Storyboards,Identifier : ControllerIdentifier) ->UIViewController?{
    return UIStoryboard(name: StoryBoard.rawValue, bundle: nil).instantiateViewController(withIdentifier: Identifier.rawValue)
}

func showLoaderView() {
    SVProgressHUD.setForegroundColor(.black)
    SVProgressHUD.setRingThickness(5.0)
    SVProgressHUD.setDefaultMaskType(.clear)
    SVProgressHUD.show()
}

func hideLoader() {
    SVProgressHUD.dismiss()
}
