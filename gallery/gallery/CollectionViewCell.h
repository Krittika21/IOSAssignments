//
//  CollectionViewCell.h
//  gallery
//
//  Created by Krittika on 3/25/19.
//  Copyright © 2019 Krittika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
