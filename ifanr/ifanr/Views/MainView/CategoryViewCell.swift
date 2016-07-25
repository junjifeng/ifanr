//
//  CategoryViewCell.swift
//  ifanr
//
//  Created by 梁亦明 on 16/7/25.
//  Copyright © 2016年 ifanrOrg. All rights reserved.
//

import Foundation
import SnapKit

class CategoryViewCell: UICollectionViewCell, Reusable {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(menuImageView)
        self.contentView.addSubview(iconImageView)
        self.contentView.addSubview(titleLabel)
        
        setLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        menuImageView.snp_makeConstraints { (make) in
            make.edges.equalTo(self.contentView)
        }
        
        iconImageView.snp_makeConstraints { (make) in
            make.right.bottom.equalTo(self.contentView).offset(UIConstant.UI_MARGIN_5)
            make.size.equalTo(15)
        }
        
        titleLabel.snp_makeConstraints { (make) in
            make.leading.trailing.top.equalTo(self.contentView)
            make.height.equalTo(20)
        }
    }
    
    var model: CategoryModel! {
        didSet {
            self.menuImageView.image = model.backgroundImage
            self.iconImageView.image = model.icon
            self.titleLabel.text = model.title
        }
    }
    
    // 背景图
    private lazy var menuImageView: UIImageView = {
        let menuImageView = UIImageView()
        return menuImageView
    }()
    
    
    // 右下角图片
    private lazy var iconImageView: UIImageView = {
        let iconImageView = UIImageView()
        return iconImageView
    }()
    
    // 标题
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.font = UIFont.customFont_FZLTXIHJW(fontSize: 12)
        return titleLabel
    }()
    
}