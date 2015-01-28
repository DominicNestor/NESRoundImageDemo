# NESRoundImageDemo
eazy way to get a nice pic with round corner,shadow,border,support autolayout

# How to use
1.using Autolayout:

NESRoundImage *image = [[NESRoundImage alloc] initWithImage:[UIImage imageNamed:@"qrcode"]];
add the 'image' to any superview you want,and write the constraint code your self, the image with show correctly.

2.without autolayout:

NESRoundImage *image = [[NESRoundImage alloc] initWithFrame:CGRectMake(10, 30, 300, 200) image:[UIImage imageNamed:@"qrcode"]];
jush give him the frame you want and done.
