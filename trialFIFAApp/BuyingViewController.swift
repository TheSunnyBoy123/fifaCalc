

import UIKit

class BuyingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignBG()
    }
    
    func assignBG(){
        let background = UIImage(named: assets.bg)
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    

}
