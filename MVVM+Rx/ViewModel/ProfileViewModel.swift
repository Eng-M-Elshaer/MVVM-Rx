//
//  ProfileViewModel.swift
//  MVVM+Rx
//
//  Created by  M.Elshaer on 16/2/20.
//  Copyright © 2020 M.Elshaer. All rights reserved.
//

import RxSwift

class ProfileViewModel {
    public let post: BehaviorSubject<Post> = BehaviorSubject(value: Post())
}
