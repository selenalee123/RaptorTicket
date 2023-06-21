#import "Ticket.h"

@implementation Ticket

- (instancetype)initWithTitle:(NSString*)title andQ:(int)qnt andPrice:(double)price {
    self = [super init];
    if (self) {
        self.title = title;
        self.qnt = qnt;
        self.price = price;
    }
    return self;
}

//description
- (NSString *)description {
    return [NSString stringWithFormat:@"Ticket: %@, Quantity: %d, Price: %.2f", self.title, self.qnt, self.price];
}
@end
