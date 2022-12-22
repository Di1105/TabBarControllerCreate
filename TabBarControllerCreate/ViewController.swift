//
//  ViewController.swift
//  TabBarControllerCreate
//
//  Created by Dilara Elçioğlu on 22.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let button = UIButton()
    let tabBar = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setUpUI()
        
    }
    
    func setUpUI(){
        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.centerYWithinMargins.centerXWithinMargins.equalToSuperview()
            make.height.equalTo(20)
            make.width.equalTo(100)
        }
        button.backgroundColor = .blue
        button.setTitle("Log In", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        
    }
    @objc func buttonTapped(){
        let vc1 = UINavigationController(rootViewController: FirstVC())
        let vc2 = UINavigationController(rootViewController:SecondVC())
        let vc3 = UINavigationController(rootViewController:ThirdVC())
        let vc4 = UINavigationController(rootViewController:FourthVC())
        let vc5 = UINavigationController(rootViewController:FifthVC())
        
        vc1.title = "Home"
        vc2.title = "Contact"
        vc3.title = "Help"
        vc4.title = "About"
        vc5.title = "Setting"
        
        tabBar.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false  )

        guard let items = tabBar.tabBar.items else {
            return
        }
        let image = ["house","bell","person.circle","star","gear"]

        //Title subtitle arka plan renkleri değişecek. subtitle itemların rengi değişecek
        
        for x in 0..<items.count {
            items[x].badgeValue = "1"
            items[x].image?.withTintColor(.red)
            items[x].image = UIImage(systemName : image[x])
            
        }
        
        tabBar.modalPresentationStyle = .fullScreen
        present(tabBar, animated: true)
 
    }

}

class FirstVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Home"
    }
}

class SecondVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "Contact"
    }
}

class ThirdVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        title = "Help"
    }
}

class FourthVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = "About"
    }
}

class FifthVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        title = "Settings"
    }
}
