//
//  ViewController.swift
//  EsPrimo
//
//  Created by Javier  on 6/9/15.
//  Copyright (c) 2015 ixavy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberInput: UITextField!

    @IBOutlet weak var answer: UILabel!
    
    @IBAction func isPrime(sender: AnyObject) {
        
        var isPrime : Bool = true
        var contador = 2
        
        if let number = Int(numberInput.text!) {
            if number == 1 || number == 2 {
                isPrime = false
            }
            while contador < number && isPrime == true {
                if (number % contador == 0) {
                    isPrime = false
                }
                contador++
            }
            if isPrime {
                answer.text = "El número \(number) ES PRIMO"
            } else
            {
                answer.text = "El número \(number) NO ES PRIMO"
            }
        } else {
            answer.text = "Introduce un número"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

