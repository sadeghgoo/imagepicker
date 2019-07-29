//
//  ViewController.swift
//  imagepicker
//
//  Created by sadegh on 7/29/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageV: UIImageView!
    let picker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gallery(_ sender: Any) {
        self.picker.delegate = self
        self.picker.sourceType = .camera
        self.present(picker, animated: true, completion: nil)
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
   
            self.imageV.image = originalImage
            
        }
        dismiss(animated: true, completion: nil)
        
        
    }
    
}
