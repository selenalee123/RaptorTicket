#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyStore : NSObject

@property (nonatomic) NSMutableArray *tickets;

- (double)buy:(int)thisManyTicketstoBuy atIndex:(int)index;
- (BOOL)restock:(int)many atIndex:(int)index;
- (BOOL)refund:(int)many atIndex:(int)index;

@end

NS_ASSUME_NONNULL_END
