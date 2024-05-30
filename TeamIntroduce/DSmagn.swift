import UIKit

class DSmagn: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        // imageView에 이미지를 설정합니다
        if let imageToDisplay = image {
            imageView.image = imageToDisplay
            
            self.view.backgroundColor = UIColor.black 
            
        }
    }
}
