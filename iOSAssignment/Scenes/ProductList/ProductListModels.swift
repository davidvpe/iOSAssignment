//
//  ProductListModels.swift
//  iOSAssignment
//
//  Created by David Velarde on 18/12/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum ProductList {
    // MARK: Use cases
    enum InitialLoad {
        struct Request {}
    }
    
    enum CartUpdate {
        
        enum UpdateType {
            case add
            case remove
        }
        
        struct Request {
            let productIndex: Int
            let type: UpdateType
        }
    }
    
    enum ProductInteraction {
        struct Request {
            let index: Int
        }
    }
    
    enum StartProductInteraction {
        
        struct Response {
            let index: Int
        }
        
        struct ViewModel {
            let index: Int
        }
    }
    
    enum FinishProductInteraction {
        
        struct Response {
            let index: Int
        }
        
        struct ViewModel {
            let index: Int
        }
    }
    
    enum ListProducts {
        
        struct Response {
            let products: [ProductRaw]
            let cartProducts: [CartProduct]
        }
        
        struct ViewModel {
            let products: [CartProduct]
        }
    }
}
