import UIKit

class SellingViewController: UIViewController {
    @IBOutlet weak var sellTax: UITextField!
    
    var stackView   = UIStackView()
    let boughtFor                   = UITextField()
    let profit                      = UITextField()
    let tax                         = UITextField()
    let sellFor                     = UITextField()
    let calculate                   = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        assignBG()
        configureStackView()
    }
    
    func configureStackView(){
        view.addSubview(stackView)
        setStackViewConstraints()
        stackView.axis          = .vertical
        stackView.distribution  = .fillEqually
        stackView.spacing       = 10
        addTextField()
    }
    
    func addTextField(){
        
        //setting names for buttons and textfields

        //configuring textfields and button
        boughtFor.text                          = "How much did you buy it for?"
        boughtFor.font                          = UIFont(name: "AvenirNext-Bold", size:20)
        boughtFor.borderStyle                   = .line
        boughtFor.backgroundColor               = .black
        boughtFor.textColor                     = .white
        boughtFor.textAlignment                 = .center
        boughtFor.contentVerticalAlignment      = .center
        boughtFor.keyboardType                  = UIKeyboardType.numberPad
        boughtFor.clearsOnBeginEditing          = true
        boughtFor.enablesReturnKeyAutomatically = true
        
        

        

        profit.text                             = "Profit you would like?"
        profit.font                             = UIFont(name: "AvenirNext-Bold", size:20)
        profit.clearsOnBeginEditing             = true
        profit.backgroundColor                  = .magenta
        profit.textColor                        = .white
        profit.textAlignment                    = .center
        profit.keyboardType                     = UIKeyboardType.numberPad
        boughtFor.enablesReturnKeyAutomatically = true
        
        tax.isEnabled                           = false
        tax.font                                = UIFont(name: "AvenirNext-Bold", size:20)
        tax.text                                = "Tax is"
        tax.textAlignment                       = .center
        tax.backgroundColor                     = .purple
        tax.textColor                           = .white
         
        sellFor.isEnabled                       = false
        sellFor.font                          = UIFont(name: "AvenirNext-Bold", size:20)
        sellFor.text                            = "Sell For"
        sellFor.backgroundColor                 = .magenta
        sellFor.textColor                       = .white
        sellFor.textAlignment                   = .center
        
        calculate.backgroundColor               = .black
        calculate.setTitleColor(.white, for: .normal)
        calculate.setTitle("Enter", for: .normal)

        
        //adding to stackview
        stackView.addArrangedSubview(boughtFor)
        stackView.addArrangedSubview(profit)
        stackView.addArrangedSubview(tax)
        stackView.addArrangedSubview(sellFor)
        stackView.addArrangedSubview(calculate)
    
    
    }
    
    func setStackViewConstraints(){
        //constraints
//        stackView.backgroundColor      = .black
        stackView.translatesAutoresizingMaskIntoConstraints                                                             = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200.5).isActive           = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200.5).isActive    = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive       = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive     = true
    }
    
    
    func assignBG(){
        let background              = UIImage(named: assets.bg)
        var imageView               : UIImageView!
        imageView                   = UIImageView(frame: view.bounds)
        imageView.contentMode       = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds     = true
        imageView.image             = background
        imageView.center            = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    func inputTapped(){
        let buyPrice    = Float(boughtFor.text!)!
        let profitPrice = Float(profit.text!)!
        let sellAt      = Float(Float(buyPrice)+Float(profitPrice)/0.95)
        let taxPrice    = 0.5*(sellAt)
        
        tax.text        = "Your tax is \(taxPrice)"
        sellFor.text    = "You should sell at \(sellAt)"
        }
    
}
