//
//  ViewController.swift
//  cocoapodsintro
//
//  Created by R Shantha Kumar on 10/10/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

//
//  ViewController.swift
//  TextFeilds
//
//  Created by R Shantha Kumar on 10/4/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit
import TextFieldEffects
import IQDropDownTextField




class ViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {
    
    var firstNameLbl:UILabel!
    var secondNameLbl:UILabel!
    var ageLbl:UILabel!
    var emailLbl:UILabel!
    var mobileLbl:UILabel!
    var adressLbl:UILabel!
    var stateLbl:UILabel!
    var countryLbl:UILabel!
    
    var firstNameTextFeild:KaedeTextField!
    var secondNameTextFeild:KaedeTextField!
    var ageTextFeild:KaedeTextField!
    var emailTextFeild:KaedeTextField!
    var mobileTextFeild:HoshiTextField!
    var addressTextFeild:UITextView!
    var stateTextFeild:IQDropDownTextField!
    var countryTextFeild:IQDropDownTextField!
    
    var semiColomnLbl:UILabel!
    
    
    var firstNameIcon:UIImage!
    var secondNameIcon:UIImage!
    var ageIcon:UIImage!
    var emailIcon:UIImage!
    var mobileIcon:UIImage!
    var addressIcon:UIImageView!
    var stateIcon:UIImage!
    var countryIcon:UIImage!
    var semiColomnIcon:UIImage!
    
    
    var dateLbl:UILabel!
    var dateLbls = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personnalDetails()
        dates()
    }
    
    func personnalDetails(){
        
        firstNameLbl = UILabel()
        firstNameLbl.frame = CGRect(x: 30, y: 60, width: 120, height: 30)
        firstNameLbl.text = "First Name"
        firstNameLbl.textColor = UIColor.white
        firstNameLbl.textAlignment = .center
        view.addSubview(firstNameLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 60, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        secondNameLbl = UILabel()
        secondNameLbl.frame = CGRect(x: 30, y: 130, width: 120, height: 30)
        secondNameLbl.text = "Last Name"
        secondNameLbl.textAlignment = .center
        secondNameLbl.textColor = UIColor.white
        view.addSubview(secondNameLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 130, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        
        ageLbl = UILabel()
        ageLbl.frame = CGRect(x: 30, y: 220, width: 120, height: 30)
        ageLbl.text = "Age"
        ageLbl.textAlignment = .center
        ageLbl.textAlignment = .center
        ageLbl.textColor = UIColor.white
        view.addSubview(ageLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 220, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        emailLbl = UILabel()
        emailLbl.frame = CGRect(x: 30, y: 300, width: 120, height: 30)
        emailLbl.text = "Email"
        emailLbl.textAlignment = .center
        emailLbl.textColor = UIColor.white
        view.addSubview(emailLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 300, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        mobileLbl = UILabel()
        mobileLbl.frame = CGRect(x: 30, y: 380, width: 120, height: 30)
        mobileLbl.text = "Mobile.No"
        mobileLbl.textAlignment = .center
        mobileLbl.textColor = UIColor.white
        view.addSubview(mobileLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 380, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        adressLbl = UILabel()
        adressLbl.frame = CGRect(x: 30, y: 460, width: 120, height: 30)
        adressLbl.text = "Address"
        adressLbl.textColor = UIColor.white
        adressLbl.textAlignment = .center
        view.addSubview(adressLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 460, width: 120, height: 30)
        semiColomnLbl.textColor = UIColor.white
        semiColomnLbl.text = ":"
        view.addSubview(semiColomnLbl)
        
        stateLbl = UILabel()
        stateLbl.frame = CGRect(x: 30, y: 580, width: 120, height: 30)
        stateLbl.text = "State"
        stateLbl.textAlignment = .center
        stateLbl.textColor = UIColor.white
        view.addSubview(stateLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 580, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        countryLbl = UILabel()
        countryLbl.frame = CGRect(x: 30, y: 645, width: 120, height: 30)
        countryLbl.text = "Country"
        countryLbl.textAlignment = .center
        countryLbl.textColor = UIColor.white
        view.addSubview(countryLbl)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 645, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        
        dateLbl = UILabel()
        dateLbl.frame = CGRect(x: 200, y: 700, width: 200, height: 50)
        dateLbl.textColor = UIColor.black
        dateLbl.backgroundColor = UIColor.white
        view.addSubview(dateLbl)
        
        var dateLb = UILabel()
        dateLb.frame = CGRect(x: 30, y: 700, width: 120, height: 30)
        dateLb.textColor = UIColor.white
        dateLb.text = "Date & Time"
        dateLb.textAlignment = .center
        view.addSubview(dateLb)
        
        semiColomnLbl = UILabel()
        semiColomnLbl.frame = CGRect(x: 170, y: 700, width: 120, height: 30)
        semiColomnLbl.text = ":"
        semiColomnLbl.textColor = UIColor.white
        view.addSubview(semiColomnLbl)
        
        var submitBtn = UIButton()
        submitBtn.frame = CGRect(x: 150, y: 820, width: 100, height: 50)
        submitBtn.setTitle("SUBMIT", for: UIControl.State.normal)
        submitBtn.backgroundColor = .orange
        view.addSubview(submitBtn)
        
        
        
        
        firstNameTextFeild = KaedeTextField()
        firstNameTextFeild.frame = CGRect(x: 200, y: 60, width: 200, height: 50)
        firstNameTextFeild.delegate = self
        firstNameIcon = UIImage(named: "name")
        imagesIcon(uitextfeild: firstNameTextFeild, icon: firstNameIcon)
        firstNameTextFeild.backgroundColor = UIColor.white
        firstNameTextFeild.placeholder = "first Name"
        firstNameTextFeild.clearButtonMode = .always
        firstNameTextFeild.borderStyle = .roundedRect
        firstNameTextFeild.leftViewMode = .always
        firstNameTextFeild.textAlignment = .center
        firstNameTextFeild.keyboardType = .asciiCapable
        view.addSubview(firstNameTextFeild)
        
        secondNameTextFeild = KaedeTextField()
        secondNameTextFeild.frame = CGRect(x: 200, y: 130, width: 200, height: 50)
        secondNameTextFeild.delegate = self
        secondNameIcon = UIImage(named: "name")
        imagesIcon(uitextfeild: secondNameTextFeild, icon: firstNameIcon)
        secondNameTextFeild.backgroundColor = UIColor.white
        secondNameTextFeild.placeholder = "Last Name"
        secondNameTextFeild.borderStyle = .roundedRect
        secondNameTextFeild.clearButtonMode = .always
         secondNameTextFeild.leftViewMode = .always
        secondNameTextFeild.textAlignment = .center
        secondNameTextFeild.keyboardType = .asciiCapable
        view.addSubview(secondNameTextFeild)
        
        
        
        
        
        ageTextFeild = KaedeTextField()
        ageTextFeild.frame = CGRect(x: 200, y: 220, width: 200, height: 50)
        ageTextFeild.delegate = self
        secondNameIcon = UIImage(named: "age")
        imagesIcon(uitextfeild: ageTextFeild, icon: secondNameIcon)
        ageTextFeild.backgroundColor = UIColor.white
        ageTextFeild.placeholder = "age"
        ageTextFeild.borderStyle = .roundedRect
        ageTextFeild.clearButtonMode = .always
        ageTextFeild.textAlignment = .center
        ageTextFeild.keyboardType = .numberPad
        view.addSubview(ageTextFeild)
        
        
        
        emailTextFeild = KaedeTextField()
        emailTextFeild.frame = CGRect(x: 200, y: 300, width: 200, height: 50)
        emailTextFeild.delegate = self
        emailIcon = UIImage(named: "email")
        imagesIcon(uitextfeild: emailTextFeild, icon: emailIcon)
        emailTextFeild.backgroundColor = UIColor.white
        emailTextFeild.placeholder = "Email"
        emailTextFeild.keyboardType = .emailAddress
        emailTextFeild.clearButtonMode = .always
        emailTextFeild.textAlignment = .center
        emailTextFeild.borderStyle = .roundedRect
        view.addSubview(emailTextFeild)
        
       
        
        mobileTextFeild = HoshiTextField()
        mobileTextFeild.frame = CGRect(x: 200, y: 380, width: 200, height: 50)
        mobileTextFeild.delegate = self
        mobileIcon = UIImage(named: "mobile")
        imagesIcon(uitextfeild: mobileTextFeild, icon: mobileIcon)
        mobileTextFeild.backgroundColor = UIColor.white
        mobileTextFeild.placeholder = "mobile.no"
        mobileTextFeild.textAlignment = .center
        mobileTextFeild.clearButtonMode = .always
        mobileTextFeild.borderStyle = .roundedRect
        mobileTextFeild.keyboardType = .phonePad
        view.addSubview(mobileTextFeild)
        
        
        addressTextFeild = UITextView()
        addressTextFeild.frame = CGRect(x: 200, y: 460, width: 200, height: 100)
        addressTextFeild.backgroundColor = UIColor.white
        addressTextFeild.keyboardType = .webSearch
        addressTextFeild.delegate=self
        view.addSubview(addressTextFeild)
        
        
        addressIcon = UIImageView()
        addressIcon.frame = CGRect(x: 0, y: 0, width: 25, height: 50)
        addressIcon.image = UIImage(named: "address")
        addressTextFeild.addSubview(addressIcon)
        
        
        
        stateTextFeild = IQDropDownTextField()
        stateTextFeild.frame = CGRect(x: 200, y: 570, width: 200, height: 50)
        stateTextFeild.delegate = self as? IQDropDownTextFieldDelegate
        stateIcon = UIImage(named: "state")
        imagesIcon(uitextfeild: stateTextFeild, icon: stateIcon)
         stateTextFeild.backgroundColor = UIColor.white
         stateTextFeild.placeholder = "state"
          stateTextFeild.textAlignment = .center
          stateTextFeild.borderStyle = .roundedRect
          secondNameTextFeild.keyboardType = .namePhonePad
          stateTextFeild.spellCheckingType = .yes
          stateTextFeild.autocorrectionType = .yes
        view.addSubview(stateTextFeild)
        
        stateTextFeild.itemList = ["goa", "andhra pradesh", "uttarpradesh","tamilnadu","kerala", "karnataka", "gujarath","punjab","delhi", "kashmir", "bengal","oprissa","telangana", "andhra pradesh", "madhyapradesh","arunachalpradesh"]
        
        
        
        countryTextFeild = IQDropDownTextField()
        countryTextFeild.frame = CGRect(x: 200, y: 630, width: 200, height: 50)
        countryTextFeild.delegate = self as? IQDropDownTextFieldDelegate
        countryTextFeild.backgroundColor = UIColor.white
        countryTextFeild.placeholder = "country"
        countryTextFeild.textAlignment = .center
        countryTextFeild.borderStyle = .roundedRect
        secondNameTextFeild.keyboardType = .namePhonePad
        countryTextFeild.spellCheckingType = .yes
        countryTextFeild.autocorrectionType = .yes
        countryTextFeild.returnKeyType = .done
        countryTextFeild.itemList = ["india", "usa", "germany","australia","pakisthan","mexico","canada"]
        view.addSubview(countryTextFeild)
       
    }
    
    
    
    
    func dates(){
        
         dateLbls = UIDatePicker()
        dateLbls.frame = CGRect(x: 150, y: 760, width: 250, height: 50)
        dateLbls.backgroundColor = UIColor.white
        view.addSubview(dateLbls)
        
        
        dateLbls.addTarget(self, action: #selector(eventDate), for: UIControl.Event.valueChanged)
    }
    
    @objc func eventDate(){
        
       let dateFormatter = DateFormatter()
        
    dateFormatter.dateStyle = DateFormatter.Style.short
    dateFormatter.timeStyle = DateFormatter.Style.short
        
        
        let startDate = dateFormatter.string(from: dateLbls.date)
        
              dateLbl.text = startDate
        
    }
    
    var returnvalue:Bool = false
    
    
    func toast (){
        
        let alertControl = UIAlertController(title: "Warning", message: "Invalid Keywords", preferredStyle: UIAlertController.Style.actionSheet)
        
        
        let alerttype = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (OkAct) in
            
            
        }
        
        let alerttype2 = UIAlertAction(title: "cancel", style: UIAlertAction.Style.destructive) { (OkAct) in
            
            
        }
        
        alertControl.addAction(alerttype)
        alertControl.addAction(alerttype2)
        present(alertControl, animated: true, completion: nil)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        
        
        if(textField == firstNameTextFeild){
            
             return true
        }
        
        if (textField == secondNameTextFeild) {
            
            if(firstNameTextFeild.text!.count>1){
                
                return true
                
            }else
            {
                
                
                return returnvalue
                
            }
        }else if (textField == ageTextFeild) {
            
            if(firstNameTextFeild.text!.count>1 &&
               secondNameTextFeild.text!.count>1)
                {
                
                return true
                
            }else
            {
                
                return returnvalue
                
            }
        }else if (textField == emailTextFeild) {
            
            if(firstNameTextFeild.text!.count>1 &&
                secondNameTextFeild.text!.count>1 &&
               Int(ageTextFeild.text!)!<120){
                
                return true
                
            }else
            {
               
                return returnvalue
                
            }
        }
        else if (textField == mobileTextFeild){
            
            if(firstNameTextFeild.text!.count>1 &&
                secondNameTextFeild.text!.count>1 &&
                Int(ageTextFeild.text!)!<120 &&
                emailTextFeild.text!.count>1)
            {
                return true
                
            }else
            {
                
                return returnvalue
                
            }
        }
        else if (textField == addressTextFeild){
            
            if(firstNameTextFeild.text!.count>1 &&
                secondNameTextFeild.text!.count>1 &&
                Int(ageTextFeild.text!)!<120 &&
                emailTextFeild.text!.count>1 )
            {
                return true
                
            }else
            {
               
                return returnvalue
                
            }
        }
        
        else if (textField == stateTextFeild){
            
            if(firstNameTextFeild.text!.count>1 &&
                secondNameTextFeild.text!.count>1 &&
                Int(ageTextFeild.text!)!<120 &&
                emailTextFeild.text!.count>1 &&
                addressTextFeild.text!.count>10)
            {
                return true
                
            }else
            {
                
                return false
                
            }
        }
        
       
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField){
        
        textField.backgroundColor = UIColor.lightGray
        
       
        
        }
        
        
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool{
        
        textField.backgroundColor = UIColor.white
        
        if(textField == addressTextFeild){
            return ValidEmail(emailStr: textField.text!)
        }

      return  true
        
    }
    

    
    func textFieldDidEndEditing(_ textField: UITextField){
    
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason){
    
    }
    
    var message = UILabel()
    

func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
    
     
if(textField == firstNameTextFeild||textField == secondNameTextFeild){
            let allowCharacters = CharacterSet(charactersIn:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
            
            if(string.rangeOfCharacter(from: allowCharacters) != nil){
                
            message.removeFromSuperview()
                
            return true
            }else
            {
            
               toast()
                return  false
                
    }
            }
    
if(textField == mobileTextFeild){
            
            let allowCharacters = CharacterSet(charactersIn:"0123456789#*+- ")
            
            if(string.rangeOfCharacter(from: allowCharacters) != nil){
            
                 message.removeFromSuperview()
                
                return true
            }else
            {
                toast ()
                return false
            }
           
        }
if(textField == ageTextFeild){
            
                let allowCharacters = CharacterSet(charactersIn:"0123456789 ")
    
                if(string.rangeOfCharacter(from: allowCharacters) != nil){
        
                message.removeFromSuperview()
        
                return true
                }else
                {
                   toast ()
                 return false
               }
               }
    return true
    }
   
    func imagesIcon(uitextfeild:UITextField,icon:UIImage){
        
        
        let imageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: 25, height:30))
        
        imageView.image = icon
        
        uitextfeild.leftView = imageView
        uitextfeild.leftViewMode = .always
        
    }
    
    func lbl(laebl:UILabel,semicol:UILabel){
        
        semiColomnLbl.frame = CGRect(x: 0.0, y: 0.0, width: 25, height: 30)
        semiColomnLbl.text = ":"
        laebl.addSubview(semiColomnLbl)
        
    }
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
    {
        returnvalue=false
        if(textView == addressTextFeild){
        if(mobileTextFeild.text?.count==10)
        {
           returnvalue=true
            

        }
        }
        
        return returnvalue
    }


func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool{
    
    let allowCharacters = CharacterSet(charactersIn:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-+=/")
    
    if(text.rangeOfCharacter(from: allowCharacters) != nil){
        
        message.removeFromSuperview()
        
        return true
    }else
    {
        toast()
    }
    
    return true
    }
    
    
    func ValidEmail(emailStr:String) -> Bool {
        
            
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            
            message.removeFromSuperview()
            
            return emailPred.evaluate(with: emailStr)
            
        }
   
    
    

}







