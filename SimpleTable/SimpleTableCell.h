//
//  SimpleTableCell.h
//  SimpleTable
//
//  Created by Puthirith Nuon on 6/28/13.
//  Copyright (c) 2013 Puthirith Nuon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@end
