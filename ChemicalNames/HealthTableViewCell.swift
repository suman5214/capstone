//
//  HealthTableViewCell.swift
//  ChemicalNames
//
//  Created by admin on 1/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import FloatRatingView
class HealthTableViewCell: UITableViewCell {

    @IBOutlet var hazardImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var riskLevel: FloatRatingView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(healthEffect: HealthEffect) {
        hazardImageView.image = UIImage(named:healthEffect.hazard.image)
        nameLabel.text = healthEffect.hazard.name
        var rating: Float = 1
        if healthEffect.riskLevel.level == "Severe" {
            rating = 5
        } else if  healthEffect.riskLevel.level == "Moderate" {
            rating = 3
        } else if  healthEffect.riskLevel.level == "Mild" {
            rating = 1
        }
        riskLevel.rating = rating
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
