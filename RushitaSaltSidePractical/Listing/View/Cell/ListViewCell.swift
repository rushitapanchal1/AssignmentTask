//
//  ListViewCell.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita Panchal on 16/01/21.
//  Copyright © 2021 Rushita Panchal. All rights reserved.
//

import UIKit
import SDWebImage

class ListViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet weak var imageViewList: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setTheme()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    //MARK:- Custom method
    func setTheme() {
        labelTitle.setUpLabel(title: "", titleColor: .black, titleFont: GetAppFont(FontType: .Bold, FontSize: .Sixteen))
        labelDesc.setUpLabel(title: "", titleColor: .black, titleFont: GetAppFont(FontType: .Regular, FontSize: .Sixteen))        
    }
    
    func setData(modelData : DataModel?) {
        labelTitle.text = modelData?.title ?? ""
        imageViewList.sd_setImage(with: URL(string: modelData?.image ?? ""), placeholderImage: #imageLiteral(resourceName: "ic_no_image"))
        labelDesc.text = modelData?.description ?? ""
    }
}
