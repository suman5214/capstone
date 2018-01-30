//
//  ChemicalDetailViewController.swift
//  ChemicalNames
//
//  Created by admin on 1/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import iCarousel
class ChemicalDetailViewController: UIViewController {

    var chemical: Chemical!
    @IBOutlet var chemicalNameLabel: UILabel!
    @IBOutlet var basicView: UIView!
    @IBOutlet var healthView: UIView!
    @IBOutlet var ppeView: UIView!
    @IBOutlet var carousel: iCarousel!
    @IBOutlet var pageControl: UIPageControl!
    
    var items: [UIView] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [basicView, healthView, ppeView]
        carousel.type = .linear
        carousel.isPagingEnabled = true
        carousel.reloadData()
        chemicalNameLabel.text = self.chemical.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showBasic(_ sender: Any) {
        self.carousel.scrollToItem(at: 0, animated: true)
    }
    
    @IBAction func showHealthEffect(_ sender: Any) {
        self.carousel.scrollToItem(at: 1, animated: true)
    }
    
    @IBAction func showPPE(_ sender: Any) {
        self.carousel.scrollToItem(at: 2, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueBasic" {
            let basicVC = segue.destination as! DetailBasicVC
            basicVC.chemical = self.chemical
        } else if segue.identifier == "segueHealth" {
            let healthVC = segue.destination as! DetailHealthEffectVC
            healthVC.chemical = self.chemical
        } else if segue.identifier == "seguePPE" {
            let ppeVC = segue.destination as! DetailPPEVC
            ppeVC.chemical = self.chemical
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}

extension ChemicalDetailViewController: iCarouselDataSource, iCarouselDelegate {
    func numberOfItems(in carousel: iCarousel) -> Int {
        return items.count
    }
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let v = items[index]
        v.frame = self.carousel.bounds
        return v
    }
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if (option == .spacing) {
            return value * 1.01
        }
        return value
    }
    func carouselCurrentItemIndexDidChange(_ carousel: iCarousel) {
        self.pageControl.currentPage = self.carousel.currentItemIndex
    }
    
    
}

