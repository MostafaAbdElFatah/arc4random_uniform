
import UIKit

class ViewController: UIViewController {
    
    var num = 0
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet var background: UIView!
    var words = ["hello In IOS","I'm Very Busy","Welcome in IOS","I'm Not Happy","I'm Happy"]
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = false
        btn1.setTitle("PLAY Loaded", for: UIControlState.normal)
        
        let num1 = Int.init(arc4random_uniform(5))
        label.text = String(format: "Button Clicked %i times" , num )
        label2.text = words[num1]
    }


    @IBAction func btn1_Clicked(_ sender: UIButton) {
        let num1 = Int(arc4random_uniform(5))
        btn1.setTitle("PlAY", for: UIControlState.normal)
        num += 1
        label.text = String(format: "Button Clicked %i times" , num )
        label2.text = words[num1]
    }
    
    @IBAction func changeBackgroundColor(_ sender: Any) {
        background.backgroundColor = UIColor.randomColor()
    }

}

