import UIKit

class ThirdViewController: UIViewController {
    
  
    @IBOutlet weak var textLabel: UILabel!
    
    var inputText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = inputText
    }
    
}
