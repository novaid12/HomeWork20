//
//  CustomCell.swift
//  HomeWork20
//
//  Created by  NovA on 13.09.23.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet var phoneNumberView: UILabel!
    @IBOutlet var emailView: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
