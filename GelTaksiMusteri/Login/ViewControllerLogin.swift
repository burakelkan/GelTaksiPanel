//
//  ViewController.swift
//  GelTaksiMusteri
//
//  Created by halil ibrahim Elkan on 12.04.2022.
//

import UIKit

class ViewControllerLogin: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var ıForgotMyPassword: UIButton!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var newUser: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        desing()
    }
    
    func desing(){
        
        userName.layer.cornerRadius = 15
        userName.layer.borderWidth = 1
        userName.layer.borderColor =  #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
                
        password.layer.cornerRadius = 15
        password.layer.borderWidth = 1
        password.layer.borderColor =  #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
              
        login.layer.cornerRadius = 20
        login.layer.borderWidth = 1
        login.layer.borderColor = UIColor.systemGray3.cgColor
                  
                  
        newUser.layer.cornerRadius = 20
        newUser.layer.borderWidth = 1
        newUser.layer.borderColor = UIColor.systemGray3.cgColor
              
           
              
    }
    
    @IBAction func sifremiUnuttum(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "GELTAKSİPERSONEL", message: "Şifremi Unuttum", preferredStyle: .alert)
    
        alertController.addTextField { textfield in
            textfield.placeholder = "Telefon numarası"
            textfield.isSecureTextEntry = false
        }
        
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Aktivasyon kodu                    02:57"
            textfield.isSecureTextEntry = false
        }
        
        let kaydetAction = UIAlertAction(title: "Doğrula", style: .cancel){ action in
            
            let alertController = UIAlertController(title: "GELTAKSİPERSONEL", message: "Şifremi Sıfırla", preferredStyle: .alert)
        
            alertController.addTextField { textfield in
                textfield.placeholder = "Şifrenizi giriniz"
                textfield.isSecureTextEntry = false
            }
            
            
            alertController.addTextField { textfield in
                textfield.placeholder = "Şifrenizi tekrar giriniz"
                textfield.isSecureTextEntry = false
            }
            
            let kaydetAction = UIAlertAction(title: "Onayla", style: .cancel){ action in
                
                
            }
            
            let geri = UIAlertAction(title: "Geri", style: .destructive){ action in
                
                
            }
            
            
            
            
            alertController.addAction(kaydetAction)
            alertController.addAction(geri)
            
           
            self.present(alertController,animated: true)
            
        }
        
        let geri = UIAlertAction(title: "Geri", style: .destructive){ action in
            
        }
        
        let gönder = UIAlertAction(title: "Aktivasyon kodu Tekrar Gönder", style: .default){ action in
        
        }
        
        alertController.addAction(kaydetAction)
        alertController.addAction(geri)
        alertController.addAction(gönder)
        
        self.present(alertController,animated: true)
    }
}

