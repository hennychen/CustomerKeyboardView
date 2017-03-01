//
//  HCinfoTextView.h
//  JCProject
//
//  Created by hennychen on 3/1/17.
//  Copyright © 2017 worm_kc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCinfoTextView : UIView
{
    UIScrollView * scrollview;
}
@property (nonatomic, strong) NSArray * scrollItem;
@property(nonatomic, weak) id <UITextInput> delegate;

@end
