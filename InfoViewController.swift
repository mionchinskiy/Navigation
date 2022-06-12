//
//  InfoViewController.swift
//  Navigation
//
//  Created by MACBOOK on 07.06.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        
        let alertButton = UIButton(frame: CGRect(x: 100, y: 150, width: 200, height: 150))
        alertButton.backgroundColor = .white
        alertButton.setTitle("Нажми меня", for: .normal)
        alertButton.setTitleColor(.black, for: .normal)
        alertButton.addTarget(self, action: #selector(alertTap), for: .touchUpInside)
        view.addSubview(alertButton)
        

        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func alertTap() {
        let alert = UIAlertController(title: "Внимание!", message: "спасибо за внимание", preferredStyle: .alert)
        let leftAction = UIAlertAction(title: "Пожалуйста", style: .default) { _ in
            print("Вот это да!")
        }
        let rightAction = UIAlertAction(title: "Не за что", style: .default) { UIAlertAction in
            print("Восхитительно!")
        }
        alert.addAction(leftAction)
        alert.addAction(rightAction)
        self.present(alert, animated: true)
    }

}
