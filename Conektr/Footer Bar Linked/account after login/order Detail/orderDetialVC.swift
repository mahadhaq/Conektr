//
//  orderDetialVC.swift
//  Conektr
//
//  Created by Mr. Nabeel on 1/14/20.
//  Copyright © 2020 Mr. Nabeel. All rights reserved.
//

import Foundation
import UIKit

class orderDetailVC: UIViewController {
    
    //MARK:- IBoutlets
    @IBOutlet weak var body: UIScrollView!
    @IBOutlet var topview: UIView!
    @IBOutlet var bottomeview: UIView!
    
    @IBOutlet weak var orderno: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var orderdate: UILabel!
    
    @IBOutlet weak var subtotal: UILabel!
    @IBOutlet weak var shipping_handling: UILabel!
    @IBOutlet weak var grandtotal_excl: UILabel!
    @IBOutlet weak var tax: UILabel!
    @IBOutlet weak var grandtotal_incl: UILabel!
    
    //ship address
    @IBOutlet weak var shipline1: UILabel!
    @IBOutlet weak var shipline2: UILabel!
    @IBOutlet weak var shipline3: UILabel!
    @IBOutlet weak var shipline4: UILabel!
    @IBOutlet weak var shipline5: UILabel!
    
    @IBOutlet weak var shippingmethod: UILabel!
    
    //billing addresss
    @IBOutlet weak var billingline1: UILabel!
    @IBOutlet weak var billingline2: UILabel!
    @IBOutlet weak var billingline3: UILabel!
    @IBOutlet weak var billingline4: UILabel!
    @IBOutlet weak var billineline5: UILabel!
    
    @IBOutlet weak var paymentmethod: UILabel!
    
    
    
    
    
    //MARK:- VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        topView()
        bottomView(top: topview.frame.maxY)
    }
    func topView(){
        topview.frame = CGRect(x: 0, y: 0, width: x, height: 230)
        body.addSubview(topview)
    }
    
    func bottomView(top:CGFloat){
        
        bottomeview.frame = CGRect(x: 0, y: top, width: x, height: 660)
        body.addSubview(bottomeview)
        body.contentSize.height = bottomeview.frame.maxY
    }
    
    
    
    
    
    
    
    
    
    
    
    // MARK:- BUTTONS
    
    @IBAction func quoteBUTTON(_ sender: Any) {
        print("quote button")
    }
    
    @IBAction func reorderBUTTON(_ sender: Any) {
        print("reorder")
    }
    
    @IBAction func backBUTTON(_ sender: Any) {
        print("back")
    }
    
    
    
}
