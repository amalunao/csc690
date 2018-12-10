import UIKit

class profileViewController: UIViewController {
    
    //variables
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var account: Accounts?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usernameLabel.text = account?.username
    }
    
    //when edit button is pressed
    @IBAction func editButtonPressed(_ sender: Any) {
    
    }
    
    //when view pets button is pressed
    @IBAction func viewpetsButtonPressed(_ sender: Any) {
    
    }
}
