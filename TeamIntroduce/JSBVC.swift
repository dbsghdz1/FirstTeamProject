//
//  IntroduceVC.swift
//  TeamIntroduce
//
//  Created by Soo Jang on 5/27/24.
//

import UIKit

class JSBVC: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var portraitImgView: UIImageView!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var mbtiLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var extraWordsLabel: UILabel!
    var info = Infomation(name: "장수빈",email: "youdew27@gmailc.com", age: "26", mbti: "ENTP", hobby: "차 마시기", portrait: .soobeenPortrait, extraWords: "만나서 반갑습니다. 앞으로 5개월간 함께 힘내서 달려봅시다!")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        setLayout()
    }
    
    func setData() {
        nameLabel.text = info.name
        ageLabel.text = info.age
        mbtiLabel.text =  info.mbti
        hobbyLabel.text = info.hobby
        portraitImgView.image = info.portrait
        emailLabel.text = info.email
        extraWordsLabel.text = info.extraWords
    }
    
    func setLayout() {
        portraitImgView.layer.cornerRadius = portraitImgView.frame.height / 2
        ageLabel.clipsToBounds = true
        mbtiLabel.clipsToBounds = true
        hobbyLabel.clipsToBounds = true
        ageLabel.layer.cornerRadius = 8
        mbtiLabel.layer.cornerRadius = 8
        hobbyLabel.layer.cornerRadius = 8
        
    }
}

struct Infomation {
    let name: String
    let email: String
    let age: String
    let mbti: String
    let hobby: String
    let portrait: UIImage
    let extraWords: String
}
