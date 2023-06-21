#import <Foundation/Foundation.h>

@interface Ticket : NSObject

NS_ASSUME_NONNULL_BEGIN
@property (nonatomic, strong) NSString *title;
@property  int qnt;
@property  double price;

- (instancetype)initWithTitle:(NSString *)title andQ:(NSInteger)qnt andPrice:(CGFloat)price;
//toString()
//return title + qnt + "Price" + price
//description
@end
NS_ASSUME_NONNULL_END
