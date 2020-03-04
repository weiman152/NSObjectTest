//
//  People.h
//  弱引用
//
//  Created by wenhuanhuan on 2020/2/18.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface People : NSObject
{
    
    __weak People *_friends;
}
@property(nonatomic, copy)NSString * name;
//@property(nonatomic, weak)People * friends;

-(id)initWithName:(NSString *)p;
-(NSString *)nameOfFriend;
-(void)setFriends:(People * _Nonnull)friends;
@end

NS_ASSUME_NONNULL_END
