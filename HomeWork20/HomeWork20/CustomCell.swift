//
//  CustomCell.swift
//  HomeWork20
//
//  Created by  NovA on 13.09.23.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var phoneNumberView: UILabel!
    @IBOutlet weak var emailView: UILabel!
    @IBOutlet weak var nameView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
