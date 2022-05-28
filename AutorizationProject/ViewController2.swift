//
//  ViewController2.swift
//  AutorizationProject
//
//  Created by Sheeloff on 06.05.2022.
//

import Foundation
import UIKit
import Kingfisher

class ViewController2: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    let url = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4zSMz_lrisSh_06BmtSmzzuqYHUcFhN9y3A&usqp=CAU")
    
    var user: Users = Users(login: "", password: "")
    
    private lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 0 , y: view.frame.midY, width: UIScreen.main.bounds.width, height: 100))
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        print(user)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImageView.kf.setImage(with: url)
        view.addSubview(label)
        label.text = "Привет, \(user.login)"
    }
    
}
