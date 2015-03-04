//
//  ViewController.h
//  colors
//
//  Created by Admin on 22/01/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (strong,nonatomic) IBOutlet NSString *labelText;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UILabel *coding;
@property (strong, nonatomic) IBOutlet UIView *vw;

@end

