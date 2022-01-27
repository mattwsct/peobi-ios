//
//  ViewController.swift
//  PEOBI
//
//  Created by Matt Westcott on 13/10/2014.
//  Copyright (c) 2014 PEOBI. All rights reserved.
//

import Foundation
import UIKit
import MobileCoreServices

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    @IBAction func clickCameraButton(sender: UIBarButtonItem) {
        var imgPicker = UIImagePickerController();
        imgPicker.sourceType = UIImagePickerControllerSourceType.SavedPhotosAlbum;
        imgPicker.delegate = self;
        
        self.presentViewController(imgPicker, animated: true, completion: nil);
    }
    
    @IBAction func validateName(sender: UITextField) {
        var input = sender.text;
        if(input.isEmpty) {
            sender.layer.borderColor = UIColor.redColor().CGColor;
            sender.layer.borderWidth = 1;
        } else {
            sender.layer.borderWidth = 0;
        }
    }
    
    @IBAction func validateEmail(sender: UITextField) {
        var input = sender.text;
        if(input.isEmpty || input.lowercaseString.rangeOfString("@") == nil || input.lowercaseString.rangeOfString(".") == nil) {
            sender.layer.borderColor = UIColor.redColor().CGColor;
            sender.layer.borderWidth = 1;
        } else {
            sender.layer.borderWidth = 0;
        }
    }
    
    @IBAction func validatePassword(sender: UITextField) {
        var input = sender.text;
        if(input.isEmpty) {
            sender.layer.borderColor = UIColor.redColor().CGColor;
            sender.layer.borderWidth = 1;
        } else {
            sender.layer.borderWidth = 0;
        }
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        //imageView.image = image;
        dismissViewControllerAnimated(true, completion: nil);
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        //imageView.image = nil;
        dismissViewControllerAnimated(true, completion: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

