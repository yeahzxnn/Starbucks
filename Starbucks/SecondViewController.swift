//
//  SecondViewController.swift
//  Starbucks
//
//  Created by 신예진 on 2022/12/31.
//

import UIKit

class SecondViewController:UIViewController{
    
    
    @IBOutlet weak var shoppingBasket: UIBarButtonItem!
    @IBOutlet weak var ToffeNutLatte: UIImageView!
    @IBOutlet weak var IcedToffeNutLatte: UIImageView!
    @IBOutlet weak var AuroraChamomileTeaRelaxer: UIImageView!
    @IBOutlet weak var IcedAuroraChamomileTeaRelaxer: UIImageView!
    @IBOutlet weak var SnowVanillaTeaLatte: UIImageView!
    @IBOutlet weak var IcedSnowVanillaTeaLatte: UIImageView!
    @IBOutlet weak var DolceStrawberryMilk: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        let availableImgToffeNutLatte = UITapGestureRecognizer(target: self, action: #selector(touchToffeNutLatte))
        ToffeNutLatte.isUserInteractionEnabled = true
        ToffeNutLatte.addGestureRecognizer(availableImgToffeNutLatte)
        
        
        let availableImgIcedToffeNutLatte = UITapGestureRecognizer(target: self, action: #selector(touchIcedToffeNutLatte))
        IcedToffeNutLatte.isUserInteractionEnabled = true
        IcedToffeNutLatte.addGestureRecognizer(availableImgIcedToffeNutLatte)
        

        let availableImgAuroraChamomileTeaRelaxer = UITapGestureRecognizer(target: self, action: #selector(touchAuroraChamomileTeaRelaxer))
        AuroraChamomileTeaRelaxer.isUserInteractionEnabled = true
        AuroraChamomileTeaRelaxer.addGestureRecognizer(availableImgAuroraChamomileTeaRelaxer)
        
        
        let availableImgIcedAuroraChamomileTeaRelaxer = UITapGestureRecognizer(target: self, action: #selector(touchIcedAuroraChamomileTeaRelaxer))
        IcedAuroraChamomileTeaRelaxer.isUserInteractionEnabled = true
        IcedAuroraChamomileTeaRelaxer.addGestureRecognizer(availableImgIcedAuroraChamomileTeaRelaxer)
        
      
        let availableImgSnowVanillaTeaLatte = UITapGestureRecognizer(target: self, action: #selector(touchSnowVanillaTeaLatte))
        SnowVanillaTeaLatte.isUserInteractionEnabled = true
        SnowVanillaTeaLatte.addGestureRecognizer(availableImgSnowVanillaTeaLatte)
        
        
        let availableImgIcedSnowVanillaTeaLatte = UITapGestureRecognizer(target: self, action: #selector(touchIcedSnowVanillaTeaLatte))
        IcedSnowVanillaTeaLatte.isUserInteractionEnabled = true
        IcedSnowVanillaTeaLatte.addGestureRecognizer(availableImgIcedSnowVanillaTeaLatte)
        
        
        let availableImgDolceStrawberryMilk = UITapGestureRecognizer(target: self, action: #selector(touchDolceStrawberryMilk))
        DolceStrawberryMilk.isUserInteractionEnabled = true
        DolceStrawberryMilk.addGestureRecognizer(availableImgDolceStrawberryMilk)
        
    }
    
    // 장바구니
    @IBAction func didTapShoppingBasket(_ sender: UIBarButtonItem) {
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "") as! FourthViewController
        FourthViewController.modalPresentationStyle = .fullScreen
        self.present(FourthViewController, animated: true, completion: nil)
    }
    
    @objc func touchToffeNutLatte() { // 커피 클릭(이런 루트로 하면 됨!)
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        FourthViewController.result = "토피 넛 라떼"
        FourthViewController.price = 6100
        self.present(FourthViewController, animated: true, completion: nil)
    }
        
    @objc func touchIcedToffeNutLatte() { // 커피 클릭(이런 루트로 하면 됨!)
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        FourthViewController.result = "아이스 토피 넛 라떼"
        FourthViewController.price = 6100
        self.present(FourthViewController, animated: true, completion: nil)
    }
    
    @objc func touchAuroraChamomileTeaRelaxer() { // 커피 클릭(이런 루트로 하면 됨!)
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        FourthViewController.result = "오로라캐모마일릴렉서"
        FourthViewController.price = 6100
        self.present(FourthViewController, animated: true, completion: nil)
    }
    
    @objc func touchIcedAuroraChamomileTeaRelaxer() { // 커피 클릭(이런 루트로 하면 됨!)
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        FourthViewController.result = "아이스캐모마일릴렉서"
        FourthViewController.price = 6100
        self.present(FourthViewController, animated: true, completion: nil)
    }
    
    @objc func touchSnowVanillaTeaLatte() { // 커피 클릭(이런 루트로 하면 됨!)
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        FourthViewController.result = "스노우바닐라라떼"
        FourthViewController.price = 6100
        self.present(FourthViewController, animated: true, completion: nil)
    }
    
    @objc func touchIcedSnowVanillaTeaLatte() { // 커피 클릭(이런 루트로 하면 됨!)
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        FourthViewController.result = "아이스스노우바닐라라떼"
        FourthViewController.price = 6100
        self.present(FourthViewController, animated: true, completion: nil)
    }
    
    @objc func touchDolceStrawberryMilk() { // 커피 클릭(이런 루트로 하면 됨!)
        let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthVC") as! FourthViewController
        FourthViewController.result = "돌체딸기라떼"
        FourthViewController.price = 6100
        self.present(FourthViewController, animated: true, completion: nil)
    }
    
}
