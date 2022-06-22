

import UIKit

class PersonViewController: UIViewController {
    
    lazy var header: PersonHeaderView = {
        let header = PersonHeaderView()
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Profile"
        navigationController?.navigationBar.backgroundColor = UIColor.white
        
        view.addSubview(header)
        
        header.addAllSubviews()
        header.backgroundColor = .lightGray
        

        NSLayoutConstraint.activate([header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     header.heightAnchor.constraint(equalToConstant: 220)])

        header.setupConstraint()

    }
    



}

