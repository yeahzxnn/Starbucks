//
//  ViewController.swift
//  Starbucks
//
//  Created by 신예진 on 2022/12/27.
//

import UIKit

class ViewController: UIViewController {
    
    //1. 작성해줬는데도 계속 오류????!!!!!!!!!!!!
    @IBOutlet weak var New: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 이미지가 터치
        let availableImgNew = UITapGestureRecognizer(target: self, action: #selector(touchNew))
        New.isUserInteractionEnabled = true
        New.addGestureRecognizer(availableImgNew)
        
    }
    
//    // 우측 상단 장바구니 클릭 시,
//    @IBAction func didTapShoppingBasket(_ sender: UIBarButtonItem) {
//        let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
//        thirdViewController.modalPresentationStyle = .fullScreen
//        self.present(thirdViewController, animated: true, completion: nil)
//    }
 
@objc func touchNew() { // New메뉴 클릭 시,
        //        print("haha")
        //        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        //        secondViewController.result = "토피 넛 라떼"
        //        secondViewController.price = 6100
        //        self.present(secondViewController, animated: true, completion: nil)
        //    }
    }
    
    
}
