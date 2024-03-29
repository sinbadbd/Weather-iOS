//
//  DailyForcast.swift
//  Weather Today
//
//  Created by sinbad on 5/3/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import UIKit
class DailyForcastCell : UITableViewCell {
    
    let weatherIcon : UIImageView = UIImageView()
    let dateNameLabel : UILabel = UILabel()
    let dateLabel : UILabel = UILabel()
    let weatherDescription : UILabel = UILabel()
    let tempLabel:UILabel = UILabel()
    let maxTemlLabel : UILabel = UILabel()
    let maxTemImage : UIImageView = UIImageView()
    let minTemLabel:UILabel = UILabel()
    let minTemImage : UIImageView = UIImageView()
    let celsiusLabel : UILabel = UILabel()
    let celsiusSmallOne : UILabel = UILabel()
    let celsiusSmallTwo : UILabel = UILabel()
    let tempView : UIView = UIView()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(weatherIcon)
        weatherIcon.translatesAutoresizingMaskIntoConstraints = false
        weatherIcon.contentMode = .scaleAspectFit
        weatherIcon.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0), size: CGSize(width: 60, height: 60))
       
        addSubview(dateNameLabel)
        dateNameLabel.translatesAutoresizingMaskIntoConstraints = false
        dateNameLabel.textColor = .black
        dateNameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        dateNameLabel.text = "Saturday"
      //   dateNameLabel.backgroundColor = .red
        dateNameLabel.anchor(top: topAnchor, leading: weatherIcon.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 5, bottom: 0, right: 0), size: CGSize(width: dateNameLabel.frame.width, height: 25))
        
        dateNameLabel.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.textColor = .black
        dateLabel.font = UIFont.boldSystemFont(ofSize: 14)
        dateLabel.text = "10-20-2019"
        dateLabel.anchor(top: topAnchor, leading: dateNameLabel.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 15, left: 10, bottom: 0, right: 0))
        
        
        addSubview(weatherDescription)
        weatherDescription.translatesAutoresizingMaskIntoConstraints = false
        weatherDescription.textColor = .black
        weatherDescription.font = UIFont.systemFont(ofSize: 18)
        weatherDescription.numberOfLines = 4
        weatherDescription.text = "sky is clear sky is clear sky is clear sky is clear sky is clear sky is clearsky is clear sky is clear sky is clear"
       //  weatherDescription.backgroundColor = .red
        weatherDescription.anchor(top: dateNameLabel.bottomAnchor, leading: weatherIcon.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 5, bottom: 0, right: 0), size: CGSize(width: 230, height: weatherDescription.frame.height))
        
        addSubview(tempView)
        tempView.translatesAutoresizingMaskIntoConstraints = false
      //  tempView.backgroundColor = .red
        tempView.anchor(top: topAnchor, leading: weatherDescription.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 5, bottom: 0, right: 0), size: CGSize(width: 70, height: 90))
        
        tempView.addSubview(tempLabel)
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        tempLabel.text = "25"
        tempLabel.textAlignment = .center
        tempLabel.font = UIFont.boldSystemFont(ofSize: 26)
        tempLabel.anchor(top: tempView.topAnchor, leading: tempView.leadingAnchor, bottom: nil, trailing: tempView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        
        tempView.addSubview(celsiusLabel)
        celsiusLabel.translatesAutoresizingMaskIntoConstraints = false
        celsiusLabel.anchor(top: tempLabel.topAnchor, leading: nil, bottom: nil, trailing: tempLabel.trailingAnchor, padding: .init(top: 2, left: 0, bottom: 0, right: 0))
        celsiusLabel.textColor = .black
        celsiusLabel.text = "℃"
        celsiusLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        maxTemlLabel.textColor = .black
        maxTemlLabel.text = "30"
        maxTemlLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        minTemLabel.textColor = .black
        minTemLabel.text = "25"
        minTemLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        maxTemImage.translatesAutoresizingMaskIntoConstraints = false
        maxTemImage.contentMode = .scaleAspectFit
       // maxTemImage.backgroundColor = .green
        maxTemImage.image = #imageLiteral(resourceName: "right-arrow")
        maxTemImage.widthAnchor.constraint(equalToConstant: 8)
        maxTemImage.heightAnchor.constraint(equalToConstant: 8)
       // maxTemImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, size: CGSize(width: 20, height: 20))
        
        minTemImage.translatesAutoresizingMaskIntoConstraints = false
        minTemImage.contentMode = .scaleAspectFit
        minTemImage.widthAnchor.constraint(equalToConstant: 8)
        minTemImage.heightAnchor.constraint(equalToConstant: 8)
        minTemImage.image = #imageLiteral(resourceName: "left-arrow")
        
        celsiusSmallOne.translatesAutoresizingMaskIntoConstraints = false
        celsiusSmallOne.text = "º" 
        celsiusSmallOne.font = UIFont.systemFont(ofSize: 14)
        
        celsiusSmallTwo.translatesAutoresizingMaskIntoConstraints = false
        celsiusSmallTwo.text = "º"
        celsiusSmallTwo.font = UIFont.systemFont(ofSize: 14)
        
        let stackView = UIStackView(arrangedSubviews: [
            maxTemImage, maxTemlLabel,celsiusSmallOne, minTemImage, minTemLabel,celsiusSmallTwo
            ])
        tempView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.backgroundColor = .yellow
        stackView.distribution = .fillProportionally
        stackView.anchor(top: tempLabel.bottomAnchor, leading: nil, bottom: nil, trailing: nil, size: CGSize(width: 100, height: 50))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
