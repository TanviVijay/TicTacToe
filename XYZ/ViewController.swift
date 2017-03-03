//
//  ViewController.swift
//  XYZ
//
//  Created by Akshat Agarwal on 10/09/16.
//  Copyright © 2016 Akshat Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var a = [String]()
    var counter=0
    var countx=0
    var counto=0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        a = ["","","","","","","","",""]
        
    }
    
    func didWin() {
        
        if  a[0] == "x" && a[1] == "x" && a[2] == "x" || a[3] == "x" && a[4] == "x" && a[5] == "x" || a[6] == "x" && a[7] == "x" && a[8] == "x" || a[0] == "x" && a[4] == "x" && a[8] == "x" || a[2] == "x" && a[4] == "x" && a[6] == "x" || a[0] == "x" && a[3] == "x" && a[6] == "x" || a[2] == "x" && a[5] == "x" && a[8] == "x" || a[1] == "x" && a[4] == "x" && a[7] == "x"
        {
            print("X wins")
            displayAlert("X wins!")
            countx=countx+1
            for i in 1...9{
                let btn = view.viewWithTag(i) as! UIButton
                btn.isUserInteractionEnabled = false
            
            
            }
        }
        else if
        ((a[0] == "o" && a[1] == "o" && a[2] == "o" ) || (a[3] == "o" && a[4] == "o" && a[5] == "o") || (a[6] == "o" && a[7] == "o" && a[8] == "o") || (a[0] == "o" && a[4] == "o" && a[8] == "o") || (a[2] == "o" && a[4] == "o" && a[6] == "o") || (a[0] == "o" && a[3] == "o" && a[6] == "o") || (a[2] == "o" && a[5] == "o" && a[8] == "o") || (a[1] == "o" && a[4] == "o" && a[7] == "o"))
        {
            print("O wins")
            displayAlert("0 wins!")
            counto=counto+1
            for i in 1...9{
                let btn = view.viewWithTag(i) as! UIButton
                btn.isUserInteractionEnabled = false
                
                
            }
        }
        else if counter == 9 {
            print("Draw")
            displayAlert("Draw")

        }
            
        
    
    }
    
    @IBAction func restart(_ sender: AnyObject) {
        counter=0
        a = ["","","","","","","","",""]
        for i in 1...9{
            let btn = view.viewWithTag(i) as! UIButton
            btn.isUserInteractionEnabled = true
            btn.setTitle("", for: UIControlState())
            btn.setTitle("", for: UIControlState.selected)
        
        }
    
    }

    @IBAction func xo(_ sender: AnyObject) {
        
        let button = sender as! UIButton
        button.isUserInteractionEnabled = false
        
        if counter%2 == 0
        {
            button.setTitle("X", for: UIControlState())
            button.setTitle("X", for: UIControlState.selected)
            a[button.tag - 1] = "x"
        }
        else
        {
            button.setTitle("O", for: UIControlState())
            button.setTitle("O", for: UIControlState.selected)
            a[button.tag - 1] = "o"
        }
        counter=counter+1
        didWin()
    }
    func displayAlert(_ winner : String){
        let alertController = UIAlertController(title : "Result: ", message: "\(winner)", preferredStyle: .alert)
        let action =  UIAlertAction(title : "Okay", style: .default, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

