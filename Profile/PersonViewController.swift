

import UIKit

class PersonViewController: UIViewController {
    
    struct Post {
        
        let author: String
        let description: String
        let image: String
        let likes: Int
        let views: Int
        
    }
    
    
    let tableView: UITableView = {
        let tableView = UITableView.init(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false


        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostTableViewCell")

        tableView.register(PersonHeaderView.self, forHeaderFooterViewReuseIdentifier: "PersonHeaderView")
        return tableView
    }()
    
    let postsArray: [Post] = {
        var postsArray = [Post]()
        var firstPost = Post(author: "Чехов",
                             description: "Вот чего видывал",
                             image: "cat1",
                             likes: 7,
                             views: 123)
        let secondPost = Post(author: "Толстой",
                              description: "И я не промах!",
                              image: "cat2",
                              likes: 3,
                              views: 233)
        let thirdPost = Post(author: "Тютчев",
                             description: "Эх тучка, где ты ночевала...",
                             image: "cat3",
                             likes: 8,
                             views: 456)
        let fourthPost = Post(author: "Барт Симпсон",
                              description: "Люблю грозу в начале мая",
                              image: "cat4",
                              likes: 2,
                              views: 346)
        postsArray.append(firstPost)
        postsArray.append(secondPost)
        postsArray.append(thirdPost)
        postsArray.append(fourthPost)
        return postsArray
    }()

    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        tableView.dataSource = self
        tableView.delegate = self


        
    }
    
    func layout() {
        
        view.backgroundColor = .systemGray5
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                                     tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
        
    }
    
    
    
    
}

extension PersonViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        postsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath)
        cell.textLabel?.text = self.postsArray[indexPath.row].description
        return cell
    }
    
    
}

extension PersonViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let viewHeader = tableView.dequeueReusableHeaderFooterView(withIdentifier: "PersonHeaderView") as! PersonHeaderView
        viewHeader.frame = CGRect(x: 0, y: 0, width: tableView.frame.width, height: .zero)
        
        viewHeader.addAllSubviews()
        viewHeader.setupConstraint()

        return viewHeader
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        206
    }


    
}
