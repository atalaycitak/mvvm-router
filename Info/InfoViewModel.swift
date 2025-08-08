//
//  InfoViewModel.swift
//  BaseController
//
//  Created by Atalay Çıtak on 31.07.2025.
//

import Foundation

final class InfoViewModel: BaseViewModel {
    var onDismiss: (() -> Void)?
    
    override init() {
        super.init()
        self.title = "Uygulama Bilgisi"
    }
}
