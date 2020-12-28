//
//  ViewController.swift
//  BillSpliter
//
//  Created by João Victor Ipirajá de Alencar on 27/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtBillTotal: UITextField!
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var lblSplit: UILabel!
    @IBOutlet weak var splitStepper: UIStepper!
   
    var bsb:BillSpliterBrain = BillSpliterBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func resetButtons(){
        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
       
    }
   
    @IBAction func btnTipClicked(_ sender: UIButton) {
        
        resetButtons()
        sender.isSelected = true
       
       switch sender{
      
        case zeroPercentButton:
            bsb.set_tipPercent(tp: 0.0)
           
            break
        case tenPercentButton:
            bsb.set_tipPercent(tp: 0.10)
            break
            
        case twentyPercentButton:
            bsb.set_tipPercent(tp: 0.20)
            break
        default:
            break
        }
    }
    
    
    @IBAction func btnCalculateCliked(_ sender: Any) {
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    
    @IBAction func splitStepperClick(_ sender: UIStepper) {
        bsb.set_splitter(s: sender.value)
        lblSplit.text = bsb.get_splitter()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier{
                 case "goToResults":
                    let destinationVC = segue.destination as! ResultViewController
                    destinationVC.bsb_aux = bsb
                    
                     break
                 default:
                     break
             }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        bsb.set_billTotal(bt: txtBillTotal.text!)
        //hide keyboard
    }


}

