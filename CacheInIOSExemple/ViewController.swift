//
//  ViewController.swift
//  CacheInIOSExemple
//
//  Created by Julio Cesar  on 07/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNameTag: UITextField!
    
    @IBOutlet weak var textValueTag: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func save(_ sender: Any) {
        //If exception has lanced so return zero
        if(textNameTag.text?.count ?? 0 > 0 && textValueTag.text?.count ?? 0 > 0){
            //Save something in IOS cache
            UserDefaults.standard.set(textValueTag.text ?? "", forKey: textNameTag.text ?? "")
            //execute it to save
            UserDefaults.standard.synchronize()
            //Clear filds
            textNameTag.text = ""
            textValueTag.text = ""
            
            
        }
        
    }
    
    
    @IBAction func search(_ sender: Any) {
        if(textNameTag.text?.count ?? 0 > 0){
            var value = UserDefaults.standard.string(forKey: textNameTag.text ?? "")
            
           	
            textValueTag.text = value
            
            
        }
        
    }
    
    
}

