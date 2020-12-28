//
//  BillSpliterBrain.swift
//  BillSpliter
//
//  Created by João Victor Ipirajá de Alencar on 27/12/20.
//

import Foundation

class BillSpliterBrain{
    
    private var billTotal:Float = 0.0
    private var tipPercent:Float = 0.10
    private var splitter:Float = 2.0
    private var splitTotal:Float = 0.0
    
    
    func calculateSplit(){
        let st = (self.billTotal*(1.0+self.tipPercent)/self.splitter)
        self.splitTotal = st
    }
    
    func set_billTotal(bt: String){
        self.billTotal = Float(bt) ?? 0.0
    }
    
    func get_billTotal(bt: Float)->String{
        return String(format: "$ %.2f", self.billTotal)
    }
    
    func set_tipPercent(tp: Float){
        self.tipPercent = tp
    }
    
    func get_tipPercent()->String{
        let t = 100.0*self.tipPercent
        return "\(String(format: "%.f", t))%"
    }
    
    func set_splitter(s: Double){
        self.splitter = Float(s)
    }
    
    func get_splitter()->String{
        return String(format: "%.f", self.splitter)
    }
    
    func get_splitTotal()->String{
        return String(format: "$ %.2f", self.splitTotal)
    }
    
    func getMessage() ->String{
        return ("Split between \(self.get_splitter()) people, with \(self.get_tipPercent()) tip.")
    }
    
    
    
    
    
}
