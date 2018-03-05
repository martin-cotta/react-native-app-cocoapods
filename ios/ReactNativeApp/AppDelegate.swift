import React
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let bundleUrl = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
        let view = RCTRootView(bundleURL: bundleUrl, moduleName: "ReactNativeApp", initialProperties: nil, launchOptions: launchOptions)
        window = UIWindow()
        let rootViewController = UIViewController()
        rootViewController.view = view
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        return true
    }
}
