---
layout: post
category : Star Printer 
tagline: "Android連接Star印製"
tags : [Android Develop,教學文章,Star Printer,Android Studio]
title: "整理Android 連接Star印表機的控制碼"

---

###整理控制碼(java版)



| 控制碼陣列                                                                                                                                                                                                                                                                                             | 描述                        |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
| { 0x1b, 0x40 }                                                                                                                                                                                                                                                                                         | Initialization              |
| { 0x1b, 0x44, 0x10, 0x00 }                                                                                                                                                                                                                                                                             | \<ESC> \<D> n1 n2 nk \<NUL> |
| { 0x1b, 0x1d, 0x61, 0x31 }                                                                                                                                                                                                                                                                             | \<ESC> \<GS> a n            |
| { 0x1b, 0x69, 0x02, 0x00 }                                                                                                                                                                                                                                                                             | \<ESC> \<i> n1 n2           |
| { 0x1b, 0x45 }                                                                                                                                                                                                                                                                                         | \<ESC> \<E> 加上加粗線      |
| { 0x1b, 0x46 }                                                                                                                                                                                                                                                                                         | \<ESC> \<F> 取消加粗線      |
| {0x1b, 0x1c, 0x70, 0x01, 0x00}                                                                                                                                                                                                                                                                         | Stored Logo Printing        |
| { 0x1b, 0x1d, 0x61, 0x01} { 0x1b, 0x62, 0x34, 0x31, 0x32, 0x50 } "content_to_1D_barcode_\u001e\r\n".getBytes()                                                                                                                                                                                         | 1D barcode example          |
| { 0x1b, 0x1d, 0x79, 0x53, 0x30, 0x02} { 0x1b, 0x1d, 0x79, 0x53, 0x31, 0x03 } { 0x1b, 0x1d, 0x79, 0x53, 0x32, 0x03} { 0x1b, 0x1d, 0x79, 0x44, 0x31, 0x00, (byte) (barCodeData.length % 256), (byte) (barCodeData.length / 256) } barCodeData { 0x1b, 0x1d, 0x79, 0x50, 0x0a} { 0x1b, 0x1d, 0x61, 0x30 } | QRCode example              |
| \n                                                                                                                                                                                                                                                                                                     | 換行                        |
| { 0x1b, 0x64, 0x33 }                                                                                                                                                                                                                                                                                   | Cut                         |
| { 0x07 }                                                                                                                                                                                                                                                                                               | Kick cash drawer            |


### Unicode 參考表
![image](https://farm6.staticflickr.com/5608/15719586041_9e97f46886_o.png)


對照上圖<ESC> 是ESC鍵，對照就是0x1b  
對照上圖 ＠ 就是0x40  
對照上圖 D 就是0x44

或是如下面這個[Unicode對照表](https://docs.google.com/spreadsheets/d/1XwL1L8QbrR_TAav9GMp8oY9avqEV92yrtxl0loz339M/edit?usp=sharing)，可以看到UTF-8欄。

<table ><thead><tr><th>ASCII</th><th>UTF-8</th><th>Unicode</th><th>Character</th><th>Name</th></tr></thead><tbody><tr><td>0x7F</td><td>0x7F</td><td>0x007F</td><td></td><td><small>DELETE</small></td></tr><tr><td>0x7E</td><td>0x7E</td><td>0x007E</td><td>~</td><td><small>TILDE</small></td></tr><tr><td>0x7D</td><td>0x7D</td><td>0x007D</td><td>}</td><td><small>RIGHT CURLY BRACKET</small></td></tr><tr><td>0x7C</td><td>0x7C</td><td>0x007C</td><td>|</td><td><small>VERTICAL LINE</small></td></tr><tr><td>0x7B</td><td>0x7B</td><td>0x007B</td><td>{</td><td><small>LEFT CURLY BRACKET</small></td></tr><tr><td>0x7A</td><td>0x7A</td><td>0x007A</td><td>z</td><td><small>LATIN SMALL LETTER Z</small></td></tr><tr><td>0x79</td><td>0x79</td><td>0x0079</td><td>y</td><td><small>LATIN SMALL LETTER Y</small></td></tr><tr><td>0x78</td><td>0x78</td><td>0x0078</td><td>x</td><td><small>LATIN SMALL LETTER X</small></td></tr><tr><td>0x77</td><td>0x77</td><td>0x0077</td><td>w</td><td><small>LATIN SMALL LETTER W</small></td></tr><tr><td>0x76</td><td>0x76</td><td>0x0076</td><td>v</td><td><small>LATIN SMALL LETTER V</small></td></tr><tr><td>0x75</td><td>0x75</td><td>0x0075</td><td>u</td><td><small>LATIN SMALL LETTER U</small></td></tr><tr><td>0x74</td><td>0x74</td><td>0x0074</td><td>t</td><td><small>LATIN SMALL LETTER T</small></td></tr><tr><td>0x73</td><td>0x73</td><td>0x0073</td><td>s</td><td><small>LATIN SMALL LETTER S</small></td></tr><tr><td>0x72</td><td>0x72</td><td>0x0072</td><td>r</td><td><small>LATIN SMALL LETTER R</small></td></tr><tr><td>0x71</td><td>0x71</td><td>0x0071</td><td>q</td><td><small>LATIN SMALL LETTER Q</small></td></tr><tr><td>0x70</td><td>0x70</td><td>0x0070</td><td>p</td><td><small>LATIN SMALL LETTER P</small></td></tr><tr><td>0x6F</td><td>0x6F</td><td>0x006F</td><td>o</td><td><small>LATIN SMALL LETTER O</small></td></tr><tr><td>0x6E</td><td>0x6E</td><td>0x006E</td><td>n</td><td><small>LATIN SMALL LETTER N</small></td></tr><tr><td>0x6D</td><td>0x6D</td><td>0x006D</td><td>m</td><td><small>LATIN SMALL LETTER M</small></td></tr><tr><td>0x6C</td><td>0x6C</td><td>0x006C</td><td>l</td><td><small>LATIN SMALL LETTER L</small></td></tr><tr><td>0x6B</td><td>0x6B</td><td>0x006B</td><td>k</td><td><small>LATIN SMALL LETTER K</small></td></tr><tr><td>0x6A</td><td>0x6A</td><td>0x006A</td><td>j</td><td><small>LATIN SMALL LETTER J</small></td></tr><tr><td>0x69</td><td>0x69</td><td>0x0069</td><td>i</td><td><small>LATIN SMALL LETTER I</small></td></tr><tr><td>0x68</td><td>0x68</td><td>0x0068</td><td>h</td><td><small>LATIN SMALL LETTER H</small></td></tr><tr><td>0x67</td><td>0x67</td><td>0x0067</td><td>g</td><td><small>LATIN SMALL LETTER G</small></td></tr><tr><td>0x66</td><td>0x66</td><td>0x0066</td><td>f</td><td><small>LATIN SMALL LETTER F</small></td></tr><tr><td>0x65</td><td>0x65</td><td>0x0065</td><td>e</td><td><small>LATIN SMALL LETTER E</small></td></tr><tr><td>0x64</td><td>0x64</td><td>0x0064</td><td>d</td><td><small>LATIN SMALL LETTER D</small></td></tr><tr><td>0x63</td><td>0x63</td><td>0x0063</td><td>c</td><td><small>LATIN SMALL LETTER C</small></td></tr><tr><td>0x62</td><td>0x62</td><td>0x0062</td><td>b</td><td><small>LATIN SMALL LETTER B</small></td></tr><tr><td>0x61</td><td>0x61</td><td>0x0061</td><td>a</td><td><small>LATIN SMALL LETTER A</small></td></tr><tr><td>0x60</td><td>0x60</td><td>0x0060</td><td>`</td><td><small>GRAVE ACCENT</small></td></tr><tr><td>0x5F</td><td>0x5F</td><td>0x005F</td><td>_</td><td><small>LOW LINE</small></td></tr><tr><td>0x5E</td><td>0x5E</td><td>0x005E</td><td>^</td><td><small>CIRCUMFLEX ACCENT</small></td></tr><tr><td>0x5D</td><td>0x5D</td><td>0x005D</td><td>]</td><td><small>RIGHT SQUARE BRACKET</small></td></tr><tr><td>0x5C</td><td>0x5C</td><td>0x005C</td><td>\</td><td><small>REVERSE SOLIDUS</small></td></tr><tr><td>0x5B</td><td>0x5B</td><td>0x005B</td><td>[</td><td><small>LEFT SQUARE BRACKET</small></td></tr><tr><td>0x5A</td><td>0x5A</td><td>0x005A</td><td>Z</td><td><small>LATIN CAPITAL LETTER Z</small></td></tr><tr><td>0x59</td><td>0x59</td><td>0x0059</td><td>Y</td><td><small>LATIN CAPITAL LETTER Y</small></td></tr><tr><td>0x58</td><td>0x58</td><td>0x0058</td><td>X</td><td><small>LATIN CAPITAL LETTER X</small></td></tr><tr><td>0x57</td><td>0x57</td><td>0x0057</td><td>W</td><td><small>LATIN CAPITAL LETTER W</small></td></tr><tr><td>0x56</td><td>0x56</td><td>0x0056</td><td>V</td><td><small>LATIN CAPITAL LETTER V</small></td></tr><tr><td>0x55</td><td>0x55</td><td>0x0055</td><td>U</td><td><small>LATIN CAPITAL LETTER U</small></td></tr><tr><td>0x54</td><td>0x54</td><td>0x0054</td><td>T</td><td><small>LATIN CAPITAL LETTER T</small></td></tr><tr><td>0x53</td><td>0x53</td><td>0x0053</td><td>S</td><td><small>LATIN CAPITAL LETTER S</small></td></tr><tr><td>0x52</td><td>0x52</td><td>0x0052</td><td>R</td><td><small>LATIN CAPITAL LETTER R</small></td></tr><tr><td>0x51</td><td>0x51</td><td>0x0051</td><td>Q</td><td><small>LATIN CAPITAL LETTER Q</small></td></tr><tr><td>0x50</td><td>0x50</td><td>0x0050</td><td>P</td><td><small>LATIN CAPITAL LETTER P</small></td></tr><tr><td>0x4F</td><td>0x4F</td><td>0x004F</td><td>O</td><td><small>LATIN CAPITAL LETTER O</small></td></tr><tr><td>0x4E</td><td>0x4E</td><td>0x004E</td><td>N</td><td><small>LATIN CAPITAL LETTER N</small></td></tr><tr><td>0x4D</td><td>0x4D</td><td>0x004D</td><td>M</td><td><small>LATIN CAPITAL LETTER M</small></td></tr><tr><td>0x4C</td><td>0x4C</td><td>0x004C</td><td>L</td><td><small>LATIN CAPITAL LETTER L</small></td></tr><tr><td>0x4B</td><td>0x4B</td><td>0x004B</td><td>K</td><td><small>LATIN CAPITAL LETTER K</small></td></tr><tr><td>0x4A</td><td>0x4A</td><td>0x004A</td><td>J</td><td><small>LATIN CAPITAL LETTER J</small></td></tr><tr><td>0x49</td><td>0x49</td><td>0x0049</td><td>I</td><td><small>LATIN CAPITAL LETTER I</small></td></tr><tr><td>0x48</td><td>0x48</td><td>0x0048</td><td>H</td><td><small>LATIN CAPITAL LETTER H</small></td></tr><tr><td>0x47</td><td>0x47</td><td>0x0047</td><td>G</td><td><small>LATIN CAPITAL LETTER G</small></td></tr><tr><td>0x46</td><td>0x46</td><td>0x0046</td><td>F</td><td><small>LATIN CAPITAL LETTER F</small></td></tr><tr><td>0x45</td><td>0x45</td><td>0x0045</td><td>E</td><td><small>LATIN CAPITAL LETTER E</small></td></tr><tr><td>0x44</td><td>0x44</td><td>0x0044</td><td>D</td><td><small>LATIN CAPITAL LETTER D</small></td></tr><tr><td>0x43</td><td>0x43</td><td>0x0043</td><td>C</td><td><small>LATIN CAPITAL LETTER C</small></td></tr><tr><td>0x42</td><td>0x42</td><td>0x0042</td><td>B</td><td><small>LATIN CAPITAL LETTER B</small></td></tr><tr><td>0x41</td><td>0x41</td><td>0x0041</td><td>A</td><td><small>LATIN CAPITAL LETTER A</small></td></tr><tr><td>0x40</td><td>0x40</td><td>0x0040</td><td>@</td><td><small>COMMERCIAL AT</small></td></tr><tr><td>0x3F</td><td>0x3F</td><td>0x003F</td><td>?</td><td><small>QUESTION MARK</small></td></tr><tr><td>0x3E</td><td>0x3E</td><td>0x003E</td><td>></td><td><small>GREATER-THAN SIGN</small></td></tr><tr><td>0x3D</td><td>0x3D</td><td>0x003D</td><td>=</td><td><small>EQUALS SIGN</small></td></tr><tr><td>0x3C</td><td>0x3C</td><td>0x003C</td><td><</td><td><small>LESS-THAN SIGN</small></td></tr><tr><td>0x3B</td><td>0x3B</td><td>0x003B</td><td>;</td><td><small>SEMICOLON</small></td></tr><tr><td>0x3A</td><td>0x3A</td><td>0x003A</td><td>:</td><td><small>COLON</small></td></tr><tr><td>0x39</td><td>0x39</td><td>0x0039</td><td>9</td><td><small>DIGIT NINE</small></td></tr><tr><td>0x38</td><td>0x38</td><td>0x0038</td><td>8</td><td><small>DIGIT EIGHT</small></td></tr><tr><td>0x37</td><td>0x37</td><td>0x0037</td><td>7</td><td><small>DIGIT SEVEN</small></td></tr><tr><td>0x36</td><td>0x36</td><td>0x0036</td><td>6</td><td><small>DIGIT SIX</small></td></tr><tr><td>0x35</td><td>0x35</td><td>0x0035</td><td>5</td><td><small>DIGIT FIVE</small></td></tr><tr><td>0x34</td><td>0x34</td><td>0x0034</td><td>4</td><td><small>DIGIT FOUR</small></td></tr><tr><td>0x33</td><td>0x33</td><td>0x0033</td><td>3</td><td><small>DIGIT THREE</small></td></tr><tr><td>0x32</td><td>0x32</td><td>0x0032</td><td>2</td><td><small>DIGIT TWO</small></td></tr><tr><td>0x31</td><td>0x31</td><td>0x0031</td><td>1</td><td><small>DIGIT ONE</small></td></tr><tr><td>0x30</td><td>0x30</td><td>0x0030</td><td>0</td><td><small>DIGIT ZERO</small></td></tr><tr><td>0x2F</td><td>0x2F</td><td>0x002F</td><td>/</td><td><small>SOLIDUS</small></td></tr><tr><td>0x2E</td><td>0x2E</td><td>0x002E</td><td>.</td><td><small>FULL STOP</small></td></tr><tr><td>0x2D</td><td>0x2D</td><td>0x002D</td><td>-</td><td><small>HYPHEN-MINUS</small></td></tr><tr><td>0x2C</td><td>0x2C</td><td>0x002C</td><td>,</td><td><small>COMMA</small></td></tr><tr><td>0x2B</td><td>0x2B</td><td>0x002B</td><td>+</td><td><small>PLUS SIGN</small></td></tr><tr><td>0x2A</td><td>0x2A</td><td>0x002A</td><td>*</td><td><small>ASTERISK</small></td></tr><tr><td>0x29</td><td>0x29</td><td>0x0029</td><td>)</td><td><small>RIGHT PARENTHESIS</small></td></tr><tr><td>0x28</td><td>0x28</td><td>0x0028</td><td>(</td><td><small>LEFT PARENTHESIS</small></td></tr><tr><td>0x27</td><td>0x27</td><td>0x0027</td><td>'</td><td><small>APOSTROPHE</small></td></tr><tr><td>0x26</td><td>0x26</td><td>0x0026</td><td>&</td><td><small>AMPERSAND</small></td></tr><tr><td>0x25</td><td>0x25</td><td>0x0025</td><td>%</td><td><small>PERCENT SIGN</small></td></tr><tr><td>0x24</td><td>0x24</td><td>0x0024</td><td>$</td><td><small>DOLLAR SIGN</small></td></tr><tr><td>0x23</td><td>0x23</td><td>0x0023</td><td>#</td><td><small>NUMBER SIGN</small></td></tr><tr><td>0x22</td><td>0x22</td><td>0x0022</td><td>"</td><td><small>QUOTATION MARK</small></td></tr><tr><td>0x21</td><td>0x21</td><td>0x0021</td><td>!</td><td><small>EXCLAMATION MARK</small></td></tr><tr><td>0x20</td><td>0x20</td><td>0x0020</td><td></td><td><small>SPACE</small></td></tr><tr><td>0x1F</td><td>0x1F</td><td>0x001F</td><td></td><td><small>UNIT SEPARATOR</small></td></tr><tr><td>0x1E</td><td>0x1E</td><td>0x001E</td><td></td><td><small>RECORD SEPARATOR</small></td></tr><tr><td>0x1D</td><td>0x1D</td><td>0x001D</td><td></td><td><small>GROUP SEPARATOR</small></td></tr><tr><td>0x1C</td><td>0x1C</td><td>0x001C</td><td></td><td><small>FILE SEPARATOR</small></td></tr><tr><td>0x1B</td><td>0x1B</td><td>0x001B</td><td></td><td><small>ESCAPE</small></td></tr><tr><td>0x1A</td><td>0x1A</td><td>0x001A</td><td></td><td><small>SUBSTITUTE</small></td></tr><tr><td>0x19</td><td>0x19</td><td>0x0019</td><td></td><td><small>END OF MEDIUM</small></td></tr><tr><td>0x18</td><td>0x18</td><td>0x0018</td><td></td><td><small>CANCEL</small></td></tr><tr><td>0x17</td><td>0x17</td><td>0x0017</td><td></td><td><small>END OF TRANSMISSION BLOCK</small></td></tr><tr><td>0x16</td><td>0x16</td><td>0x0016</td><td></td><td><small>SYNCHRONOUS IDLE</small></td></tr><tr><td>0x15</td><td>0x15</td><td>0x0015</td><td></td><td><small>NEGATIVE ACKNOWLEDGE</small></td></tr><tr><td>0x14</td><td>0x14</td><td>0x0014</td><td></td><td><small>DEVICE CONTROL FOUR</small></td></tr><tr><td>0x13</td><td>0x13</td><td>0x0013</td><td></td><td><small>DEVICE CONTROL THREE</small></td></tr><tr><td>0x12</td><td>0x12</td><td>0x0012</td><td></td><td><small>DEVICE CONTROL TWO</small></td></tr><tr><td>0x11</td><td>0x11</td><td>0x0011</td><td></td><td><small>DEVICE CONTROL ONE</small></td></tr><tr><td>0x10</td><td>0x10</td><td>0x0010</td><td></td><td><small>DATA LINK ESCAPE</small></td></tr><tr><td>0x0F</td><td>0x0F</td><td>0x000F</td><td></td><td><small>SHIFT IN</small></td></tr><tr><td>0x0E</td><td>0x0E</td><td>0x000E</td><td></td><td><small>SHIFT OUT</small></td></tr><tr><td>0x0D</td><td>0x0D</td><td>0x000D</td><td></td><td><small>CARRIAGE RETURN</small></td></tr><tr><td>0x0C</td><td>0x0C</td><td>0x000C</td><td></td><td><small>FORM FEED</small></td></tr><tr><td>0x0B</td><td>0x0B</td><td>0x000B</td><td></td><td><small>VERTICAL TABULATION</small></td></tr><tr><td>0x0A</td><td>0x0A</td><td>0x000A</td><td></td><td><small>LINE FEED</small></td></tr><tr><td>0x09</td><td>0x09</td><td>0x0009</td><td></td><td><small>HORIZONTAL TABULATION</small></td></tr><tr><td>0x08</td><td>0x08</td><td>0x0008</td><td></td><td><small>BACKSPACE</small></td></tr><tr><td>0x07</td><td>0x07</td><td>0x0007</td><td></td><td><small>BELL</small></td></tr><tr><td>0x06</td><td>0x06</td><td>0x0006</td><td></td><td><small>ACKNOWLEDGE</small></td></tr><tr><td>0x05</td><td>0x05</td><td>0x0005</td><td></td><td><small>ENQUIRY</small></td></tr><tr><td>0x04</td><td>0x04</td><td>0x0004</td><td></td><td><small>END OF TRANSMISSION</small></td></tr><tr><td>0x03</td><td>0x03</td><td>0x0003</td><td></td><td><small>END OF TEXT</small></td></tr><tr><td>0x02</td><td>0x02</td><td>0x0002</td><td></td><td><small>START OF TEXT</small></td></tr><tr><td>0x01</td><td>0x01</td><td>0x0001</td><td></td><td><small>START OF HEADING</small></td></tr><tr><td>0x00</td><td>0x00</td><td>0x0000</td><td></td><td><small>NULL</small></td></tr></tbody></table>

### Star標準控制指令表(1.15版)
![image](https://farm8.staticflickr.com/7479/15102330363_c6c5545546_o.png)
![image](https://farm8.staticflickr.com/7569/15102336383_c8f2231e85_o.png)
![image](https://farm4.staticflickr.com/3953/15535844849_7a10e14a24_o.png)

### Star 其他控制指令表(1.15版)

![image](https://farm8.staticflickr.com/7503/15719816611_4a66ec3118_o.png)
![image](https://farm6.staticflickr.com/5597/15723285222_e74fd4c808_o.png)
![image](https://farm4.staticflickr.com/3946/15698014306_5f2bc507e3_o.png)
![image](https://farm9.staticflickr.com/8628/15719838321_2e6fbed4a9_o.png)
![image](https://farm6.staticflickr.com/5611/15101806794_2d08ef7a1b_o.png)
![image](https://farm9.staticflickr.com/8418/15723308442_a205b36ed7_o.png)


###初始化控制碼
若要組『ESC @』則就是上面章節中的Initial，則在塞byte[]的時候，就直接給Unicode表格中的0x1b以及0x40


###設定水平位置(教你如何看懂command manual)
![image](https://farm4.staticflickr.com/3942/15723932012_6b677043fd_o.png)
如說明說的，這是用來調整水平位置。需要傳入ESC D 位置表示 NUL的格式，傳入Hex(若是0x開頭就是Hex)。
而實際使用時程式是傳入 { 0x1b, 0x44, 0x10, 0x00 }

###設定水平對齊位置
![image](https://farm8.staticflickr.com/7573/15537121188_94cbb4f09b_o.png)
如說明說的，這是調整水平對齊的排列方式。
實際使用時程式是傳入  { 0x1b, 0x1d, 0x61, 0x31 }  
0x31是1，所以是水平置中。


###強調重點（加粗）

![image](https://farm8.staticflickr.com/7537/15103181913_9c98e14be7_o.png)

在要強調加粗的文字前後加上這個指令
實際上傳入是{ 0x1b, 0x45 }、{ 0x1b, 0x46 }


###設定放大縮小尺寸
![image](https://farm4.staticflickr.com/3956/15102632914_be80891ac1_o.png)

實際上傳入{ 0x1b, 0x69, 0x02, 0x00 }、{ 0x1b, 0x69, 0x00, 0x00 }、{ 0x1b, 0x69, 0x01, 0x01 }
所以依據放大就是放大三倍高度、預設高度寬度、放大兩倍高度和寬度

###印製LOGO
![image](https://farm4.staticflickr.com/3951/15536752499_e47df4c77c_o.png)
實際上傳入的是{0x1b, 0x1c, 0x70, 0x01, 0x00} ，也就是傳入第一個logo(最小是1)

###印製QRCode
![image](https://farm8.staticflickr.com/7537/15699175066_ef121d8277_o.png)
實際上傳入  
{ 0x1b, 0x1d, 0x79, 0x53, 0x30, 0x02}  
{ 0x1b, 0x1d, 0x79, 0x53, 0x31, 0x03 }  
{ 0x1b, 0x1d, 0x79, 0x53, 0x32, 0x03}   
{ 0x1b, 0x1d, 0x79, 0x44, 0x31, 0x00, (byte) (barCodeData.length % 256), (byte) (barCodeData.length / 256) }   
barCodeData  
{ 0x1b, 0x1d, 0x79, 0x50, 0x0a}   
{ 0x1b, 0x1d, 0x61, 0x30 }

###印製QRCode（位置部分細談）
在上面一小節中有
傳入{ 0x1b, 0x1d, 0x79, 0x44, 0x31, 0x00, (byte) (barCodeData.length % 256), (byte) (barCodeData.length / 256) }   

### PAGE MODE 設定印製位置

![image](https://farm6.staticflickr.com/5610/15110272973_ac45b94154_o.png)
大睿的林工程師提供的範例  
{%gist dearsherlock/e820b493915ae672c13d%}

換算位置如下圖，工具[如下網址](
)
![image](https://farm8.staticflickr.com/7501/15110033824_bc73f95d3d_o.png)