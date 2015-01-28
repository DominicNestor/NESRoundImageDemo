NESRoundImageDemo
=================
Eazy way to get a nice pic with round corner,shadow,border,support autolayout.

## How to use

1.using Autolayout:

````oobjective-c
NESRoundImage *image = [[NESRoundImage alloc] initWithImage:[UIImage imageNamed:@"qrcode"]];
````

add the 'image' to any superview you want,and write the constraint code your self, the image will show correctly.

2.without autolayout:

````objective-c
NESRoundImage *image = [[NESRoundImage alloc] initWithFrame:CGRectMake(10, 30, 300, 200) image:[UIImage imageNamed:@"qrcode"]];
````

jush give him the frame you want and done.

## Author

iOS Developer with a few year experience, welcome to my personal site and see more:

http://www.nestor.me

## License

The MIT License (MIT)

Copyright (c) 2013 Oskar Groth

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
