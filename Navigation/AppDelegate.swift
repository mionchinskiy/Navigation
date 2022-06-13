

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    
    var window: UIWindow?
    
    var tabBarController = UITabBarController()
    let feedViewController = FeedViewController()
    let profileViewController = PersonViewController()


    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let feed = UINavigationController(rootViewController: feedViewController)
        let profile = UINavigationController(rootViewController: profileViewController)
        
        tabBarController.viewControllers = [feed, profile]
        tabBarController.tabBar.backgroundColor = .white
        feed.tabBarItem.title = "Лента"
        feed.tabBarItem.image = UIImage(systemName: "house.fill")
        profile.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName:"person.fill"), tag: 1)

   
        
        window = UIWindow()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
  
        
        return true
    }



    


}

