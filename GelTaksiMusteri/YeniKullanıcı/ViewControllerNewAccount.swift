//
//  ViewControllerNewAccount.swift
//  GelTaksiMusteri
//
//  Created by halil ibrahim Elkan on 13.04.2022.
//

import UIKit

class ViewControllerNewAccount: UIViewController {

    
    @IBOutlet weak var flagButton: UIButton!
    @IBOutlet weak var ileriButton: UIButton!
    @IBOutlet weak var numberText: UITextField!
    
    var pickerView:UIPickerView?
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        desing()
        
    }
    
    func desing(){
        flagButton.layer.cornerRadius = 20
        flagButton.layer.borderWidth = 1
        flagButton.layer.borderColor = UIColor.systemGray3.cgColor
        flagButton.layer.shadowOpacity = 20
        flagButton.layer.shadowColor = UIColor.systemGray3.cgColor
        
        ileriButton.layer.cornerRadius = 20
        ileriButton.layer.borderWidth = 1
        ileriButton.layer.borderColor = UIColor.systemGray3.cgColor
        ileriButton.layer.shadowOpacity = 20
        ileriButton.layer.shadowColor = UIColor.systemGray3.cgColor
     
        numberText.layer.shadowOpacity = 20
        numberText.layer.shadowColor = UIColor.systemGray3.cgColor
    }
    @IBAction func flagButton(_ sender: Any) {
        
        
    }


    @IBAction func ileriButton(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "GELTAKSİ", message: "Aktivasyon kodu giriniz", preferredStyle: .alert)
    
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Aktivasyon kodu                  02:57"
            textfield.isSecureTextEntry = false
        }
        
        let kaydetAction = UIAlertAction(title: "Doğrula", style: .destructive){ action in
            
            self.navigationController?.popViewController(animated: true)
        }
        
        alertController.addAction(kaydetAction)
        
        
        self.present(alertController,animated: true)
        
    }
}
