//
//  ViewControllerEditProfil.swift
//  GelTaksiMusteri
//
//  Created by halil ibrahim Elkan on 13.04.2022.
//

import UIKit

class ViewControllerEditProfil: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var profilimage: UIButton!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var epostaText: UITextField!
    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var adres: UITextField!
    @IBOutlet weak var mersisno: UITextField!
    @IBOutlet weak var tckimlik: UITextField!
    @IBOutlet weak var türsabbelge: UIButton!
    @IBOutlet weak var pickerViewButton: UIButton!
    
    var ulkeler:[String] = [String]()
    let screenWidth = UIScreen.main.bounds.width - 10
    let screenHeight = UIScreen.main.bounds.height / 2
    var selectedRow = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        desing()
    }

    @IBAction func button(_ sender: Any) {
        let vc = UIViewController()
        vc.preferredContentSize = CGSize(width: screenWidth, height: screenHeight)
        let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: screenWidth, height:screenHeight))
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(selectedRow, inComponent: 0, animated: false)
        //pickerView.selectRow(selectedRowTextColor, inComponent: 1, animated: false)
        vc.view.addSubview(pickerView)
        pickerView.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor).isActive = true
        pickerView.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor).isActive = true
        
        let alert = UIAlertController(title: "Araç Türü", message: "", preferredStyle: .actionSheet)
        
        alert.popoverPresentationController?.sourceView = pickerViewButton
        alert.popoverPresentationController?.sourceRect = pickerViewButton.bounds
        
        alert.setValue(vc, forKey: "contentViewController")
        alert.addAction(UIAlertAction(title: "İptal Et", style: .cancel, handler: { (UIAlertAction) in
        }))
        
        alert.addAction(UIAlertAction(title: "Kaydet", style: .default, handler: { (UIAlertAction) in
            self.selectedRow = pickerView.selectedRow(inComponent: 0)
            //self.selectedRowTextColor = pickerView.selectedRow(inComponent: 1)
            let selected = Array(self.ulkeler)[self.selectedRow]
            //let selectedTextColor = Array(self.backGroundColours)[self.selectedRowTextColor]
            self.pickerViewButton.setTitle("\(selected)", for: .normal)
            //self.pickerViewButton.setTitleColor(selectedTextColor.value, for: .normal)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @objc func tamamTikla(){

       view.endEditing(true)
    }
    
    func desing(){
        ulkeler = ["Standart","Kurye","Büyük","VİP","VİPBüyük"]
        profilimage.layer.cornerRadius = 70
        profilimage.layer.borderWidth = 1
        profilimage.layer.borderColor = UIColor.systemGray5.cgColor
        profilimage.layer.shadowOpacity = 20
        profilimage.layer.shadowColor = UIColor.systemGray5.cgColor
        
        nameText.layer.cornerRadius = 15
        nameText.layer.borderWidth = 1
        nameText.layer.borderColor = #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
        
        epostaText.layer.cornerRadius = 15
        epostaText.layer.borderWidth = 1
        epostaText.layer.borderColor = #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
        
        numberText.layer.cornerRadius = 15
        numberText.layer.borderWidth = 1
        numberText.layer.borderColor = #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
        
        adres.layer.cornerRadius = 15
        adres.layer.borderWidth = 1
        adres.layer.borderColor = #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
        
        mersisno.layer.cornerRadius = 15
        mersisno.layer.borderWidth = 1
        mersisno.layer.borderColor = #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
        
        tckimlik.layer.cornerRadius = 15
        tckimlik.layer.borderWidth = 1
        tckimlik.layer.borderColor = #colorLiteral(red: 0.9603505731, green: 0.5184710622, blue: 0, alpha: 1)
  
        saveButton.layer.cornerRadius = 20
        saveButton.layer.borderWidth = 1
        saveButton.layer.borderColor = UIColor.white.cgColor

        türsabbelge.layer.cornerRadius = 20
        türsabbelge.layer.borderWidth = 1
        türsabbelge.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
    {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 30))
        label.text = Array(ulkeler)[row]
        label.sizeToFit()
        return label
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1 //return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
    {
        return 60
    }

    
    @objc func iptalTikla(){
//        pickerView.isHidden = true
         view.endEditing(true)
    }
    
}
