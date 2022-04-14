//
//  ViewControllerHome.swift
//  GelTaksiMusteri
//
//  Created by halil ibrahim Elkan on 13.04.2022.
//

import UIKit
import MapKit

class ViewControllerHome: UIViewController {


    @IBOutlet weak var ustView: UIView!
    
    @IBOutlet weak var mapkit: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        desing()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
   
    
    func desing(){
        mapkit.alpha = 0.4
        ustView.layer.cornerRadius = 20
        ustView.layer.borderWidth = 1
        ustView.layer.borderColor = UIColor.systemGray3.cgColor
        ustView.layer.shadowOpacity = 20
        ustView.layer.shadowColor = UIColor.systemGray3.cgColor
    }
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
       
        if (sender.isOn == true){
            mapkit.alpha = 2
        }else{
            mapkit.alpha = 0.4
            
        }
    }
    
}
