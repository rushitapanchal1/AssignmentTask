//
//  ListingVC.swift
//  RushitaSaltSidePractical
//
//  Created by Rushita Panchal on 16/01/21.
//  Copyright © 2021 Rushita Panchal. All rights reserved.
//

import UIKit

class ListingVC: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var tableViewListing: UITableView!
    
    var modelData : [DataModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTheme()
        self.getData()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Custom method
    func setTheme() {
        labelTitle.setUpLabel(title: StringConstant.listing, titleColor: .black, titleFont: GetAppFont(FontType: .Bold, FontSize: .Sixteen))
        tableViewListing.registerTablViewCell(cellIdentifier: CellIdentifier.ListViewCell)
        tableViewListing.delegate = self
        tableViewListing.dataSource = self
    }
    
    func getData() {
        NetworkManager.getRequestFromServer { (dataModel) in
            self.modelData = dataModel
            DispatchQueue.main.async {
                self.tableViewListing.reloadData()
            }
        }
    }
}

extension ListingVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.ListViewCell) as? ListViewCell else {
            return UITableViewCell()
        }
        cell.setData(modelData: modelData?[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let VC = GetViewController(StoryBoard: .Listing, Identifier: .ListDetailVC) as? ListDetailVC else {
            return
        }
        VC.modelData = modelData?[indexPath.row]
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}
