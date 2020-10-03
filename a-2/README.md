# a2
## 基本作业
1. 独自完成lecture1到4的代码。
> Get the Memorize game working as demonstrated in lectures 1 through 4. Type in all the code. Do not copy/paste from anywhere.   

2. 你的游戏应保有洗牌功能。
> Your game should still shuffle the cards.   

3. 为你的游戏加入“主题”。主题包括“主题名“、一套相应的“emoji”和一定数量的卡组（至少有一个主题的卡牌个数是随机的）及配套的颜色（比如橙色就很适合“万圣节主题”）。
> Architect the concept of a “theme” into your game. A theme consists of a name for the theme, a set of emoji to use, a number of cards to show (which, for at least one, but not all themes, should be random), and an appropriate color to use to draw (e.g. orange would be appropriate for a Halloween theme).   

4. 为你的游戏创建至少六种主题。
> Support at least 6 different themes in your game.   

5. 每添加一个新的主题应只需要添加一行代码。
> A new theme should be able to be added to your game with a single line of code.   

6. 添加“新游戏”按钮，用来开始一局新的游戏。这个“新游戏”的主题应该是随机的。你可以将这个按钮随意摆放。
> Add a “New Game” button to your UI which begins a brand new game. This new game should have a randomly chosen theme. You can put this button anywhere you think looks best in your UI.   

7. 为你的游戏UI添加“主题”显示。
> Show the theme’s name somewhere in your UI.   

8. 添加“计分功能”。每个成功的配对加2分；错误的配对减一分。
> Keep score in your game by giving 2 points for every match and penalizing 1 point for every previously seen card that is involved in a mismatch.   

9. 为你的游戏UI添加“分数”显示
> Display the score in your UI in whatever way you think looks best.   

10. 你的UI应支持所有的iOS设备，且不论横屏还是竖屏。我们对卡组的显示比例不作要求。当然这项作业可能不需要任何的实际代码（这是SwiftUI的强大之处），但请一定试试用Xcode模拟不同的设备，观看结果。
> Your UI should work in portrait or landscape on any iOS device. The cards can have any aspect ratio you’d like. This probably will not require any work on your part (that’s part of the power of SwiftUI), but be sure to continue to experiment with running on different simulators in Xcode to be sure.   
## 加分题
1. 使主题支持将“渐变（gradient）”效果作为一种颜色。提示：fill() 可以将“渐变”作为参数，而不只是“颜色”。
> Support a gradient as the“color” for a theme. Hint: fill() can take a gradient as its argument rather than a color. 

2. 修改计分系统使得“更快的选择卡片”可以得到更高的分数。比如说，你可以用max(10-(距离选择上一张卡片的时间),1)*(你原本可以获得或被处罚的分数）。（这只是个例子，发挥你的想象力！）一定要熟悉数据结构。
> Modify the scoring system to give more points for choosing cards more quickly. For example, maybe you get max(10 - (number of seconds since last card was chosen), 1) x (the number of points you would have otherwise earned or been penalized with). (This is just an example, be creative!). You will definitely want to familiarize yourself with the Date struct. 
