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
        
         super.init(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
    }
    convenience init(finalDate : String , image : UIImage , status : String , duration : String) {
        self.init()
        setupFinalDate(date: finalDate)
        setupImage(image: image)
        setupStatus(status: status)
        setupDuration(duration: duration)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupFinalDate(date : String) {
        finalDate.text = date
        self.addSubview(finalDate)
        finalDate.textColor = UIColor.black
        finalDate.font = finalDate.font.withSize(14)
        finalDate.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(70)
            make.height.equalTo(20)
        }
    }
    func setupImage(image : UIImage) {
        callImage.image = image
        self.addSubview(callImage)
        callImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(finalDate.snp.trailing).offset(50)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
    }
    func setupStatus(status : String) {
        statusLabel.text = status
        statusLabel.font = statusLabel.font.withSize(14)
        self.addSubview(statusLabel)
        statusLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(callImage.snp.trailing).offset(2)
            make.width.equalTo(120)
            make.height.equalTo(20)
        }
    }
    func setupDuration(duration : String) {
        durationLabel.text = duration
        self.addSubview(durationLabel)
        durationLabel.font = durationLabel.font.withSize(14)
        durationLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(statusLabel.snp.trailing).offset(1)
            make.width.equalTo(70)
            make.height.equalTo(20)
            make.trailing.equalToSuperview().offset(2)
        }
        
    }
}
