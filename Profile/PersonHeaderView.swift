

import UIKit



class PersonHeaderView: UITableViewHeaderFooterView {

    lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame.size = CGSize(width: self.frame.width - 32, height: 50)
        
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
    
    lazy var name: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.text = "Евстигней Иммануилович"
        name.font = .systemFont(ofSize: 18, weight: .bold)
        name.textColor = .black
        return name
    }()
    
    lazy var statusField: UITextField = {
        let statusField = UITextField()
        statusField.translatesAutoresizingMaskIntoConstraints = false
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
    
    lazy var status: UILabel = {
        let status = UILabel()
        status.translatesAutoresizingMaskIntoConstraints = false
        status.text = "В ожидании чуда"
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.textColor = .gray
        return status
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.image = UIImage(named: "Кiт")
        image.layer.cornerRadius = 50
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        return image
    }()
    
    private var statusText = String()
    
    @objc func statusTextChanged (_ textField: UITextField) {
        statusText = statusField.text ?? "No text"
    }
         
    @objc func buttonPressed () {
        status.text = statusText
    }
    
    func addAllSubviews () {
        contentView.backgroundColor = .systemGray5
        addSubview(image)
        addSubview(name)
        addSubview(status)
        addSubview(statusField)
        addSubview(button)
    }
    
    func setupConstraint() {
        

        NSLayoutConstraint.activate([image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     image.topAnchor.constraint(equalTo: self.topAnchor, constant: 2),
                                     image.widthAnchor.constraint(equalToConstant: 100),
                                     image.heightAnchor.constraint(equalToConstant: 100)])
        

        NSLayoutConstraint.activate([name.leadingAnchor.constraint(equalTo: self.image.trailingAnchor, constant: 16),
                                     name.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
                                     name.heightAnchor.constraint(equalToConstant: 18)])
        

        NSLayoutConstraint.activate([status.leadingAnchor.constraint(equalTo: self.image.trailingAnchor, constant: 16),
                                     status.topAnchor.constraint(equalTo: self.image.bottomAnchor, constant: -36)])
        

        NSLayoutConstraint.activate([statusField.leadingAnchor.constraint(equalTo: self.status.leadingAnchor),
                                     statusField.topAnchor.constraint(equalTo: self.status.bottomAnchor, constant: 10),
                                     statusField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                                     statusField.heightAnchor.constraint(equalToConstant: 40)])
        

        NSLayoutConstraint.activate([button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     button.topAnchor.constraint(equalTo: self.statusField.bottomAnchor, constant: 10),
                                     button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                                     button.heightAnchor.constraint(equalToConstant: 50)])
    }
    
}
