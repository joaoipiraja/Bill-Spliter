//
//  ResultViewController.swift
//  BillSpliter
//
//  Created by João Victor Ipirajá de Alencar on 27/12/20.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bsb_aux:BillSpliterBrain = BillSpliterBrain()

    @IBOutlet weak var lblSplitTotal: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
    
    
    
    @IBAction func recalculateCliked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bsb_aux.calculateSplit()
        lblSplitTotal.text = bsb_aux.get_splitTotal()
        lblMessage.text = bsb_aux.getMessage()
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
