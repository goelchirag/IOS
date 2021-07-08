//
//  ViewController.swift
//  memeMaker
//
//  Created by Angered Force on 4/6/1400 AP.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegment: UISegmentedControl!
    @IBOutlet weak var topCaptionSegment: UISegmentedControl!
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if(sender == topCaptionSegment){
        topCaptionLabel.text = topcaption[sender.selectedSegmentIndex].caption
        }else{
            bottomCaptionLabel.text = bottomCaption[sender.selectedSegmentIndex].caption
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        topCaptionSegment.removeAllSegments()
        bottomCaptionSegment.removeAllSegments()
        for caption in topcaption{
            topCaptionSegment.insertSegment(withTitle: caption.emoji, at: topcaption.count, animated: false)
        }
        for caption in bottomCaption{
            bottomCaptionSegment.insertSegment(withTitle: caption.emoji, at: bottomCaption.count, animated: false)
        }
        topCaptionSegment.selectedSegmentIndex = 0
        bottomCaptionSegment.selectedSegmentIndex = 0
        topCaptionLabel.text = topcaption[topCaptionSegment.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomCaption[bottomCaptionSegment.selectedSegmentIndex].caption
        
        // Do any additionalsetup after loading the view.
    }


}

