# a1
**在代码中搜索“ _assignment_ ”即可找到作业部分的代码。**
1. 独自完成lecture1和lecture2的代码
> Get the Memorize game working as demonstrated in lectures 1 and 2. Type in all the code. Do not copy/paste from anywhere.   
2. 当前，卡组出现的顺序是固定的。添加洗牌功能。
> Currently the cards appear in a predictable order (the matches are always side-by-side, making the game very easy). Shuffle the cards.   
3. 当前的卡组又瘦又长，很不美观。强迫每张卡按照一个特定的宽高比2/3显示
> Our cards are currently arranged in a single row (we’ll fix that next week). That’s making our cards really tall and skinny (especially in portrait) which doesn’t look very good. Force each card to have a width to height ratio of 2:3 (this will result in empty space above and/or below your cards, which is fine).   
4. 让你游戏的初始卡组的数目随机定为2-5之间。
> Have your game start up with a random number of pairs of cards between 2 pairs and 5 pairs.   
5. 当卡组数目是5时，字体会显的过大。为5个卡组时设定一个专用的字体，其它数目的卡组保持“.largeTitle”即可
> When your game randomly shows 5 pairs, the font we are using for the emoji will be too large (in portrait) and will start to get clipped. Have the font adjust in the 5 pair case (only) to use a smaller font than .largeTitle. Continue to use .largeTitle when there are 4 or fewer pairs in the game.   
6. 你的UI应该可以运行在任何iOS设备上，不论横屏（portrait）还是竖屏（landscape）。这可能不需你做任何的代码调整（这是SwiftUI的强大之处），但是请你尝试不同模拟仿真去验证这件事。
>  Your UI should work in portrait or landscape on any iOS device. In landscape your cards will be larger (but still 2:3 aspect ratio). This probably will not require any work on your part (that’s part of the power of SwiftUI), but be sure to experiment with running on different simulators in Xcode to be sure.   

