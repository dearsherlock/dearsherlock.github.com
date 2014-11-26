

使用Mac的Vim編輯隱藏檔案

出現^X mode (^]^D^E^F^I^K^L^N^O^Ps^U^V^Y) 


Hello. It looks like you are trying to use nano-style keyboard shortcuts within vim.

In nano, you save with CTRL-X, then Y, then ENTER. However, this doesn't work in vim.

In vim, when you hit CTRL-X while in insert mode (the mode that allows you to type), vim thinks you are trying to use something called completion mode and is asking you what kind of completion you want to use.

When you see this, just hit the ESC key to get out of insert mode. Then, type :wq (colon + w + q) and hit ENTER. This will save your changes and exit out of the editor.

Best Answer