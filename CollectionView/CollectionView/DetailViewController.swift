//
//  DetailViewController.swift
//  CollectionView
//
//  Created by Khabbab on 2/24/18.
//  Copyright © 2018 Khabbab. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var imagelabel: UILabel!
    var dimage = UIImage()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageview.image = dimage
        imagelabel.text! = name
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
