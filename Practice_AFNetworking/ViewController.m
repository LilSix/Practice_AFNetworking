//
//  ViewController.m
//  Practice_AFNetworking
//
//  Created by user36 on 2017/6/7.
//  Copyright © 2017年 user36. All rights reserved.
//

#pragma mark .h files

#import "ViewController.h"


#pragma mark Pods

#import <AFNetworking.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *mutableArray;

@end


#pragma mark -

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[self tableView] setDelegate:self];
    [[self tableView] setDataSource:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadHotText {
    
    NSString *urlString = @"http://disp.cc/api/hot_text.json";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Subtitle Cell"
                                                            forIndexPath:indexPath];
    [[cell textLabel] setText:[NSString stringWithFormat:@"第 %ld 個標題", [indexPath row]]];
    [[cell detailTextLabel] setText:[NSString stringWithFormat:@"第 %ld 個敘述", [indexPath row]]];
    
    return cell;
}

@end
