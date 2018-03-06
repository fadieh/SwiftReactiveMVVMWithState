//
//  MainViewModel.swift
//  MVVMWithState
//
//  Created by Fadie on 06/03/2018.
//

struct MainViewModelState {
    var hasLoaded = false
}

class MainViewModel {
    
    var completion: ((MainViewModelState) -> Void)?
    var state = MainViewModelState() {
        didSet {
            completion?(state)
        }
    }
    
    func bind(completion: @escaping (MainViewModelState) -> Void) {
        self.completion = completion
        completion(state)
    }
    
    func changeState() {
        state.hasLoaded = true
    }
}
