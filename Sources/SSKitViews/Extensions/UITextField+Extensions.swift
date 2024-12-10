import UIKit

public extension UITextField {
    
    @IBInspectable
    var localizedPlaceholder: String {
        set(value) {
            self.placeholder = NSLocalizedString(value, comment: "")
        }
        get {
            NSLocalizedString(self.placeholder ?? "", comment: "")
        }
    }
    
    @IBInspectable
    var localizedText: String {
        set(value) {
            self.text = NSLocalizedString(value, comment: "")
        }
        get {
            NSLocalizedString(self.text ?? "", comment: "")
        }
    }
    
}

