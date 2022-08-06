//
//  APIError.swift
//  IDE Porject
//
//  Created by M.Elshaer on 31/1/20.
//  Copyright © 2020 M.Elshaer. All rights reserved.
//

import Foundation

enum APIError: Error {
	case forbidden              //Status code 403
	case notFound               //Status code 404
	case conflict               //Status code 409
	case internalServerError    //Status code 500
}
