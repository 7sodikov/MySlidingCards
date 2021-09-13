//
//  ViewController.swift
//  MySlidingCards
//
//  Created by Utkirjon on 12/09/21.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
    
    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append(Item(image: UIImage(systemName: "bookmark")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app now"))
        
        data.append(Item(image: UIImage(systemName: "bookmark")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app now"))
        
        data.append(Item(image: UIImage(systemName: "bookmark")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app now"))
        
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func didTapButton() {
        // Present the card slider
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome!"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    


}

