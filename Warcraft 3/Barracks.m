//
//  Barracks.m
//
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"


@implementation Barracks

- (instancetype)init
{
    self.gold = 1000;
    self.food = 80;
    return self;
}
-(Footman *)trainFootman{
    
    self.gold = self.gold -135;
    self.food = self.food -2;
    
    if ([self canTrainFootman] == YES) {
        return [[Footman alloc]init];
    }else{
    return nil;
}
}
- (BOOL)canTrainFootman{
    if (self.food <2 || self.gold <135){
        return NO;
    }else{
        return YES;
    }
}
-(Peasant *)trainPeasant{
    
    self.gold = self.gold -90;
    self.food = self.food -5;
    
    if ([self canTrainPeasant] == YES) {
        return [[Peasant alloc]init];
    }else{
        return nil;
    }
}
- (BOOL)canTrainPeasant{
    if (self.food <5 || self.gold <90){
        return NO;
    }else{
        return YES;
    }
}


@end

