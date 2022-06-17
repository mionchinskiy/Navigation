

import UIKit

class FeedViewController: UIViewController {

     struct Post {
        let title: String
    }
    
    let button = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 150))
    let postTitle: Post = .init(title: "Бубликация")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        button.backgroundColor = .white
        button.setTitle("Пост", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
        

    }
    
    @objc func tap() {
        let post = PostViewController()
        navigationController?.pushViewController(post, animated: true)
    }



}
