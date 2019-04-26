import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var manager = [String]()
    var indexOfManager = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0...9
        {
        manager.append(String(Int.random(in: 0..<10)))
        }
        tableView.delegate = self
        tableView.dataSource = self
        printLog("Did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        printLog("Will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        printLog("Did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        printLog("Will disappear")
    }
    
    func printLog(_ string: String) {
        print("np: \(string)")
    }
    
    @IBAction func nextAction(_ sender: Any) {
        let secondController = SecondViewController.instance()
        navigationController?.pushViewController(secondController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.inputText = "Hello!"
        }
        if let destination = segue.destination as? ThirdViewController {
            destination.inputText = manager[indexOfManager]    }
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexOfManager = indexPath.row
    }
}

    extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorsTableViewCell") as! ColorsTableViewCell
            cell.setup(with: manager [indexPath.row])
        
        return cell
    }
    }


