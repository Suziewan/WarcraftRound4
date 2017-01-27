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
    //if ([object method] == true
    if ([self canTrainFootman] == YES) {
         //moved subtract gold and food to here so it happens after we know we can train them.
        //do 2 things:  1. take all of gold & make it equal all of gold -135, the cost to train a footman
        self.gold = self.gold -135;
        self.food = self.food -2;
        //then, return or produce a footman
        return [[Footman alloc]init];
    }else{ //otherwise do nothing, produce nothing
    return nil;
}
}
- (BOOL)canTrainFootman{
    if (self.food <2 || self.gold <135){
        return NO;
    }else{
        return YES;
    }
}           //repeat everything we did with Footman
-(Peasant *)trainPeasant{
    if ([self canTrainPeasant] == YES) {
        //moved subtract gold & food to here so  it happens after we know we can train them.
        self.gold = self.gold -90;
        self.food = self.food -5;     //then return a peasant
        return [[Peasant alloc]init];
    }else{                          //otherwise, return nothing
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

