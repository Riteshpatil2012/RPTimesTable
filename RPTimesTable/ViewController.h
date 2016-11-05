//
//  ViewController.h
//  RPTimesTable
//
//  Created by Ritesh on 04/11/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    
        CGFloat HeightOfScreen;
        CGFloat WidthOfScreen;
        UITextField *MyNumberTextField;
        UITextField *LimitOfTextField;
        UIButton *CalculateButton;
        UIView *backview;
        UITableView *mytableview;
        NSMutableArray *myMutableArray;
}



@end

