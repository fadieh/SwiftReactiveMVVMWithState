//
//  ViewController.swift
//  MVVMWithState
//
//  Created by Fadie on 06/03/2018.
//

import UIKit

class ViewController: UIViewController {

    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewModel()
        setUpState()
        changeState()
    }
    
    private func configureViewModel() {
        viewModel = MainViewModel()
    }
    
    private func setUpState() {
        viewModel?.bind { [weak self] state in
            guard let _ = self else { return }
            print("hasLoaded state is \(state.hasLoaded)")
        }
    }
    
    private func changeState() {
        viewModel?.changeState()
    }
}

