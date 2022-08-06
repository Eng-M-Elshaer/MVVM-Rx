//
//  MainViewModel.swift
//  MVVM+Rx
//
//  Created by  M.Elshaer on 16/2/20.
//  Copyright © 2020 M.Elshaer. All rights reserved.
//

import RxSwift

class MainViewModel {
	
	public let posts: PublishSubject<[Post]> = PublishSubject()
	public let isLoading: PublishSubject<Bool> = PublishSubject()
    public let error: PublishSubject<String> = PublishSubject()
	private let disposeBag = DisposeBag()

	func fetchData() {
		isLoading.onNext(true)
		ApiClient.getPosts()
			.observeOn(MainScheduler.instance)
			.subscribe(onNext: { [unowned self] response in
				print("Endpoint Called Successfully")
				self.posts.onNext(response.hits)
				self.isLoading.onNext(false)
				}, onError: { error in
					switch error {
					case APIError.conflict:
                        self.error.onNext("Conflict error")
					case APIError.forbidden:
                        self.error.onNext("Forbidden error")
					case APIError.notFound:
                        self.error.onNext("Not found error")
					default:
                        self.error.onNext("Unknown error: \(error)")
					}
			})
			.disposed(by: disposeBag)
	}
}
