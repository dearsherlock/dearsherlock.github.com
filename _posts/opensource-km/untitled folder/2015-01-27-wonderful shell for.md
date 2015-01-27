
###好用的for

以下為寫在批次檔案的內容，若要直接執行，請把兩個百分比改成一個。

{%gist dearsherlock/fcedad8fb1dfd89ffc2a%}


Syntax   
      FOR /L %%parameter IN (start,step,end) DO command 

Key
   start       : The first number  
   step        : The amount by which to increment the sequence 
   end         : The last number 

   command     : The command to carry out, including any 
                 command-line parameters.

   %%parameter : A replaceable parameter:
                 in a batch file use %%G (on the command line %G)