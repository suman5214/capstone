//
//  DetailPPEVC.swift
//  ChemicalNames
//
//  Created by admin on 1/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DetailPPEVC: UIViewController {
    var chemical: Chemical!

    @IBOutlet var ppeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let summary = DataProvider.shared.summary_list.filter{
            $0.chemical_ID == self.chemical.id
        }
        
        let id_array: [Int] = (summary.first?.PPE_ID.components(separatedBy: ",").map  { Int($0)!})!
        let ppeList = DataProvider.shared.ppeList.filter {
            id_array.contains($0.id)
        }
        var ppeStr = ""
        var prefix = ""
        for ppe in ppeList {
            ppeStr.append(prefix)
            ppeStr.append(ppe.bodyPart + " (" +  ppe.name + ")")
            prefix = "\n"
        }
        self.ppeLabel.text = ppeStr
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
