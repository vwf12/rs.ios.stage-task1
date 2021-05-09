#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSInteger numToConvert = [number intValue];
    if (numToConvert < 0) {
        numToConvert = numToConvert * -1;
    }
    
    NSString *numAsString = [NSString stringWithFormat:@"%ld", (long)numToConvert];
    
    NSMutableArray *chars = [[NSMutableArray alloc] initWithCapacity:[numAsString length]];
    for (int i=0; i < [numAsString length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%C", [numAsString characterAtIndex:i]];
        [chars addObject:ichar];
    }
    
    NSMutableArray *reverseArray = [NSMutableArray arrayWithCapacity:[chars count]];

    for (id element in [chars reverseObjectEnumerator]) {
        [reverseArray addObject:element];
    }
    
    return reverseArray;
}

@end
