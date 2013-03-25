//
//  OperationView.m
//  tyresize
//
//  Created by mac on 13-3-20.
//  Copyright (c) 2013年 thinktube. All rights reserved.
//

#import "OperationView.h"
#import "HandleView.h"

@interface OperationView()

@property(strong, nonatomic)NSArray *WArray;
@property(strong, nonatomic)NSArray *AArray;
@property(strong, nonatomic)NSArray *RArray;

@property(strong, nonatomic)HandleView *nowWView;
@property(strong, nonatomic)HandleView *nowAView;
@property(strong, nonatomic)HandleView *nowRView;

@property(strong, nonatomic)HandleView *wantWView;
@property(strong, nonatomic)HandleView *wantAView;
@property(strong, nonatomic)HandleView *wantRView;

@property(strong, nonatomic)UILabel *nowTitle;
@property(strong, nonatomic)UILabel *wantTitle;

@end

@implementation OperationView
@synthesize WArray;
@synthesize AArray;
@synthesize RArray;

@synthesize nowWView;
@synthesize nowAView;
@synthesize nowRView;
@synthesize wantWView;
@synthesize wantAView;
@synthesize wantRView;

@synthesize nowTitle;
@synthesize wantTitle;


#define LINE_HEIGHT         40.0f
#define OFFSET_X            5.0f
#define HANDLE_WIDTH        150.0f
#define HANDLE_HEIGHT       30.0f


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code        
        self.WArray = [[NSArray alloc]initWithObjects:
                       INT(125),INT(135),INT(145),INT(155),INT(165),INT(175),INT(185),INT(195),INT(205),INT(215),INT(225),INT(235),INT(245),INT(255),INT(265),
                       INT(275),INT(285),INT(295),INT(305),INT(315),INT(325),INT(335),INT(345),INT(355),INT(365),nil];
        
        self.AArray = [[NSArray alloc]initWithObjects:
                       INT(30),INT(35),INT(40),INT(45),INT(50),INT(55),INT(60),INT(65),INT(70),nil];
        self.RArray = [[NSArray alloc]initWithObjects:
                       INT(10),INT(11),INT(12),INT(13),INT(14),INT(15),INT(16),INT(17),INT(18),INT(19),INT(20),INT(21),INT(22),INT(23),INT(24),nil];
        
        // label
        self.nowTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, TOTAL_WIDTH/2, HANDLE_HEIGHT)];
        [self.nowTitle setBackgroundColor:[UIColor clearColor]];
        [self.nowTitle setTextAlignment:NSTextAlignmentCenter];
        [self.nowTitle setFont:CUSTOMFONT];
        [self.nowTitle setTextColor:GREENCOLOR];
        [self.nowTitle setText:T(@"your tyre")];
        
        self.wantTitle = [[UILabel alloc]initWithFrame:CGRectMake(TOTAL_WIDTH/2, 0, TOTAL_WIDTH/2, HANDLE_HEIGHT)];
        [self.wantTitle setBackgroundColor:[UIColor clearColor]];
        [self.wantTitle setTextAlignment:NSTextAlignmentCenter];
        [self.wantTitle setFont:CUSTOMFONT];
        [self.wantTitle setTextColor:GREENCOLOR];
        [self.wantTitle setText:T(@"you want")];

        // now handle input
        
        self.nowWView = [[HandleView alloc]initWithFrame:CGRectMake(OFFSET_X, LINE_HEIGHT, HANDLE_WIDTH, HANDLE_HEIGHT)];
        self.nowWView.dataArray = self.WArray;
        self.nowAView = [[HandleView alloc]initWithFrame:CGRectMake(OFFSET_X, LINE_HEIGHT + LINE_HEIGHT, HANDLE_WIDTH, HANDLE_HEIGHT)];
        self.nowAView.dataArray = self.AArray;
        self.nowRView = [[HandleView alloc]initWithFrame:CGRectMake(OFFSET_X, LINE_HEIGHT*2 + LINE_HEIGHT, HANDLE_WIDTH, HANDLE_HEIGHT)];
        self.nowRView.dataArray = self.RArray;
        
        // want handle input

        self.wantWView = [[HandleView alloc]initWithFrame:CGRectMake(OFFSET_X+TOTAL_WIDTH/2, LINE_HEIGHT, HANDLE_WIDTH, HANDLE_HEIGHT)];
        self.wantWView.dataArray = self.WArray;
        self.wantAView = [[HandleView alloc]initWithFrame:CGRectMake(OFFSET_X+TOTAL_WIDTH/2, LINE_HEIGHT + LINE_HEIGHT, HANDLE_WIDTH, HANDLE_HEIGHT)];
        self.wantAView.dataArray = self.AArray;
        self.wantRView = [[HandleView alloc]initWithFrame:CGRectMake(OFFSET_X+TOTAL_WIDTH/2, LINE_HEIGHT*2 + LINE_HEIGHT, HANDLE_WIDTH, HANDLE_HEIGHT)];
        self.wantRView.dataArray = self.RArray;
        
        [self addSubview:self.nowWView];
        [self addSubview:self.nowAView];
        [self addSubview:self.nowRView];
        [self addSubview:self.wantWView];
        [self addSubview:self.wantAView];
        [self addSubview:self.wantRView];
        [self addSubview:self.nowTitle];
        [self addSubview:self.wantTitle];
    }
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end