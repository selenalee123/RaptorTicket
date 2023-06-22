#import "ViewController.h"
#import "Model/MyStore.h"
#import "Model/Ticket.h"
#import "Controllers/ManagerViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic)MyStore *myModel;
@property int SelectedIndex ;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Test");
    // Do any additional setup after loading the view.
}

//- (MyStore*) myModel{
//    if(_myModel == nil){
//        _myModel = [[MyStore alloc]init];
//    }
//    return _myModel;
//}


-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return self.myModel.tickets.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    Ticket *t = [self.myModel.tickets objectAtIndex:row];
    return t.title;
}


-(void)pickerView:(UIPickerView *)pickerView
           didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.SelectedIndex = row;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toManager"]) {
        NSLog(@"Preparing for segue to ManagerViewController");
        
        ManagerViewController *managerVC = segue.destinationViewController;
        managerVC.managersPointerToStoreObject = self.myModel;
    }
}


@end
