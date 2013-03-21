KNScratchImageView
==================

A UIImageView replacement that allows you to "scratch" if off, revealing a transparent background color showing whatever beneath it.
It also has a delegate callback with percentage of area that has been scratched off as well as customizable brush radius size.

<img src="https://github.com/kentnguyen/KNScratchImageView/blob/master/Docs/screenshot.png?raw=true" />

### Adapted from

[Scratch-n-See library](https://github.com/akopanev/iOS-Scratch-n-See)

### Features

- UIImageView replacement
- `.radius` for brush size
- Delegate callback for percentage cleared
- ARC
- Tested with iOS 5 and 6

### Installation / How to use
* Copy all files in `Source` folder to your project
* Replace your `UIImageView` with `ImageMaskView`
* Call `[theImageView beginInteraction]`

### License

UIViewController+KNSemiModal is licensed under MIT License
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
