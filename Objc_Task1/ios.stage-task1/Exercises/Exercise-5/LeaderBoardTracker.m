#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *resultArray = [NSMutableArray new];
    
    if ([playerArray count] == 0) {
        return @[];
    }
    
    if ([rankedArray count] == 0) {
        for (id number in playerArray) {
            [resultArray addObject:@(1)];
        }
        return resultArray;
    }
    
    NSMutableOrderedSet *rankedArrayToSet = [NSMutableOrderedSet orderedSetWithArray:rankedArray];
    
    for (id playerScore in playerArray) {
        NSInteger place = 1;
        for (id rankedScore in rankedArrayToSet) {
                if ([playerScore intValue] < [rankedScore intValue] )
                    place += 1;
        }
        [resultArray addObject:@(place)];
    }
    
    return resultArray;
}

@end
