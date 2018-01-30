//
//  DetailBasicVC.swift
//  ChemicalNames
//
//  Created by admin on 1/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DetailBasicVC: UIViewController {

    var chemical: Chemical!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var chemicalImageView: UIImageView!
    @IBOutlet var synonymLabel: UILabel!
    @IBOutlet var formulaLabel: UILabel!
    @IBOutlet var casLabel: UILabel!
    @IBOutlet var WHMISLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = chemical.name
        chemicalImageView.image = UIImage(named: chemical.image)
        chemicalImageView.setCircle()
        chemicalImageView.setBorder(width: 1, color: UIColor.darkGray)
        synonymLabel.text = chemical.synonym
        formulaLabel.text = chemical.mainComponets
        casLabel.text = chemical.cas
        if chemical.WHMIS_IDS == "" {
            WHMISLabel.text = "Not hazardous under WHMIS"
        } else {
            let id_array: [Int] = chemical.WHMIS_IDS.components(separatedBy: ",").map  { Int($0)!}
            let whmisList = DataProvider.shared.whmisList.filter {
                id_array.contains($0.id)
            }
            
            let attributeString = NSMutableAttributedString(attributedString: WHMISLabel.attributedText!)
            var prefix = NSAttributedString(string: "")
            for whmis in whmisList {
                
                let image = UIImage(named:whmis.image)
                let imageAttachment = NSTextAttachment.init()
                imageAttachment.image = image?.resize(with: CGSize(width: 55, height: 55))
                let imageAttributedString = NSAttributedString.init(attachment: imageAttachment)
                attributeString.append(prefix)
                attributeString.append(imageAttributedString)
                prefix = NSAttributedString(string: " ")
            }
            WHMISLabel.attributedText = attributeString
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
