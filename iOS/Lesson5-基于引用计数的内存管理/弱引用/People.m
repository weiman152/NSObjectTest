//
//  People.m
//  弱引用
//
//  Created by wenhuanhuan on 2020/2/18.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "People.h"

@implementation People
-(id)initWithName:(NSString *)p {
    if (self = [super init]) {
        _name = p;
//        _friends = nil;
    }
    return self;
}

-(NSString *)nameOfFriend {
    return _friends == nil ? @"none" : _friends.name;
}
- (void)setFriends:(People *)friends{
    
    _friends = friends;
    
}
@end
