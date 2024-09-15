//
//  ViewController.swift
//  RockPaperScissorsGame
//
//  Created by 손겸 on 9/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel! // 결과
    @IBOutlet weak var iOSChoiceLabel: UILabel! // iOS의 선택
    
    let option = ["가위", "바위", "보"] // 게임 옵션
  

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func userChoiceSelected(_ sender: UIButton) {
        
           guard let userChoice = sender.titleLabel?.text else { return }
           let computerChoice = option.randomElement()!
           
        iOSChoiceLabel.text = "iOS: \(computerChoice)"
           
        let result = determineResult(userChoice: userChoice, computerChoice: computerChoice)
                resultLabel.text = result // 승패 결과만 표시
    

}
    
    func determineResult(userChoice: String, computerChoice: String) -> String {
            if userChoice == computerChoice {
                return "비기비기 야야"
            } else if (userChoice == "가위" && computerChoice == "보") ||
                      (userChoice == "바위" && computerChoice == "가위") ||
                      (userChoice == "보" && computerChoice == "바위") {
                return "이기셨,,네요"
            } else {
                return "당신이 졌네요^^"
            }
        }
    }
