import UIKit

class YDS01: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //배경 색 투명도 넣어서 이쁘장하게 만들었음 (ㄹㅇ 깔끔해졌는데?)
        view.backgroundColor = UIColor.black.withAlphaComponent(0.85)

        // UIImageView에 탭 제스처 인식기 추가
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func imageTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "YDS03", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "YDS03" {
            if let destinationVC = segue.destination as? YDS03 {
                // 이미지를 전달합니다
                destinationVC.image = getImage()
            }
        }
    }
    
    // 이미지를 가져오는 함수
    func getImage() -> UIImage? {
        // 이미지를 가져오는 로직을 작성한다 (예: 이미지를 파일에서 로드하거나 URL에서 다운로드)
        return UIImage(named: "daesung") // 가져올 이미지의 이름으로 설정
    }
}
