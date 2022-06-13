

import UIKit

class PersonViewController: UIViewController {
    
    let header = PersonHeaderView()



    override func viewDidLoad() {
        super.viewDidLoad()
        

        view.backgroundColor = .white
        title = "Profile"

        navigationController?.navigationBar.backgroundColor = UIColor.white


    }
       
    
    
    override func viewWillLayoutSubviews() {
        
        header.frame.origin = CGPoint(x: self.view.safeAreaInsets.left, y: self.view.safeAreaInsets.top)
        header.frame.size = CGSize(width: view.frame.width, height: view.frame.height)
        
        view.addSubview(header)
        header.addSubview(header.button)
        header.addSubview(header.image)
        header.addSubview(header.name)
        header.addSubview(header.status)
        header.addSubview(header.statusField)
        
        header.backgroundColor = .lightGray
        
        header.image.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        header.image.layer.cornerRadius = header.image.frame.width / 2
        header.button.frame = CGRect(x: 16, y: header.image.frame.maxY + 56, width: header.frame.width - 32, height: 50)
        header.status.frame = CGRect(x: header.image.frame.maxX + 16, y: header.button.frame.minY - 34 - 56, width: 300, height: 14)
        header.statusField.frame = CGRect(x: header.status.frame.minX, y: header.status.frame.maxY + 16, width: 250, height: 40)
        header.name.frame = CGRect(x: header.image.frame.maxX + 16, y: 27, width: 450, height: 18)
        
    }
    



}

