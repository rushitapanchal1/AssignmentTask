//
//  ListDetailVC.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita Panchal on 16/01/21.
//  Copyright © 2021 Rushita Panchal. All rights reserved.
//

import UIKit

class ListDetailVC: UIViewController {

    @IBOutlet weak var labelHeader: UILabel!
    @IBOutlet weak var imageViewDetail: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    
    var modelData : DataModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTheme()
        self.setData()
        // Do any additional setup after loading the view.
    }
    

    //MARK:- Button click events
    @IBAction func buttonBackPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    //MARK:- Custom method
    func setTheme() {
        labelTitle.setUpLabel(title: "", titleColor: .black, titleFont: GetAppFont(FontType: .Bold, FontSize: .Sixteen))
        labelDesc.setUpLabel(title: "", titleColor: .black, titleFont: GetAppFont(FontType: .Regular, FontSize: .Sixteen))
        labelHeader.setUpLabel(title: StringConstant.detail, titleColor: .black,titleFont: GetAppFont(FontType: .Bold, FontSize: .Sixteen))
    }
    
    func setData() {
        labelTitle.text = modelData?.title ?? ""
        imageViewDetail.sd_setImage(with: URL(string: modelData?.image ?? ""), placeholderImage: #imageLiteral(resourceName: "ic_no_image"))
        labelDesc.text = modelData?.description ?? ""
    }
}
