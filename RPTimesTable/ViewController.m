//
//  ViewController.m
//  RPTimesTable
//
//  Created by Ritesh on 04/11/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HeightOfScreen = [[UIScreen mainScreen]bounds].size.height;
    WidthOfScreen =[[UIScreen mainScreen]bounds].size.width;
    MyNumberTextField=[[UITextField alloc]initWithFrame:CGRectMake(20, 50, 170, 50)];
    MyNumberTextField.backgroundColor=[UIColor lightGrayColor];
    MyNumberTextField.placeholder=@"Enter Value";
    MyNumberTextField.layer.borderWidth=3;
    MyNumberTextField.layer.cornerRadius=10;
    [MyNumberTextField setTextAlignment:NSTextAlignmentCenter];
    MyNumberTextField.keyboardType=UIKeyboardTypeNumberPad;
    [self.view addSubview:MyNumberTextField];
    
    
    
    LimitOfTextField=[[UITextField alloc]initWithFrame:CGRectMake(220, 50, 170, 50)];
    LimitOfTextField.backgroundColor=[UIColor lightGrayColor];
    LimitOfTextField.placeholder=@"Enter Limit";
    LimitOfTextField.layer.borderWidth=3;
    LimitOfTextField.layer.cornerRadius=10;
    [LimitOfTextField setTextAlignment:NSTextAlignmentCenter];
    LimitOfTextField.keyboardType=UIKeyboardTypeNumberPad;
    [self.view addSubview:LimitOfTextField];
    
    
    
    //CalculateButton=[[UIButton alloc]initWithFrame:CGRectMake(160, 120, 100, 100)];
    CalculateButton =[[UIButton alloc]initWithFrame:CGRectMake(160, 150, 100, 60)];
    CalculateButton.backgroundColor=[UIColor blackColor];
    CalculateButton.layer.borderWidth=4;
    CalculateButton.layer.cornerRadius=10;
    [CalculateButton setTitle:@"Calculate" forState:UIControlStateNormal];
    [CalculateButton addTarget:self action:@selector(calMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:CalculateButton];
    
    
    mytableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 250, WidthOfScreen, HeightOfScreen-250) style:UITableViewStylePlain];
    
    mytableview.layer.borderWidth=3;
    mytableview.layer.cornerRadius=15;
    [self.view addSubview:mytableview];
    
    
    mytableview.delegate=self;
    mytableview.dataSource=self;
    self.view.backgroundColor=[UIColor purpleColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)calMethod{
    int  cureentFirstTextFieldIntValue=MyNumberTextField.text.intValue;
    int cureentSecondTextFieldIntValue=LimitOfTextField.text.intValue;
    myMutableArray=[[NSMutableArray alloc]init];
    
    for (int index=1; index<=cureentSecondTextFieldIntValue; index++)
    {
        int   answerInInt=cureentFirstTextFieldIntValue*index;
        NSString  *answerString=[NSString stringWithFormat:@"%d    *   %d  =   %d",cureentFirstTextFieldIntValue,index ,answerInInt];
        [myMutableArray addObject:answerString];
        
    }
    [mytableview reloadData];
    [self.view endEditing:YES];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return myMutableArray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    
    NSString *newString;
    newString = [myMutableArray objectAtIndex:indexPath.row];
    
    
    cell.textLabel.text = newString;
    cell.textLabel.textColor = [UIColor blueColor];
    
    return cell;
    
}

@end
