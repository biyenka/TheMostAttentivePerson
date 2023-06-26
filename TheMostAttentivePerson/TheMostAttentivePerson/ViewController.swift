import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var fixButton: UIButton!
    @IBOutlet private weak var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        background.backgroundColor = UIColor(patternImage: UIImage(named: "1.jpg")!)
        background.contentMode = .scaleToFill
        
        _ = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false) { [self] timer in
            background.backgroundColor = UIColor(patternImage: UIImage(named: "1_2.jpg")!)
            background.contentMode = .scaleToFill
        }
    }
    
    @IBAction func tapFixButton(_ sender: Any) {
        if background.backgroundColor == UIColor(patternImage: UIImage(named: "1_2.jpg")!) {
            background.backgroundColor = UIColor(patternImage: UIImage(named: "1.jpg")!)
            background.contentMode = .scaleToFill
        }
    }
}

