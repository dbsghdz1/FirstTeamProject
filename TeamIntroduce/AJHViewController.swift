//
//  ViewController.swift
//  TeamIntroduceProject_Jihyoen
//
//  Created by ahnzihyeon on 5/29/24.
//

import UIKit

class AJHViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var birthLable: UILabel!
    @IBOutlet weak var mbtiLable: UILabel!
    @IBOutlet weak var hobbyLable: UILabel!
    @IBOutlet weak var instagramLable: UILabel!
    @IBOutlet weak var emailLable: UILabel!
    
    
    
    //jihyeon 인스턴스 생성
    var jihyeon = Introduce(birth: "1995.03.14", mbti: "ENFP", hobby: "Ballet", instagram: "@ahnzihyeon2da", email: "dkswlgus0314@naver.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.image = #imageLiteral(resourceName: "IMG_7605")
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        
        birthLable.text = jihyeon.birth
        mbtiLable.text = jihyeon.mbti
        hobbyLable.text = jihyeon.hobby
        instagramLable.text = jihyeon.instagram
        emailLable.text = jihyeon.email
    }
    
    //자기소개 Introduce 구조체
    struct Introduce {
        let birth: String
        let mbti: String
        let hobby: String
        let instagram: String
        let email: String
        
        
        init(birth: String, mbti: String, hobby: String, instagram: String, email: String) {
            self.birth = birth
            self.mbti = mbti
            self.hobby = hobby
            self.instagram = instagram
            self.email = email
        }
    }
    
    
}

