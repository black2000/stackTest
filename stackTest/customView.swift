//
//  customView.swift
//  stackTest
//
//  Created by tarek hamed  on 5/12/20.
//  Copyright © 2020 tarek hamed . All rights reserved.
//

import UIKit
import SnapKit

class CustomView : UIView {
    
    var finalDate = UILabel()
    var callImage = UIImageView()
    var statusLabel = UILabel()
    var durationLabel = UILabel()
    
    override init(frame: CGRect) {
        
         super.init(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
    }
    convenience init(finalDate : String , image : UIImage , status : String , duration : String) {
        self.init()
        layer.backgroundColor = UIColor.red.cgColor
        setupFinalDate(date: finalDate)
        setupImage(image: image)
        //setupStatus(status: status)
        //setupDuration(duration: duration)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupFinalDate(date : String) {
        finalDate.text = date
        self.addSubview(finalDate)
        finalDate.textColor = UIColor.black
        
        finalDate.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
    }
    func setupImage(image : UIImage) {
        callImage.image = image
        self.addSubview(callImage)
        callImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(finalDate.snp.trailing).offset(10)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
    }
    func setupStatus(status : String) {
        statusLabel.text = status
        self.addSubview(statusLabel)
        
        
        
        
    }
    func setupDuration(duration : String) {
        durationLabel.text = duration
        self.addSubview(durationLabel)
        
        
    }
}
