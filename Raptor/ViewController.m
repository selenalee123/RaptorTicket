//
//  ViewController.m
//  Raptor
//
//  Created by kk on 2023-06-15.
//

#import "ViewController.h"
#import "Model/MyStore.h"
#import "Model/Ticket.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic)MyStore *myModel;

@end

@implementation ViewController

- (MyStore*) myModel{
    if(_myModel ==nil){
        _myModel = [[MyStore alloc]init];
    }
    return _myModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Test");
    // Do any additional setup after loading the view.
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return self.myModel.tickets.count;
    NSLog(@"Test 2");
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    Ticket *t = [self.myModel.tickets objectAtIndex:row];
    return t.title;
}
@end
