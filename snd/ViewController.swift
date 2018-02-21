//
//  ViewController.swift
//  snd
//
//  Created by Никита on 17.02.2018.
//  Copyright © 2018 Никита. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var words: [String]=["До следующего раза!","На пересдачу","Не обязательно знать 'отче наш',если знаешь таблицу интегралов","Что-то твоих знаний совсем нет, меньше чем эпсилон пополам"]
    
    var counterforyes=0
    var counterforno=0
    
    @IBOutlet weak var main_button: UIButton!
    
    
    //@IBOutlet weak var output: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        yestext.text="\(UserDefaults.standard.integer(forKey:"yeses"))"
        notext.text="\(UserDefaults.standard.integer(forKey:"noes"))"
        counterforyes=UserDefaults.standard.integer(forKey:"yeses")
        counterforno=UserDefaults.standard.integer(forKey:"noes")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet weak var yestext: UITextField!
    
    @IBOutlet weak var notext: UITextField!
    
    @IBOutlet weak var output: UITextField!
    
    @IBAction func bttn(_ sender: Any) {
        let number = arc4random_uniform(10)
        let wordgener = arc4random_uniform(4)
        if (number==1)
        {
            //self.output.isEnabled=false;
            output.text=""
            main_button.setTitle("НЕТ",for: .normal)
            counterforno+=1
            UserDefaults.standard.set(counterforno, forKey:"noes")
            notext.text="\(UserDefaults.standard.integer(forKey:"noes"))"
        }
        else
        {
            counterforyes+=1
            UserDefaults.standard.set(counterforyes, forKey:"yeses")
            yestext.text="\(UserDefaults.standard.integer(forKey:"yeses"))"
            if (wordgener == 1)
            {
           //output.setTitle(words[0],for: .normal)
                output.text=words[0]
            }
            
            if (wordgener == 2)
            {
                //output.setTitle(words[1],for: .normal)
                output.text=words[1]
            }
            
            if (wordgener == 3)
            {
                //output.setTitle(words[0],for: .normal)
                output.text=words[0]
            }
            
            
             main_button.setTitle("ДА",for: .normal)
            
        }
        
    }
    
    
    
    
    
    
}

