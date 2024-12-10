import UIKit

public class UILoadingView {

    @MainActor internal static var spinner: UIActivityIndicatorView?
    
    @MainActor public static func show() {
        NotificationCenter.default.addObserver(self, selector: #selector(update), name: UIDevice.orientationDidChangeNotification, object: nil)
        if spinner == nil, let window = UIApplication.shared.windows.first {
            let frame = UIScreen.main.bounds
            let spinner = UIActivityIndicatorView(frame: frame)
            spinner.backgroundColor = UIColor.black.withAlphaComponent(0.2)
            if #available(iOS 13.0, *) {
                spinner.style = .large
            }
            window.addSubview(spinner)
            spinner.startAnimating()
            self.spinner = spinner
        }
    }

    @MainActor public static func hide() {
        guard let spinner = spinner else { return }
        spinner.stopAnimating()
        spinner.removeFromSuperview()
        self.spinner = nil
    }

    @MainActor @objc private static func update() {
        if spinner != nil {
            hide()
            show()
        }
    }
    
}
