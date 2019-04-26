import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var inputText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = inputText
    }

}
