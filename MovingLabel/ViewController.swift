

import UIKit

class ViewController: UIViewController {

    let label = ReadingLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        
        label.text = """
            start.....
            kjke fksjfb ksjdbfkjs dfkjsdbfksj kdsjbkdbkj kdjsbfk kjsdbfkjbfks
            kjke fksjfb ksjdbfkjs dfkjsdbfksj kdsjbkdbkj kdjsbfk kjsdbfkjbfks
            kjke fksjfb ksjdbfkjs dfkjsdbfksj kdsjbkdbkj kdjsbfk kjsdbfkjbfks
            kjke fksjfb ksjdbfkjs dfkjsdbfksj kdsjbkdbkj kdjsbfk kjsdbfkjbfks
            kjke fksjfb ksjdbfkjs dfkjsdbfksj kdsjbkdbkj kdjsbfk kjsdbfkjbfks
            kjke fksjfb ksjdbfkjs dfkjsdbfksj kdsjbkdbkj kdjsbfk kjsdbfkjbfks
            end....
            """
        
        let marginGuide = self.view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: marginGuide.topAnchor, constant: 100),
            label.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor, constant: 0),
            label.heightAnchor.constraint(equalToConstant: 70),
            label.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor, constant: 0)
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        label.startAnimating()
    }
    
}

