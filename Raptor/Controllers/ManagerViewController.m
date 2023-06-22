//
//  ManagerViewController.m
//  Raptor
//
//  Created by kk on 2023-06-15.
//

#import "HistoryViewController.h"
#import "ManagerViewController.h"
#import "RestockViewController.h"

#import "Model/Ticket.h"

@interface ManagerViewController ()<UIPickerViewDelegate, UIPickerViewDataSource>



@end

@implementation ManagerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (MyStore *)managersPointerToStoreObject {
    if (!_managersPointerToStoreObject) {
        _managersPointerToStoreObject = [[MyStore alloc] init]; // Initialize your MyStore object here
    }
    return _managersPointerToStoreObject;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.managersPointerToStoreObject.tickets.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    Ticket *t = self.managersPointerToStoreObject.tickets[row];
    return t.title;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toHistory"]) {
        HistoryViewController *hvc = segue.destinationViewController;
        hvc.listOfhistoryItems = self.managersPointerToStoreObject.historyItems;
//        hvc.historyPointerToObject = self.managersPointerToStoreObject;
    }
    else if ([segue.identifier isEqualToString:@"toRestock"]) {
        RestockViewController *rvc = segue.destinationViewController;
        rvc.restockpointerToMyModel = self.managersPointerToStoreObject;
    }
}

@end
