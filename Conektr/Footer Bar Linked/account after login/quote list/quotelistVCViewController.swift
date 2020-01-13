//
//  quotelistVCViewController.swift
//  Conektr
//
//  Created by Mr. Nabeel on 1/13/20.
//  Copyright © 2020 Mr. Nabeel. All rights reserved.
//

import UIKit

class quotelistVCViewController: UIViewController {
    
    
    //MARK:- IBoutlets
    @IBOutlet weak var body: UIScrollView!
    @IBOutlet var header: UIView!
    
    
    
    //MARK:- VIW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView()
        quotelisttable()
    }
    func headerView() {
        header.frame = CGRect(x: 0, y: 0, width: x, height: 60)
        body.addSubview(header)
    }
    

    
    
    //MARK:- quote list table view
    let list = UI()
    
    var arr = ["one","two","three"]
    func quotelisttable(){
        list.TableView(x: 0, y: header.frame.maxY, width: x, height: y-60-70, bkcolor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), border: 0, borderColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), separatorColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), Sections: 1, SectionHeight: 0, SectionHEIGHT: {
        }, sectionView: {
        }, rows: arr.count, Rows: {
        }, editing: true, cellheight: 50, CellHeight: {
        }, Cellview: {
            self.cellView()
        }, onDelete: {
            
        }, view: body)
        
    }
    
    func cellView(){
        let cell = list.tableDelegate.cell
        let delegate = list.tableDelegate
        
        
        cell.textLabel?.text = "\(arr[delegate.index])      (\(delegate.section),\(delegate.index))"
        
    }
    
    
    
    
    
    
    //MARK:- BUTTONS
    @IBAction func quoteBUTTON(_ sender: Any) {
        print("quote button")
    }
    
}
