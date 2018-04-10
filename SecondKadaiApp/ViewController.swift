//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by classtream on 2018/04/10.
//  Copyright © 2018年 ono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = textInput.text
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let result:Bool? = textInput.text?.isEmpty == false
        
        if result == false {
            let alert = UIAlertController(title: "!!!!!", message: "名前を入力してください", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
        return result!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        textInput.text = nil
    }
    
}

