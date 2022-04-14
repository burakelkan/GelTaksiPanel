//
//  ViewControllerMapKit.swift
//  GelTaksiMusteri
//
//  Created by halil ibrahim Elkan on 13.04.2022.
//

import UIKit
import MapKit

class ViewControllerMapKit: UIViewController {

    @IBOutlet weak var viewAlt: UIView!
    @IBOutlet private weak var nakit: UIButton!
    @IBOutlet weak var mapkit: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        desing()
        mapkit.alpha = 0.4
}
    func desing(){
        
        viewAlt.layer.borderWidth = 1
        viewAlt.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewAlt.layer.cornerRadius = 40
    }
 
    
    @IBAction func segmented(_ sender: UISegmentedControl) {
       
    }
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
        if (sender.isOn == true){
            mapkit.alpha = 2
        }else{
            mapkit.alpha = 0.4
        }
    }
}
