#import "MyStore.h"
#import "Ticket.h"
#import "historyTicketPurchase.h"

@interface MyStore()

@property (nonatomic) NSMutableArray *tickets;
@property (nonatomic) NSMutableArray *historyItems;
@end

@implementation MyStore

- (NSMutableArray *)historyItems {
    if (_historyItems == nil) {
        _historyItems = [[NSMutableArray alloc] init];
    }
    return _historyItems;
}

- (NSMutableArray *)tickets {
    if (_tickets == nil) {
        _tickets = [[NSMutableArray alloc] initWithObjects:[[Ticket alloc] initWithTitle:@"Balcony" andQ:15 andPrice:200], nil];
    }
    return _tickets;
}

- (double)buy:(int)thismanyTicketstoBuy atIndex:(int)index {
    Ticket *tobuy = [self.tickets objectAtIndex:index];
    if (thismanyTicketstoBuy < tobuy.qnt) {
        historyTicketPurchase *history = [[historyTicketPurchase alloc] init];
        history.qnt = thismanyTicketstoBuy;
        history.title = tobuy.title;
        double total = tobuy.price * thismanyTicketstoBuy;
        history.price = total;
        tobuy.qnt = tobuy.qnt - thismanyTicketstoBuy;
        [self.historyItems addObject:history];
        return total;
    }
    return -1;
}

@end
