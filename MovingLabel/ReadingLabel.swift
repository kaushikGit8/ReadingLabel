import UIKit

class ReadingLabel: UIView {
    
    private let label = UILabel()

    var animDuration: TimeInterval = 7.0
    
    var text: String? {
        didSet {
            label.text = text
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.clipsToBounds = true
        self.backgroundColor = .clear
        addLabel()
    }
    
    func addLabel() {
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
    
        self.addSubview(label)
        let marginGuide = self.layoutMarginsGuide
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: marginGuide.topAnchor, constant: self.frame.height),
            label.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor, constant: 5),
            label.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor, constant: 5)
        ])
    }
    
    func startAnimating() {
        UIView.animate(withDuration: animDuration) {
            var y = self.label.frame.origin.y
            y -= (self.frame.height + self.label.frame.size.height + 10)
            var frame = self.label.frame
            frame.origin.y = y
            self.label.frame = frame
            self.layoutIfNeeded()
        } completion: { _ in
            var frame = self.label.frame
            frame.origin.y = self.frame.size.height + 10
            self.label.frame = frame
            self.startAnimating()
        }
    }
}
