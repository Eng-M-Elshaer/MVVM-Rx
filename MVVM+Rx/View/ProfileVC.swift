//
//  ProfileVC.swift
//  MVVM+Rx
//
//  Created by M.Elshaer on 16/2/20.
//  Copyright © 2020 M.Elshaer. All rights reserved.
//

import RxSwift
import RxCocoa

class ProfileVC: UIViewController {
	
	// MARK: - Outlets.
	@IBOutlet weak var userName: UILabel!
	@IBOutlet weak var profileImage: UIImageView!
	@IBOutlet weak var postImage: UIImageView!
	@IBOutlet weak var tagsLabel: UILabel!
	@IBOutlet weak var backButton: UIButton!
	
    //MARK:- Propreties
    var post: Post!

	// MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        displayData()
    }

	// MARK: - Actions
	@IBAction func backBtnTapped(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
}

// MARK: - Private Methods
extension ProfileVC {
    private func displayData() {
        userName.text = post.user
        profileImage.kf.setImage(with: post.getUserImageURL(), placeholder: UIImage(named: "profile"))
        postImage.kf.setImage(with: post.getImageURL(), placeholder: UIImage(named: "placeholder"))
        tagsLabel.text = post.getTags()
    }
    private func setupUI() {
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        postImage.layer.cornerRadius = 14
        backButton.layer.cornerRadius = 7
    }
}
