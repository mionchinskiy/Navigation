

import UIKit



class PersonHeaderView: UIView {
    

    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector (buttonPressed), for: .touchUpInside)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.text = "Евстигней Иммануилович"
        name.font = .systemFont(ofSize: 18, weight: .bold)
        name.textColor = .black
        return name
    }()
    
    let statusField: UITextField = {
        let statusField = UITextField()
        statusField.backgroundColor = .white
        statusField.font = .systemFont(ofSize: 15, weight: .regular)
        statusField.textAlignment = NSTextAlignment.center
        statusField.textColor = .black
        statusField.layer.borderWidth = 1
        statusField.layer.borderColor = UIColor.black.cgColor
        statusField.layer.cornerRadius = 12
        statusField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return statusField
    }()
    
    let status: UILabel = {
        let status = UILabel()
        status.text = "В ожидании чуда"
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.textColor = .gray
        return status
    }()
    
    let image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Кiт")
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.clipsToBounds = true  
        return image
    }()
    
    private var statusText = String()
    
    @objc func statusTextChanged (_ textField: UITextField) {
        statusText = statusField.text!
    }
         
    @objc func buttonPressed () {
        status.text = statusText
    }
    
}
