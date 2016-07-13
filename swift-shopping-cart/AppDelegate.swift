//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let item = Item(name: "Item", priceInCents: 10)
        let item2 = Item(name: "Item", priceInCents: 10)
        
        print(item == item2)
        
        return true
    }
}

