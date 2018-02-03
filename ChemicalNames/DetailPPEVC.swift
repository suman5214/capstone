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
    @IBOutlet weak var ppeGoggle: UIButton!
    @IBOutlet weak var ppeMask: UIButton!
    @IBOutlet weak var ppeGlove: UIButton!
    @IBOutlet weak var ppeRespiratory: UIButton!
    @IBOutlet weak var ppeVest: UIButton!
    @IBOutlet weak var ppeBoot: UIButton!
    
    
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
            print(ppe)
            if ppe.bodyPart == "Eye/face" {
                ppeMask.isHidden = false
                ppeMask.accessibilityLabel = ppe.name
                ppeMask.accessibilityValue = ppe.material
            }
            if ppe.bodyPart == "Eyes" {
                ppeGoggle.isHidden = false
                ppeGoggle.accessibilityLabel = ppe.name
                ppeGoggle.accessibilityValue = ppe.material
            }

            if ppe.bodyPart == "respiratory system" {
                ppeRespiratory.isHidden = false
                ppeRespiratory.accessibilityLabel = ppe.name
                ppeRespiratory.accessibilityValue = ppe.material
            }
            if ppe.bodyPart == "Skin" {
                ppeVest.isHidden = false
                ppeVest.accessibilityLabel = ppe.name
                ppeVest.accessibilityValue = ppe.material
            }
            if ppe.bodyPart == "Hand" {
                ppeGlove.isHidden = false
                ppeGlove.accessibilityLabel = ppe.name
                ppeGlove.accessibilityValue = ppe.material
            }
            if ppe.bodyPart == "toes" {
                ppeBoot.isHidden = false
                ppeBoot.accessibilityLabel = ppe.name
                ppeBoot.accessibilityValue = ppe.material
            }
            ppeStr.append(prefix)
            ppeStr.append(ppe.bodyPart + " (" +  ppe.name + ")")
            prefix = "\n"
        }
        // self.ppeLabel.text = ppeStr
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func createMsg (title: String, message: String)
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showPPEInfo(_ sender: UIButton) {

        createMsg(title: "PPE Information" , message: "PPE Name: " + sender.accessibilityLabel! + "\nMaterial: " + sender.accessibilityValue! )
        
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
