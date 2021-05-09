#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    NSInteger left = 0;
    NSInteger right = self.count - 1;
    
    if ([self count] == 0) {
        return nil;
    }
    
    if ([self[right] intValue] > [self[left] intValue]) {
        return self[0];
    }

        while ([self[left] intValue] > [self[right] intValue]) {
            NSInteger mid = left + ((right - left) / 2);
            if ([self[mid]intValue] >= [self[0] intValue]) {
                left = mid + 1;
            } else {
                right = mid;
            }
        }

    return self[left];

}

@end
