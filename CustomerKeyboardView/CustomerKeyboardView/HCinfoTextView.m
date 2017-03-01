//
//  HCinfoTextView.m
//  JCProject
//
//  Created by hennychen on 3/1/17.
//  Copyright © 2017 worm_kc. All rights reserved.
//

#import "HCinfoTextView.h"

#define Padding 20
@implementation HCinfoTextView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        scrollview = [[UIScrollView alloc] initWithFrame:frame];
        [self addSubview:scrollview];
        
    }
    return self;
}
-(void)setScrollItem:(NSArray *)scrollItem{
    scrollview.contentSize = CGSizeMake((scrollItem.count+1)*Padding, self.frame.size.height);
    for (int i = 0;i<scrollItem.count;i++) {
        NSString * itemstring = scrollItem[i];
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:itemstring forState:UIControlStateNormal];
        NSString *content = button.titleLabel.text;
        UIFont *font = button.titleLabel.font;
        CGSize size = CGSizeMake(MAXFLOAT, 30.0f);
        CGSize buttonSize = [content boundingRectWithSize:size
                                                  options:NSStringDrawingTruncatesLastVisibleLine  | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                               attributes:@{ NSFontAttributeName:font}
                                                  context:nil].size;
        [button setFrame:CGRectMake((1+i)*Padding + (buttonSize.width + 20)*i, 0.0, buttonSize.width + 20, 30.0)];
        button.backgroundColor = [UIColor lightTextColor];
        button.layer.cornerRadius = 15.0;
        button.layer.borderColor = [UIColor lightTextColor].CGColor;
        button.layer.borderWidth = 1.0;
        
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(setTxtWith:) forControlEvents:UIControlEventTouchUpInside];
        [scrollview addSubview:button];
    }
    
}
#pragma mark - 设置文字
-(void)setTxtWith:(UIButton *)sender{
    
    UITextRange *selectedText = [self.delegate selectedTextRange];
    if (selectedText == nil) {
        //no selection or insertion point
        //...
    }
    else if (selectedText.empty) {
        //inserting text at an insertion point
        [self.delegate replaceRange:selectedText withText:sender.titleLabel.text];
        //...
    }
    else {
        //updated a selected range
        //...
    }
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
