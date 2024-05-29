//
//  SubViewController.swift
//  TeamIntroduce
//
//  Created by 전성진 on 5/27/24.
//

import UIKit

class JSJViewController: UIViewController {

//    var data: Team?
    
    //머지테스트 주석
    
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var subProfileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var mbtiLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var hopeLabel: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //하위 view 컴포넌트를 모서리 둥글게 만들기
        for subview in stackView.arrangedSubviews {
              //subview.addBottomBorder(with: .darkGray, andHeight: 1)
            subview.layer.cornerRadius = 10
        }
        
        //fix로 박은 데이터
        positionLabel.text = "팀장"
        positionLabel.textColor = .orange //원래는 if 문 사용해서 팀장은 오렌지, 팀원은 회색 줄려고 했음
        subProfileImageView.layer.cornerRadius = 40 //사진 끝에 둥글게
        nameLabel.text = "전성진"
        ageLabel.text = "나이: 27"
        genderLabel.text = "성별: 남자"
        mbtiLabel.text = "MBTI: INTP"
        areaLabel.text = "거주지: 인천"
        hobbyLabel.text = "취미: 만화보기, 게임, 노래방"
        hopeLabel.text = "하고싶은말: 부족하지만 열심히 따라 가겠습니다. 잘 부탁드립니다."
    }
}

//extension UIView {
//  func addBottomBorder(with color: UIColor, andHeight height: CGFloat) {
//    let bottomBorder = UIView()
//    bottomBorder.translatesAutoresizingMaskIntoConstraints = false
//    bottomBorder.backgroundColor = color
//    self.addSubview(bottomBorder)
//    NSLayoutConstraint.activate([
//      bottomBorder.heightAnchor.constraint(equalToConstant: height),
//      bottomBorder.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//      bottomBorder.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//      bottomBorder.bottomAnchor.constraint(equalTo: self.bottomAnchor)
//    ])
//  }
//}
