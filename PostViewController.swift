

import UIKit

class PostViewController: UIViewController {
    
    let temp = FeedViewController()



    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openInfo))
        
        self.title = temp.postTitle.title
        self.view.backgroundColor = .green
        navigationItem.rightBarButtonItem = button

        

    }
    
    @objc func openInfo() {
        let infoViewController = InfoViewController()
        navigationController?.present(infoViewController, animated: true)
    }


}
