//
//  LastViewController.swift
//  Starbucks
//
//  Created by 신예진 on 2022/12/31.
//

import UIKit

class LastViewController: UIViewController{
    
    @IBOutlet weak var CartNavigationBar: UINavigationBar!
    
    @IBOutlet weak var Cart1: UIView!
    @IBOutlet weak var ToffeNutLatte: UIImageView!
    @IBOutlet weak var coffeeNameToffeNutLatte: UILabel!
    @IBOutlet weak var coffeePriceToffeNutLatte: UILabel!
    @IBOutlet weak var EraseButtonToffeNutLatte: UIButton!
    
    @IBOutlet weak var payment: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 토피넛 라떼
        if UserDefaults.standard.string(forKey: "커피 이름"+"토피 넛 라떼") != nil {
            coffeeNameToffeNutLatte.text = UserDefaults.standard.string(forKey: "커피 이름"+"토피 넛 라떼")
            coffeePriceToffeNutLatte.text = String(UserDefaults.standard.integer(forKey: "토피 넛 라떼"))
            EraseButtonToffeNutLatte.addTarget(self, action: #selector(deleteToffeNutLatte), for: .touchUpInside)
        }
        else {
            coffeeNameToffeNutLatte.text = ""
            coffeePriceToffeNutLatte.text = ""
            EraseButtonToffeNutLatte.setTitle("", for: UIControl.State.normal)
        }
    }
    
    // 주문 삭제 클릭
    @objc func deleteToffeNutLatte(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: ":"+"토피 넛 라떼")
        UserDefaults.standard.removeObject(forKey: "토피 넛 라떼")
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func didTapNavigationBack(_ sender: UIBarButtonItem) {
        dismiss(animated: false, completion: nil)
    }
    

    @IBAction func didTapPayment(_ sender: UIButton) {
        
        let totalPrice: String = String(UserDefaults.standard.integer(forKey: "토피 넛 라떼"))
                                        
        let alert = UIAlertController(title: "결제", message: "총 "+totalPrice+"원", preferredStyle: UIAlertController.Style.alert)
        
        let defaultAction =  UIAlertAction(title: "결제하기", style: UIAlertAction.Style.default){(_) in exit(0)}
        let cancelAction = UIAlertAction(title: "결제 취소", style: UIAlertAction.Style.cancel, handler: nil)
            
        //메시지 창 컨트롤러에 버튼 액션을 추가
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        
        //메시지 창 컨트롤러를 표시
        self.present(alert, animated: false)
    }
}
