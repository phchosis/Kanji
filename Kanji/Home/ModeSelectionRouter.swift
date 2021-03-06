//
//  ModeSelectionRouter.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
// 
//

import UIKit

protocol ModeSelectionRouterProtocol {
    func routeToFlashcard()
}

class ModeSelectionRouter: ModeSelectionRouterProtocol {

    weak var vc: ModeSelectionViewController?

    func routeToFlashcard() {
        let flashcardVC = FlashcardLevelViewController.asInitialVC(of: .flashcards).orDefault
        vc?.navigationController?.pushViewController(flashcardVC, animated: true)
    }
}
