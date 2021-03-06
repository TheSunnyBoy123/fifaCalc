import UIKit

enum assets {
    static let bg = "Background"
}

class ViewController: UIViewController {
    

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
    
    @IBAction func tapBuyButton(){
        let buy_vc = storyboard?.instantiateViewController(identifier: "buying_vc") as! BuyingViewController
        present(buy_vc, animated: true)
    }
    @IBAction func tapSellButton(){
        let sell_vc = storyboard?.instantiateViewController(identifier: "selling_vc") as! SellingViewController
        present(sell_vc, animated: true)
    }
    
}


