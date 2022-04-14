//
//  ViewControllerGelTaksiDestek.swift
//  GelTaksiMusteri
//
//  Created by halil ibrahim Elkan on 13.04.2022.
//

import UIKit

class ViewControllerGelTaksiDestek: UIViewController{

    @IBOutlet weak var ustView: UIView!
    @IBOutlet weak var blogView: UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        desing()
    }
    
    func desing(){
        ustView.layer.cornerRadius = 20
        ustView.layer.borderWidth = 1
        ustView.layer.borderColor = UIColor.systemGray3.cgColor
        ustView.layer.shadowOpacity = 20
        ustView.layer.shadowColor = UIColor.systemGray3.cgColor
        blogView.layer.cornerRadius = 20
        blogView.layer.borderWidth = 1
        blogView.layer.borderColor = UIColor.systemGray3.cgColor
        blogView.layer.shadowOpacity = 20
        blogView.layer.shadowColor = UIColor.systemGray3.cgColor
        
    }
    
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

