import UIKit

open class SSKitRouter: NSObject, SSRouter {
    
    public var rootViewController: UINavigationController?
    public var currentViewController: UIViewController?
    public var currentTransition: SSRouterTransition?
    public var lastTransition: SSRouterTransition?
    
    public required init(with route: SSRoute) {
        let viewController = route.screen
        rootViewController = UINavigationController(rootViewController: viewController)
        rootViewController?.isNavigationBarHidden = true
        currentViewController = viewController
    }
    
}

