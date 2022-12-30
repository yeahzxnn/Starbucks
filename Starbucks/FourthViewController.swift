//
//  FourthViewController.swift
//  Starbucks
//
//  Created by 신예진 on 2022/12/31.
//

import UIKit

class FourthViewController: UIViewController{
    
    @IBOutlet weak var coffeName: UILabel!
    
    @IBOutlet weak var TallSize: UIImageView!
    
    @IBOutlet weak var GrandeSize: UIImageView!
    
    @IBOutlet weak var VentiSize: UIImageView!
    
    @IBOutlet weak var ShopCup: UIButton!
    
    @IBOutlet weak var PersonalCup: UIButton!
    
    @IBOutlet weak var OnceUseCup: UIButton!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    var result: String = "" // 커피 이름
    var price: Int = 0
    var priceResult: Int = 0
    
    @IBOutlet weak var closeButton: UIButton! // 취소하기 버튼
    @IBOutlet weak var shoppingButton: UIButton! // 장바구니에 담기 버튼
    

    override func viewDidLoad() {
        super.viewDidLoad()
        coffeName.text = result
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 20
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLabel.text = Int(sender.value).description
        
        priceResult = (Int(sender.value) * price)
        priceLabel.text = priceResult.description
    }
    
    @IBAction func tapCloseButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func tapShoppingButton(_ sender: UIButton) {
        UserDefaults.standard.set(result, forKey: "커피이름 "+coffeName.text!)
        UserDefaults.standard.set(priceResult, forKey: coffeName.text!)
        
        let LastViewController = self.storyboard?.instantiateViewController(withIdentifier: "LastVC") as! LastViewController
        LastViewController.modalPresentationStyle = .fullScreen
        self.present(LastViewController, animated: true, completion: nil)
    }

}
