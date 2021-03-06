//
//  ViewController.m
//  SUAdvancePlayer
//
//  Created by fanghe on 17/9/15.
//  Copyright © 2017年 Sevenuncle. All rights reserved.
//

#import "ViewController.h"
#import "SUAdvancePlayer.h"
#import "SURange.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@property (nonatomic, strong) SUAdvancePlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor redColor];
//    [self testRange];
//    return;

    self.player = [[SUAdvancePlayer alloc] initPlayerWithURL:[NSURL URLWithString:@"http://vodg3ns8cfm.vod.126.net/vodg3ns8cfm/0S0r2IXc_75031_shd.mp4"]];
    self.player.playerLayer.frame = self.view.bounds;
//    [self.view.layer addSublayer:self.player.playerLayer];
    [self.player play];
    __weak typeof(self) weakSelf = self;
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 5];
//    });
//
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(7 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 3];
//    });
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(18 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 2];
//    });
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(20 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 1];
//    });
    
    
}


- (void)testRange {
    SURangePointer range1 = malloc(sizeof(SURange));
    range1->location = 100;
    range1->length   = 1;
    range1->next     = NULL;
    
    SURangePointer range2 = malloc(sizeof(SURange));
    range2->location = 12;
    range2->length   = 20;
    range2->next     = NULL;
    
    SURangePointer range3 = malloc(sizeof(SURange));
    range3->location = 33;
    range3->length   = 40;
    range3->next     = NULL;
    
    SURangePointer range4 = malloc(sizeof(SURange));
    range4->location = 100;
    range4->length   = 100;
    range4->next     = NULL;
    
    SURangePointer tmp = SUInsertNodeIntoRange(range1, range2);
//    tmp = SUInsertNodeIntoRange(tmp, range3);
//    tmp = SUInsertNodeIntoRange(tmp, range4);
//    tmp = SUInsertNodeIntoRange(tmp, range4);
//    int code = SURangePositionInSource(range2, range3);
//    SURangePrint(tmp);
//    SURangePrint(range4);
    range2->next = range3;
    range3->next = range4;
    SURangePointer resx = SUGetGapRanges(range2, range1);
//    resx = SUGetXRanges(resx, range4);
    SURangeFree(resx);
    SURangeFree(tmp);
//    SURangeFree(range4);
    SURangeFree(range2);
//    SURangeFree(range3);
    
}


@end
