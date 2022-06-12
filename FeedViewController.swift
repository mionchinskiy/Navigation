//
//  NewsViewController.swift
//  Navigation
//
//  Created by MACBOOK on 07.06.2022.
//

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
        



        // Do any additional setup after loading the view.
    }
    
    @objc func tap() {
        let post = PostViewController()
        navigationController?.pushViewController(post, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
