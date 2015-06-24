//
//  ViewController.h
//  ScrollLogo
//
//  Created by BBbao App Developer on 6/17/15.
//  Copyright (c) 2015 BBbao App Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LogoView.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) LogoView *myLogo;

@end

