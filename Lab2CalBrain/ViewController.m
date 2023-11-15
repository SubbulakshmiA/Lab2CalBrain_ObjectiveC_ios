//
//  ViewController.m
//  Lab2CalBrain
//
//  Created by user243757 on 9/21/23.
//

#import "ViewController.h"
#import "CalBrain.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myDisplay;
@property bool isNewNumber ;
@property (nonatomic) CalBrain *calBrainObj;
@end

@implementation ViewController

- (CalBrain *)calBrainObj {
    if (!_calBrainObj) {
       _calBrainObj = [[CalBrain alloc] init];
     }
    return _calBrainObj;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isNewNumber = YES;
}

- (IBAction)btnPressed:(UIButton *)sender {
    if(self.isNewNumber){
        self.myDisplay.text = sender.titleLabel.text;
        self.isNewNumber = NO;
    }else{
        self.myDisplay.text = [NSString stringWithFormat:@"%@%@", self.myDisplay.text,sender.titleLabel.text ];
    }
    NSLog(@"btnpressed");
    
}
- (IBAction)enterPressed:(UIButton *)sender {

    double valueOnDisplay = self.myDisplay.text.doubleValue;
    [self.calBrainObj pushItem:(valueOnDisplay )];
    self.isNewNumber = YES;    
}

- (IBAction)operatorBtnPressed:(UIButton *)sender {
    NSString *opr  =  sender.titleLabel.text;
     double  result = [self.calBrainObj calculate:opr];
    NSString *myString = [NSString stringWithFormat:@"%.2f",result];
    self.myDisplay.text =  myString  ;

    NSLog(@"result %f  %@",result,opr);
}

@end
