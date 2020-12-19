//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Zoe Ng on 12/18/20.
//  Copyright © 2020 Zoe Ng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement();
    }

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"];
    
    var currentElementIndex = 0;
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex += 1;
        if (currentElementIndex >= elementList.count){
            currentElementIndex = 0;
        }
        updateElement();
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex];
    }
    
    func updateElement(){
        answerLabel.text = "?";
        let elementName = elementList[currentElementIndex];
        let image = UIImage(named: elementName);
        imageView.image = image;
    }
}

