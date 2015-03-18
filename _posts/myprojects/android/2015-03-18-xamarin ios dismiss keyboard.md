


Xamarin.ios如何控制輸入後鍵盤隱藏？

 this.txtZipCode.ShouldReturn += (textField) =>            {                textField.ResignFirstResponder();                return true;            };
            
            
http://developer.xamarin.com/recipes/ios/input/keyboards/dismiss_the_keyboard/