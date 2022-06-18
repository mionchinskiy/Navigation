

import UIKit

class PersonViewController: UIViewController {
    
    lazy var header = PersonHeaderView()
    
    lazy var secondButton: UIButton = {
        secondButton = UIButton()
        secondButton.setTitle("Кнопка 2", for: .normal)
        secondButton.backgroundColor = .green
        return secondButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Profile"
        navigationController?.navigationBar.backgroundColor = UIColor.white
        
        view.addSubview(header)
        view.addSubview(secondButton)
        
        header.addAllSubviews()
        header.backgroundColor = .lightGray
        header.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     header.heightAnchor.constraint(equalToConstant: 220)])

        header.setupConstraint()
        
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([secondButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     secondButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     secondButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                                     secondButton.heightAnchor.constraint(equalToConstant: 200)])

    }
    



}

