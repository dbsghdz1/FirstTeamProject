//
//  TableViewCell.swift
//  TeamIntroduce
//
//  Created by 전성진 on 5/27/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
//        profileImgView.layer.cornerRadius = profileImgView.frame.height / 2
        profileImgView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
