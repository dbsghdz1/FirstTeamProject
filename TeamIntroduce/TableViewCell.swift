//
//  TableViewCell.swift
//  TeamIntroduce
//
//  Created by 전성진 on 5/27/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(team: Team) {
        profileImage.image = UIImage(named: team.imageName)
        profileImage.layer.cornerRadius = profileImage.bounds.width / 2
        nameLabel.text = team.name
        nameLabel.textColor = .white
        positionLabel.text = team.position
        if team.position == "팀장" {
            positionLabel.textColor = .orange
        } else {
            positionLabel.textColor = .darkGray
        }
    }

}
