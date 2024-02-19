//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Aleyna Yerlikaya on 15.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    var isFlower = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true //resmin üstüne tıklmaya izin verildi
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)

    }
    
    @objc func changePic(){
        
        
        
        if isFlower == true{
            imageView.image = UIImage(named: "marge")
            myLabel.text = "marge"
            isFlower = false
        }else{
            imageView.image = UIImage(named: "cicek2")
            myLabel.text = "çiçek"
            isFlower = true
        }
        
        
        
    }


}

