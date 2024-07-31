import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let verticalTextView = UIVerticalTextView(text: "縦書きの\nテキストサンプル")
        verticalTextView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(verticalTextView)
        
        NSLayoutConstraint.activate([
            verticalTextView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            verticalTextView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            verticalTextView.topAnchor.constraint(equalTo: containerView.topAnchor),
            verticalTextView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }
}
