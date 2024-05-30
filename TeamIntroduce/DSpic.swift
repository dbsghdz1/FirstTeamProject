import UIKit

class DSpic: UIViewController {

    @IBOutlet weak var UIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeButtonRound()

    }
    // 버튼의 너비와 높이가 동일한지 확인
    func makeButtonRound() {
        let buttonSize = UIButton.frame.size
        let cornerRadiu = buttonSize.width / 2
        
    // 원형으로 만들기
        UIButton.layer.cornerRadius = cornerRadiu
        UIButton.clipsToBounds = true
        
    // 버튼의 색상 변경
        UIButton.backgroundColor = UIColor.clear
        
    // 버튼의 테두리 변경
        UIButton.layer.borderWidth = 2.0
        UIButton.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    
    // 버튼이 눌렸을 때 화면전환 구현
    @IBAction func buttonTapped(_ sender: Any) {
        let storyboared = UIStoryboard(name: "YDS", bundle: nil)
        if let dSp2 = storyboared.instantiateViewController(withIdentifier: "dSp2") as? DSp2{
            self.present(dSp2, animated: true, completion: nil)
            
        }
    }

}
