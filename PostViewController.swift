//
//  PostViewController.swift
//  Navigation
//
//  Created by MACBOOK on 07.06.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    let temp = FeedViewController()




    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openInfo))
        
        self.title = temp.postTitle.title
        self.view.backgroundColor = .green
        navigationItem.rightBarButtonItem = button

        
        // Do any additional setup after loading the view.
    }
    
    @objc func openInfo() {
        let infoViewController = InfoViewController()
        navigationController?.present(infoViewController, animated: true)
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
