

import UIKit

class FeedViewController: UIViewController {

     struct Post {
        let title: String
    }
    
    lazy var button1: UIButton = {
        button1 = UIButton()
        button1.backgroundColor = .green
        button1.setTitle("Читать пост", for: .normal)
        button1.addTarget(self, action: #selector (pushToPublication), for: .touchUpInside)
        //button1.frame.size = CGSize(width: 100, height: 100)
        return button1
    }()
    
    lazy var button2: UIButton = {
        button2 = UIButton()
        button2.backgroundColor = .purple
        button2.setTitle("Читать пост", for: .normal)
        button2.addTarget(self, action: #selector (pushToPublication), for: .touchUpInside)
        //button2.frame.size = CGSize(width: 100, height: 100)
        return button2
    }()
    
    lazy var twoButtons: UIStackView = {
        twoButtons = UIStackView(arrangedSubviews: [button1, button2])
        twoButtons.axis = .vertical
        twoButtons.translatesAutoresizingMaskIntoConstraints = false
        twoButtons.spacing = 10
        twoButtons.distribution = .fillEqually
        return twoButtons
    }()
    
    let postTitle: Post = .init(title: "Бубликация")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(twoButtons)
        NSLayoutConstraint.activate([twoButtons.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     twoButtons.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                     twoButtons.widthAnchor.constraint(equalToConstant: 200),
                                     twoButtons.heightAnchor.constraint(equalToConstant: 600)])


    }
    
    @objc func pushToPublication() {
        let publication = PostViewController()
        navigationController?.pushViewController(publication, animated: true)
    }



}
