//
//  GuidePageVC.h
//  MenkeTeacher
//
//  Created by admin on 2018/8/10.
//  引导页

#import <UIKit/UIKit.h>

@interface GuidePageVC : UIViewController

@property (nonatomic, strong) NSArray *imageArr;

@property (nonatomic, copy) void(^enterMainPage)();

@end
