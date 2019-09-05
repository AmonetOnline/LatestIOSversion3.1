//
//  ApplicationScheme.swift
//  Amonet
//
//  Created by Serge Mbamba on 2019/02/16.
//  Copyright © 2019 Amonet. All rights reserved.
//

import UIKit
import Core

extension UIColor {
    static let primaryBackgroundColor =  UIColor(hex: "#EFEFF4")
    static let primaryButtonColor = UIColor(hex: "#00BFFF")
    static let primaryBlue = UIColor(hex: "#00BFFF")
    static let secondaryBackgroundColor = UIColor(hex: "##EEEEEF")
}

class UIScheme: UITableViewCell {

    class func prepareForAppearance() {
        configureGlobalNavigationBar()
        configureSideMenu()
        configureLink()
    }
    
    private class func configureGlobalNavigationBar() {
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().backItem?.backBarButtonItem?.title = " "
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
        UITabBar.appearance().tintColor = .primaryButtonColor
        let appearance = UIBarButtonItem.appearance()
        appearance.setBackButtonTitlePositionAdjustment(UIOffset.init(horizontal: 0.0, vertical: -60), for: .default)
    }
    
    private class func configureSideMenu() {
        SideMenuController.preferences.drawing.menuButtonImage = UIImage(named: "menuIcon.png")
        SideMenuController.preferences.drawing.sidePanelPosition = .overCenterPanelLeft
        SideMenuController.preferences.drawing.sidePanelWidth = 270
        SideMenuController.preferences.drawing.centerPanelShadow = true
        SideMenuController.preferences.animating.statusBarBehaviour = .showUnderlay
    }
    
    private class func  configureLink() {
        UITextView.appearance().linkTextAttributes = [ .foregroundColor: UIColor.primaryButtonColor,  NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
    }
}


extension UITableViewCell: TableViewCellModelling { }

extension UICollectionViewCell: CollectionViewCellModelling { }
