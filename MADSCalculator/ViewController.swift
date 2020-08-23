//
//  ViewController.swift
//  MADSCalculator
//
//  Created by Indiawyn Gaming on 21/08/20.
//  Copyright © 2020 myorg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataarr = [Int]()
    var oprarr = [String]()
    var storenum = ""
    let storeData = StoreData()
    
    @IBOutlet weak var textView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func valchanged(_ sender: Any) {
    
        if let text = textView.text {
            let isBackSpace = strcmp(text, "\\b")
            if !(isBackSpace == -92) {
            if text.count == 1 {
                if text.isMADS {
                    self.MakeAlert(id: 1)
                    textView.deleteBackward()
                    return
                }
            }
            if !(text.last!.isNumber || String(text.last!).isMADS) {
                self.MakeAlert(id: 2)
                print("Please enter valid inpout")
                textView.deleteBackward()
            }
        }
        }
    }
    
    
    @IBAction func ans(_ sender: Any) {
        if textView.text != "" {
        if let operation = textView.text {
           
            for i in operation {
                if String(operation.first!).isMADS || String(operation.last!).isMADS || !(i.isNumber || String(i).isMADS) {
                    self.textView.text = ""
                    self.MakeAlert(id: 3)
                    print("Bad Input")
                    return
                }
            }
            
        for i in Array(operation) {
                if i.isNumber {
                    self.storenum.append(i)
                }else if String(i).isMADS {
                    if storenum != ""{
                    self.dataarr.append(Int(self.storenum)!)
                    self.storenum = ""
                    }
                    self.oprarr.append(String(i))
                }else{
                    self.MakeAlert(id: 3)
                    print("Bad Input")
                    return
                }
            }
        }
        guard storenum != "" else {
            return
        }
        self.dataarr.append(Int(self.storenum)!)
        storenum = ""
        doOperation()
        }
        
        
        
    }
    
    
    func doOperation(){
        
        if oprarr.count < dataarr.count {
        
        while dataarr.count != 1 {
            
        print(dataarr)
        print(oprarr)
        
        if let mindx = oprarr.firstIndex(of: "*") {
         let res = dataarr[mindx] * dataarr[mindx + 1]
        dataarr[mindx] = res
        dataarr.remove(at: mindx + 1)
        oprarr.remove(at: mindx)
        continue
        }
        if let aindx = oprarr.firstIndex(of: "+") {
         let res = dataarr[aindx] + dataarr[aindx + 1]
        dataarr[aindx] = res
        dataarr.remove(at: aindx + 1)
        oprarr.remove(at: aindx)
        continue
        }
        if let dindx = oprarr.firstIndex(of: "/") {
         let res = dataarr[dindx] / dataarr[dindx + 1]
        dataarr[dindx] = res
        dataarr.remove(at: dindx + 1)
        oprarr.remove(at: dindx)
        continue
        }
        if let sindx = oprarr.firstIndex(of: "-") {
         let res = dataarr[sindx] - dataarr[sindx + 1]
        dataarr[sindx] = res
        dataarr.remove(at: sindx + 1)
        oprarr.remove(at: sindx)
        continue
        }
        }
            
        let resforstore = textView.text! + " = \(dataarr[0])"
        storeData.StoreResult(myresult: resforstore)
        textView.text = String(dataarr[0])
        }else{
         print("Invalid Input")
        self.MakeAlert(id: 3)
        print("Bad Input")
        }
        dataarr.removeAll()
        oprarr.removeAll()
        print(oprarr)
        print(dataarr)
        
    }
    
    func MakeAlert(id : Int){
    var msg = ""
      switch  id {
      case 1: msg = "Please Start with Number !"
          break
          
      case 2: msg = "Please enter valid Input !"
          break
        
      case 3: msg = "Bap Input !"
          break
        
      default:
          break
      }
         let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: .alert)
         
         alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: {_ in

         }))
         self.present(alert, animated: true)
     }
}

extension String {
    var isMADS : Bool {
        return !isEmpty && range(of: "[^+/*-]", options: .regularExpression) == nil
    }
}
