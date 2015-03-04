//
//  TableViewController.m
//  colors
//
//  Created by Admin on 22/01/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController (){
    NSArray*colors;
    
}
@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    colors = [NSArray arrayWithObjects:@"AliceBlue ",@"AntiqueWhite ",@"Aqua ",@"Aquamarine ",@"Azure ",@"Beige ",@"Bisque ",@"Black ",@"BlanchedAlmond ",@"Blue ",@"BlueViolet ",@"Brown ",@"BurlyWood ",@"CadetBlue ",@"Chartreuse ",@"Chocolate ",@"Coral ",@"CornflowerBlue ",@"Cornsilk ",@"Crimson ",@"Cyan ",@"DarkBlue ",@"DarkCyan ",@"DarkGoldenRod ",@"DarkGray ",@"DarkGreen ",@"DarkKhaki ",@"DarkMagenta ",@"DarkOliveGreen ",@"DarkOrange ",@"DarkOrchid ",@"DarkRed ",@"DarkSalmon ",@"DarkSeaGreen ",@"DarkSlateBlue ",@"DarkSlateGray ",@"DarkTurquoise ",@"DarkViolet ",@"DeepPink ",@"DeepSkyBlue ",@"DimGray ",@"DodgerBlue ",@"FireBrick ",@"FloralWhite ",@"ForestGreen ",@"Fuchsia ",@"Gainsboro ",@"GhostWhite ",@"Gold ",@"GoldenRod ",@"Gray ",@"Green ",@"GreenYellow ",@"HoneyDew ",@"HotPink ",@"IndianRed  ",@"Indigo  ",@"Ivory ",@"Khaki ",@"Lavender ",@"LavenderBlush ",@"LawnGreen ",@"LemonChiffon ",@"LightBlue ",@"LightCoral ",@"LightCyan ",@"LightGoldenRodYellow ",@"LightGray ",@"LightGreen ",@"LightPink ",@"LightSalmon ",@"LightSeaGreen ",@"LightSkyBlue ",@"LightSlateGray ",@"LightSteelBlue ",@"LightYellow ",@"Lime ",@"LimeGreen ",@"Linen ",@"Magenta ",@"Maroon ",@"MediumAquaMarine ",@"MediumBlue ",@"MediumOrchid ",@"MediumPurple ",@"MediumSeaGreen ",@"MediumSlateBlue ",@"MediumSpringGreen ",@"MediumTurquoise ",@"MediumVioletRed ",@"MidnightBlue ",@"MintCream ",@"MistyRose ",@"Moccasin ",@"NavajoWhite ",@"Navy ",@"OldLace ",@"Olive ",@"OliveDrab ",@"Orange ",@"OrangeRed ",@"Orchid ",@"PaleGoldenRod ",@"PaleGreen ",@"PaleTurquoise ",@"PaleVioletRed ",@"PapayaWhip ",@"PeachPuff ",@"Peru ",@"Pink ",@"Plum ",@"PowderBlue ",@"Purple ",@"RebeccaPurple ",@"Red ",@"RosyBrown ",@"RoyalBlue ",@"SaddleBrown ",@"Salmon ",@"SandyBrown ",@"SeaGreen ",@"SeaShell ",@"Sienna ",@"Silver ",@"SkyBlue ",@"SlateBlue ",@"SlateGray ",@"Snow ",@"SpringGreen ",@"SteelBlue ",@"Tan ",@"Teal ",@"Thistle ",@"Tomato ",@"Turquoise ",@"Violet ",@"Wheat ",@"White ",@"WhiteSmoke ",@"Yellow ",@"YellowGreen "
, nil];
    

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
   
    return [colors count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
   
    cell.textLabel.text = [colors objectAtIndex:indexPath.row];

    
    // highlight the table cell color
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor redColor]; //red color
    bgColorView.layer.masksToBounds = YES;
    cell.selectedBackgroundView = bgColorView;
    
  
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   
    if ([segue.identifier isEqualToString:@"details"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ViewController *destViewController = segue.destinationViewController;
        destViewController.labelText = [colors objectAtIndex:indexPath.row];
    }
}

@end
