//
//  ViewController.swift
//  PickerView
//
//  Created by 402-27 on 2018. 11. 18..
//  Copyright © 2018년 402-27. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    var imageFileName = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"]
    var imageArray = [UIImage?]()
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0..<10 {
            //이미지가 저장된 변수
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    //func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
   //     return imageFileName[row]
   // }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing vieW: UIView?) -> UIView {
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imageView
    }
    


}

