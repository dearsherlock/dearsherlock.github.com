

事件與labda

### 具名委派
從.net framework 1.0就有了。

委派宣告：
[public|private|protected] Delegate [void | 回傳資料型態] 委派名稱 ([參數群一]);

ex:

private delegate void MyDelegate();
private delegate int MeDelegatePara(int a, int b);


事件宣告：
[存取修飾詞] event 委派方法 事件名稱 ;
ex:

public event ClickEventHandler ClickEvent;

Sample1:純粹委派
以下就是所謂的把方法都參數丟給委派，委派會自己有一個invoke()方法，invoke的時候會去呼叫丟進去的method。


 				 //3.引用委派(實體化)，後指定方法
            MyDelegate D = new MyDelegate(MyClass.StaticMethod);
            //4.呼叫函數
            D.Invoke();

            MyClass p = new MyClass();
            //3.引用委派(實體化)，後指定方法
            MeDelegatePara d = new MeDelegatePara(p.InstanceMethod);
            //4.呼叫函數
            d.Invoke(1, 2);      
            
            
            
Sample2 : 委派+事件

public partial class Form1 : Form
    {
        //1.建立事件函數
        private void MyButton_Click(object sender, EventArgs e)
        {
            Console.WriteLine("事件發生了喔");
        }

        //2.委派宣告
        public delegate void ClickEventHandler(object sender, EventArgs e);
        //3.創建MyBottom類別
        public class MyButton
        {
            //4.宣告MyBottom的事件
            public event ClickEventHandler ClickEvent;
            //5.建立MyButton成員方法
            public void Click()
            {
                if (ClickEvent != null)
                {
                    Console.WriteLine("事件開始");
                    //6.拋出事件，給所有相應者
                    ClickEvent(this, null);
                }
            }
        }

        //7.引用類別實體化
        public MyButton myButton = new MyButton();    
        public Form1()
        {
            InitializeComponent();
            //8.事件實體化
            myButton.ClickEvent += new ClickEventHandler(MyButton_Click);

        }

        //使用方式
        private void Form1_Load(object sender, EventArgs e)
        {
            //引用
            Form1 form = new Form1();
            form.myButton.Click();   
        }
    }
    
    
    
###通用型委派
![image](https://farm1.staticflickr.com/426/19045088145_e7d528f42d_o.png)
EventHandler為無事件參數的委派
EventHandler<TEventArgs>為有事件參數的委派

![image](https://farm1.staticflickr.com/550/18858927949_93d185a955_o.png)
Action為無回傳值的委派，用在通知性質的函式、給執行序執行...最大可接受16個參數。
Func<TResult>為有回傳值的委派，最大可接受16個參數，但會有回傳值型別TResult
Predicate<T> 特殊的通用委派，跟Func<T,bool>是等價的。用來處理元素是否符合條件。
![image](https://farm1.staticflickr.com/355/19039591992_bd8ac1b469_o.png)
    