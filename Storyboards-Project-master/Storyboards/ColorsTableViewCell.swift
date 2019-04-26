import UIKit

class ColorsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(with name: String) {
        nameLabel.text = name
    }
    
}
