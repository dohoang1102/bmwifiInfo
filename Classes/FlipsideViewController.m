//
//  FlipsideViewController.m
//  bmwifiInfo
//
//  Created by Shota Fukumori on 12/13/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"


@implementation FlipsideViewController

@synthesize delegate;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];      
}


- (IBAction)done:(id)sender {
	[self.delegate flipsideViewControllerDidFinish:self];	
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction)showLicense: (id)sender {
	UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"RegexKitLite License"
													message:@"\n\n\n\n\n\n\n"
												   delegate:nil
										  cancelButtonTitle:nil
										  otherButtonTitles:@"OK", nil];
	CGRect frame = CGRectMake(14, 45, 255, 150);
	UITextView* tv = [[UITextView alloc] initWithFrame:frame];
	tv.editable = NO;
	tv.font = [UIFont systemFontOfSize:14.0];
	tv.textColor = [UIColor blackColor];
	tv.text = [NSString stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@\n%@\n%@\n\n%@",
			   @"Copyright (c) 2008-2010, John Engelhart",
			   @"All rights reserved.",
			   @"Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:",
			   @"* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.",
			   @"* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.",
			   @"* Neither the name of the Zang Industries nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.",
			   @"THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.",nil];
	[alert addSubview:tv];
	[tv release];
	[alert show];
	[alert release];
}

- (void)dealloc {
    [super dealloc];
}


@end
