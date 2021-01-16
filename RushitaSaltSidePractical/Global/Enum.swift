//
//  Enum.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita Panchal on 16/01/21.
//  Copyright © 2021 Rushita Panchal. All rights reserved.
//

import UIKit

//MARK:- FontSize
enum FontSize : Float {
    case Fourteen = 14.0
    case Fifteen = 15.0
    case Sixteen = 16.0
}

//MARK:- AppFont
enum AppFont : String {
    case Regular = "SegoeUI"
    case Bold = "SegoeUI-Bold"
}

//MARK:- ControllerIdentifier
enum ControllerIdentifier : String {
    case ListingVC = "ListingVC"
    case ListDetailVC = "ListDetailVC"
}


//MARK:- Storyboards
enum Storyboards : String {
    case Listing = "Listing"
}
