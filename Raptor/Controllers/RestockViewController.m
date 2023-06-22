//
//  RestockViewController.m
//  Raptor
//
//  Created by kk on 2023-06-15.
//

#import "RestockViewController.h"
#import "HistoryViewController.h"
#import "ManagerViewController.h"
#import "RestockViewController.h"
#import "Model/Ticket.h"


@interface RestockViewController()<UIPickerViewDelegate,UIPickerViewDataSource>


@end

@implementation RestockViewController


- (void)viewDidLoad{
    [super viewDidLoad];
}


- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.managersPointerToStoreObject.tickets.count;
}


-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    Ticket *t = [self.managersPointerToStoreObject.tickets objectAtIndex:row];
    return t.title;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toHistory"]) {
        HistoryViewController *hvc = (HistoryViewController *)segue.destinationViewController;
        hvc.listOfHistoryItems = self.managersPointerToStoreObject.tickets;
    }
    else if ([segue.identifier isEqualToString:@"toRestock"]) {
        ManagerViewController *rvc = (ManagerViewController *)segue.destinationViewController;
        rvx.managersPointerToStoreObject = self.managersPointerToStoreObject;
    }
}
@end


// Implement the necessary methods and functionality for the history view controller

@end
