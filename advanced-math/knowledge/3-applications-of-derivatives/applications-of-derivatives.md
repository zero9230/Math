---
author:
- Didnelpsun
title: 导数应用
---

# 函数中值定理

都假定$f(x)$在$[a,b]$上连续。

## 有界与最值定理

[**定理：**]{style="color: aqua"}$m\leqslant f(x)\leqslant M$，其中$m$，$M$分别为$f(x)$在$[a,b]$上的最大值和最小值。

## 介值定理

[**定理：**]{style="color: aqua"}当$m\leqslant\mu\leqslant M$，存在$\xi\in[a,b]$，使得$f(\xi)=\mu$。

## 平均值定理

[**定理：**]{style="color: aqua"}当$a<x_1<x_2<\cdots<x_n<b$时，在$[x_1,x_n]$内至少存在一点$\xi$，使得$f(\xi)=\dfrac{f(x_1)+f(x_2)+\cdots+f(x_n)}{n}$。

证明：已知$f(x)$在$[x_1,x_n]$上连续，根据有界与最值定理，$m\leqslant f(x)\leqslant M$。

即$m\leqslant f(x_1)\leqslant M$、$m\leqslant f(x_2)\leqslant M$......$m\leqslant f(x_n)\leqslant M$。

将这些式子全部相加，得到$nm\leqslant f(x_1)+f(x_2)+\cdots+f(x_n)\leqslant nM$。

所以$m\leqslant\dfrac{f(x_1)+f(x_2)+\cdots+f(x_n)}{n}\leqslant m$。

由介值定理，可知存在$\xi\in[a,b]$使得$f(\xi)=\dfrac{f(x_1)+f(x_2)+\cdots+f(x_n)}{n}$。

## 零点定理

[**定理：**]{style="color: aqua"}当$f(a)\cdot f(b)<0$时，存在$\xi\in(a,b)$，使得$f(\xi)=0$。

# 微分中值定理

三个定理都是建立局部与整体的关系，利用导数控制函数，反之不能使用函数控制导数。

$\text{罗尔定理}\xrightleftharpoons[\text{特例：}f(a)=f(b)]{\text{泛化：任意端点值}}\text{拉格朗日中值定理}\xrightleftharpoons[\text{特例：}F(x)=x]{\text{泛化：参数方程}}\text{柯西中值定理}$

## 罗尔定理

### 定义

极值[**定义：**]{style="color: violet"}若$\exists\delta>0$，使$\forall x\in U(x_0,\delta)$恒有$f(x)\geqslant f(x_0)$，则$f(x)$在$x_0$处取极小值，恒有$f(x)\leqslant f(x_0)$，则$f(x)$在$x_0$处取极大值。

费马引理[**定义：**]{style="color: violet"}若$f(x)$在$x_0$处取得极值，且$f(x)$在$x_0$处可导，则$f'(x_0)=0$。

罗尔定理[**定义：**]{style="color: violet"}

1.  $f(x)$在$[a,b]$上连续。

2.  $f(x)$在$(a,b)$内可导。

3.  $f(a)=f(b)$。

则$\exists\,\xi\in(a,b)$，使得$f'(\xi)=0$。

### 推广

-   设$f(x)$在$(a,b)$内可导，$\lim\limits_{x\to a^+}f(x)=\lim\limits_{x\to b^-}f(x)=A$，则在$(a,b)$内至少存在一点$\xi$，使得$f'(\xi)=0$。

-   设$f(x)$在$(a,b)$内可导，$\lim\limits_{x\to a^+}f(x)=\lim\limits_{x\to b^-}f(x)=\pm\infty$，则在$(a,b)$内至少存在一点$\xi$，使得$f'(\xi)=0$。

-   设$f(x)$在$(a,+\infty)$内可导，$\lim\limits_{x\to a^+}f(x)=\lim\limits_{x\to+\infty}f(x)=A$，则在$(a,+\infty)$内至少存在一点$\xi$，使得$f'(\xi)=0$。

-   设$f(x)$在$(\infty,+\infty)$内可导，$\lim\limits_{x\to-\infty}f(x)=\lim\limits_{x\to+\infty}f(x)=A$，则在$(-\infty,+\infty)$内至少存在一点$\xi$，使得$f'(\xi)=0$。

## 拉格朗日中值定理

1.  $f(x)$在$[a,b]$上连续。

2.  $f(x)$在$(a,b)$内可导。

则$\exists\,\xi\in(a,b)$，使得$f(b)-f(a)=f'(\xi)(b-a)$。

拉格朗日中值定理的几何意义：若连续曲线$y=f(x)$的弧$\wideparen{AB}$上除端点外处处具有不垂直于$x$轴的切线，则这弧上至少有一点$C$使曲线在该点处的切线平行于弦$AB$。

其中$f(b)-f(a)=f'[a+\theta(b-a)](b-a)(0<\theta<1)$，$\because f'(\xi)=f'[a+(\xi-a)]=f'[a+\dfrac{\xi-a}{b-a}(b-a)]$。

有限增量公式[**定义：**]{style="color: violet"}$\Delta y=f(x_0+\Delta x)-f(x_0)=f'[x_0+\theta\Delta x]\Delta x(0<\theta<1)$。

有限增量公式中的$\Delta x$不一定很小，这个是一个增量的准确公式。

推论：$f(x)$在$I$上连续且可导，则$I$上$f(x)=C\Leftrightarrow f'(x)\equiv 0$

**例题：**证明$x>0$时，$\dfrac{x}{1+x}<\ln(1+x)<x$。

证明：令$f(x)=\ln x$，又$\ln 1=0$，$\therefore\ln(1+x)=\ln(1+x)-\ln 1$。

根据拉格朗日中值定理$\ln(1+x)-\ln 1=f'(\xi)x=\dfrac{x}{\xi}(1<\xi<1+x)$。

又$\dfrac{x}{1+x}<\dfrac{x}{\xi}<x$，$\therefore$得证。

## 柯西中值定理

1.  $f(x)$与$F(x)$在$[a,b]$上连续。

2.  $f(x)$与$F(x)$在$(a,b)$内可导，且$\forall x\in(a,b)$，$F'(x)\neq 0$。

则$\exists\,\xi\in(a,b)$，使得$\dfrac{f(b)-f(a)}{F(b)-F(a)}=\dfrac{f'(\xi)}{F'(\xi)}$。

# 积分中值定理

## 定理

[**定理：**]{style="color: aqua"}若$f(x)$在$[a,b]$上连续，则存在$\xi\in[a,b]$，使得$\int_a^bf(x)\,\textrm{d}x=f(\xi)(b-a)$。

## 证明

已知$f(x)$在$[a,b]$上连续，根据有界与最值定理，$m\leqslant f(x)\leqslant M$，$m(b-a)\leqslant\int_a^bf(x)\,\textrm{d}x\leqslant M(b-a)$，所以$m\leqslant\dfrac{1}{b-a}\int_a^bf(x)\,\textrm{d}\leqslant M$。

由介值定理可知$\xi\in[a,b]$，使得$f(\xi)=\dfrac{1}{b-a}\int_a^bf(x)\,\textrm{d}x$。

# 洛必达法则

## 定理

若当$x\to a$或$x\to\infty$时两个函数$f(x)F(x)$都趋向0或无穷大，那么极限$\lim\limits_{x\to \frac{a}{\infty}}\dfrac{f(x)}{F(x)}$可能存在，也可能不存在，这种极限就是不定式。

[**定理：**]{style="color: aqua"}

1.  当$x\to a\text{或}\infty$时，函数$f(x)$，$g(x)$都趋向0或无穷大。

2.  $f'(x)$和$F'(x)$在点$a$的某去心邻域内，或$\vert x\vert$大于充分大的正数时，存在，且$g'(x)\neq 0$。

3.  $\lim\limits_{x\to a}\dfrac{f'(x)}{g'(x)}$或$\lim\limits_{x\to\infty}\dfrac{f'(x)}{g'(x)}$存在或无穷大。

4.  $\lim\limits_{x\to a}\dfrac{f(x)}{g(x)}=\lim\limits_{x\to a}\dfrac{f'(x)}{g'(x)}$或$\lim\limits_{x\to\infty}\dfrac{f(x)}{g(x)}=\lim\limits_{x\to\infty}\dfrac{f'(x)}{g'(x)}$。

## 注意事项

1.  如果函数比值不为$\dfrac{0}{0}$或$\dfrac{\infty}{\infty}$型，则不能使用洛必达法则。

2.  若求导后极限仍为$\dfrac{0}{0}$或$\dfrac{\infty}{\infty}$型，则可以继续使用洛必达法则。

3.  若$\lim\limits_{x\to a}\dfrac{f'(x)}{g'(x)}$不存在且不为$\infty$，不能反推$\lim\limits_{x\to a}\dfrac{f(x)}{g(x)}$不存在也不为$\infty$，这时候洛必达法则是失效的。

4.  洛必达法则除了可以解决$\dfrac{0}{0}$型、$\dfrac{\infty}{\infty}$型，还可以将$0\cdot\infty$、$\infty-\infty$、$1^\infty$、$\infty^0$、$0^0$类型进行变型来使用洛必达。

对于第三个注意点：$\lim\limits_{x\to 0}\dfrac{x^2\cdot\sin\dfrac{1}{x}}{x}=\lim\limits_{x\to 0}x\cdot\sin\dfrac{1}{x}=0$。

而使用洛必达法则：

$\lim\limits_{x\to 0}\dfrac{x^2\cdot\sin\dfrac{1}{x}}{x}=\lim\limits_{x\to 0}\left(2x\cdot\sin\dfrac{1}{x}-\cos\dfrac{1}{x}\right)=\lim\limits_{x\to 0}\left(-\cos\dfrac{1}{x}\right)=\text{不存在}$

# 泰勒公式

非常重要。过去的很多定义如等价无穷小都是基于泰勒公式。

## 定义

是一个用函数在某点的信息描述其附近取值的公式。如果函数满足一定的条件，泰勒公式可以用函数在某一点的各阶导数值做系数构建一个多项式来近似表达这个函数。即形式：$f(x)=\sum ax^n$。

简单来说，泰勒公式就是一个近似表达函数的公式。其增量趋向0。

对于泰勒公式以及之前的中值定理等相关延申见[知乎回答](https://www.zhihu.com/question/25627482)。

## 泰勒定理

拉格朗日定理是泰勒定理的特例。泰勒定理也称为泰勒中值定理，与之前的三大中值定理组成四大中值定理，前面的三大中值定理建立函数与一阶导数的关系，而泰勒定理建立函数与高阶导数之间的关系。

### 皮亚诺余项

设$f(x)$在$x_0$处$n$阶可微，则$f(x)=\sum\limits_{k=0}^n\dfrac{f^{(k)}(x_0)}{k!}(x-x_0)^k+o((x-x_0)^n)$。这个就是带皮亚诺余项的泰勒公式。

$f(x)=\sum\limits_{k=0}^n\dfrac{f^{(k)}(x_0)}{k!}(x-x_0)^k$就是$f(x)$在$x_0$处的$n$次泰勒多项式，$o((x-x_0)^n)$就是函数的皮亚诺余项。

缺点：

1.  只给出余项的定性描述，不能进行定量分析。

2.  适用范围小。

### 拉格朗日余项

设$f(x)$在$x_0$处$n+1$阶可微，$x_0\in I$则$\forall x\in I$，$\exists\,\xi\in I(\xi\in(x_0,x))$使得$f(x)=\sum\limits_{k=0}^n\dfrac{f^{(k)}(x_0)}{k!}(x-x_0)^k+\dfrac{f^{(n+1)}(\xi)}{(n+1)!}(x-x_0)^{n+1}$。这个就是带拉格朗日余项的泰勒公式。

$R_n(x)=\dfrac{f^{(n+1)}(\xi)}{(n+1)!}(x-x_0)^{n+1}$就是函数的拉格朗日余项。

根据拉格朗日中值定理推广的方式：$R_n(x)=\dfrac{f^{(n+1)}[x_0+\theta(x-x_0)]}{(n+1)!}(x-x_0)^{n+1}(\theta\in(0,1))$。

若$\vert f^{(n+1)}(x)\vert\leqslant M$，则$\vert R_n(x)\vert=\dfrac{\vert f^{(n+1)}(\xi)\vert}{(n+1)!}\vert x-x_0\vert^{n+1}\leqslant\dfrac{M}{(n+1)!}\vert x-x_0\vert^{n-1}$。

特点：

1.  进行定量研究。

2.  可以进行整体的研究。

3.  计算量较大。

## 泰勒展开

### 麦克劳林公式

当$x_0=0$时$f(x)=f(0)+f'(0)x+\dfrac{f''(0)}{2!}x^2+\cdots+\dfrac{f^{(n)(0)}}{n!}x^n+\text{余项}$为麦克劳林公式：

1.  $\sin x=x-\dfrac{x^3}{3!}+o(x^3)=(-1)^{n-1}\dfrac{x^{2n-1}}{(2n-1)!}$。

2.  $\cos x=1-\dfrac{x^2}{2!}+\dfrac{x^4}{4!}+o(x^4)=(-1)^n\dfrac{x^{2n}}{(2n)!}$。

3.  $\arcsin x=x+\dfrac{x^3}{3!}+o(x^3)=\dfrac{x^{2n-1}}{(2n-1)!}$。

4.  $\tan x=x+\dfrac{x^3}{3}+o(x^3)$。

5.  $\arctan x=x-\dfrac{x^3}{3}+o(x^3)$。

6.  $\ln(1+x)=x-\dfrac{x^2}{2}+\dfrac{x^3}{3}+o(x^3)=(-1)^n\dfrac{x^n}{n}$。

7.  $e^x=1+x+\dfrac{x^2}{2!}+\dfrac{x^3}{3!}+o(x^3)=\dfrac{x^n}{n!}$。

8.  $(1+x)^\alpha=1+\alpha\cdot x+\dfrac{\alpha\cdot(\alpha-1)}{2!}x^2+o(x^2)$。

其中$o(x^\alpha)$为佩亚诺余项，其非常小。

同样可以对泰勒展开式进行变形：$x-\sin x\sim\dfrac{x^3}{6}$，$x+\sin x\sim 2x$。

如：

$\lim\limits_{x\to 0}\dfrac{[\sin x-\sin(\sin x)]\sin x}{x^4}=\dfrac{\dfrac{1}{6}\sin^3x\cdot\sin x}{x^4}=\dfrac{\dfrac{1}{6}\sin^4x}{x^4}=\dfrac{1}{6}$

### 泰勒公式计算

先写出$y=f(x)$的泰勒公式或麦克劳林公式，再通过比较系数来获得$f^{(n)}(x_0)$：

1.  任何一个无穷阶可导的函数（在收敛的情况下）都可以写为：\
    $y=f(x)=\sum_{n=0}^\infty\dfrac{f^{(n)}(x_0)}{n!}(x-x_0)^n$ 或
    $y=f(x)=\sum_{n=0}^\infty\dfrac{f^{(n)}(0)}{n!}x^n$。

2.  给出的任意一个具体的无穷阶可导函数$y=f(x)$都可以通过已知的公式展开为幂级数。

3.  而函数的展开式具有唯一性，比较步骤一步骤二的公式的系数就可以获取倒$f^{(n)}(x_0)$或$f^{(n)}(0)$。

**例题：**设$y=x^3\sin x$，求$y^{(6)}(0)$。

解：$y=\sum_{n=0}^\infty\dfrac{y^{(n)}(0)}{n!}x^n$。

$\because$需要结果的导数阶数为6，所以最后得到的次数为6就可以了。

$\therefore y=x^3\left(x-\dfrac{1}{6}x^3+\cdots\right)=x^4-\dfrac{1}{6}x^6+\cdots$（不要写$o(x^n)$，因为这里$x$并不是趋向0的）。

步骤一的抽象函数当$n=6$时为$\dfrac{y^{(6)}(0)}{6!}x^6$，它应该与步骤二得到的$x^4-\dfrac{1}{6}x^6+\cdots$的6阶项的系数相等。

$\therefore \dfrac{y^{(6)}(0)}{6!}=-\dfrac{1}{6}\Rightarrow y^{(6)}(0)=-5!=-120$。

## 展开幂的选择

泰勒公式展开时应该展开到多少次幂？

### $\dfrac{A}{B}$型，上下同阶

当分母或分子式$x$的$k$次幂那么应该把分母或分子展开到对应的次数幂。

如$\lim\limits_{x\to 0}\dfrac{x-\sin x}{x^3}$展开为三次：

$\lim\limits_{x\to 0}\dfrac{x-\sin x}{x^3}=\lim\limits_{x\to 0}\dfrac{x-\left[x-\dfrac{1}{6}x^3+o(x^3)\right]}{x^3}=\lim\limits_{x\to 0}\dfrac{\dfrac{1}{6}x^3+o(x^3)}{x^3}=\dfrac{1}{6}$

### $A-B$型，幂次最高

将$A$，$B$分别展到他们系数不相等的$x$的最高次幂为止。

如已知当$x\to 0$时，$\cos x-e^{-\frac{x^2}{2}}$与$ax^k$为等价无穷小，求$a$，$b$。

泰勒展开：

$\cos x-e^{-\frac{x^2}{2}}= 1-\dfrac{x^2}{2}+\dfrac{1}{24}x^4+o(x^4)-\left(1-\dfrac{x^2}{2}+\dfrac{1}{8}x^4+o(x^4)\right)$

$=-\dfrac{1}{12}x^4+o(x^4)\sim -\dfrac{1}{12}x^4$

$\therefore a=-\dfrac{1}{12},b=4$。

**例题：**求解$\lim\limits_{x\to 0}\dfrac{\sin^2x-x^2}{e^{x^4}-1}$。

解：首先由泰勒展开式$e^x=1+x+o(x)$，得到$e^x-1\sim x$。

$\therefore e^{x^4}-1\sim x^4$。

然后泰勒展开：

$x-\sin x=1\cdot x^1+0\cdot x^3 - (1\cdot x^1-\dfrac{1}{6}x^3+o(x^3))= \dfrac{1}{6}x^3+o(x^3)\sim\dfrac{1}{6}x^3$

$x+\sin x=x-(-\sin x)=1\cdot x^1-(-1\cdot x^1)+o(x)=2x+o(x)\sim 2x$

$\therefore\lim\limits_{x\to 0}\dfrac{\sin^2x-x^2}{e^{x^4}-1}=\lim\limits_{x\to 0}\dfrac{(\sin x+x)(\sin x-x)}{x^4}=\lim\limits_{x\to 0}\dfrac{2x\cdot\left(-\dfrac{1}{6}x^3\right)}{x^4}=-\dfrac{1}{3}$

# 函数单调性与曲线凹凸性

## 函数单调性

[**定理：**]{style="color: aqua"}

1.  函数$f(x)$在区间$[a,b]$上连续，在$(a,b)$内可导。

2.  若$(a,b)$内$f'(x)\geqslant 0$，且等号只有有限个点上成立，则$f(x)$在$[a,b]$上单调增加。

3.  若$(a,b)$内$f'(x)\leqslant 0$，且等号只有有限个点上成立，则$f(x)$在$[a,b]$上单调减少。

**例题：**证明$x>0$时，$x-\dfrac{x^3}{6}<\sin x<x$。

证明：首先令$f(x)=x-\sin x$，而$f(0)=0$。

$f'(x)=1-\cos x\geqslant 0$，则$f(x)$在$R$上递增。

$\therefore$在$(0,+\infty]$上$f(x)>f(0)=0$，即$x>\sin x$。

令$g(x)=\sin x-x-\dfrac{x^3}{6}$，而$g(0)=0$。

$g'(x)=\cos x-1+\dfrac{x^2}{2}\geqslant 0$，则$g(x)$在$R$上递增。

$\therefore$在$(0,+\infty]$上$g(x)>g(0)=0$，即$\sin x>x-\dfrac{x^3}{6}$。

得证。

## 曲线凹凸性与拐点

[**定义：**]{style="color: violet"}若函数$f(x)$在区间$I$上连续，且对$I$上任意两点$x_1,x_2$恒有：

1.  $f(\dfrac{x_1+x_2}{2})<\dfrac{f(x_1)+f(x_2)}{2}$，则$f(x)$在$I$上凹。

2.  $f(\dfrac{x_1+x_2}{2})>\dfrac{f(x_1)+f(x_2)}{2}$，则$f(x)$在$I$上凸。

而当凹凸性发生改变的点就是拐点。

[**定理：**]{style="color: aqua"}

1.  函数$f(x)$在区间$[a,b]$上连续，在$(a,b)$内二阶可导。

2.  若$(a,b)$内$f''(x)>0$，则$f(x)$在$[a,b]$上凹。

3.  若$(a,b)$内$f'(x)<0$，则$f(x)$在$[a,b]$上凸。

拐点的二阶导数等于0，或拐点在二阶导数不存在的点。

**例题：**证明凹凸性与二阶导数的关系。

证明：不妨先证明凹函数与二阶导数的关系。已知$f''(x)>0$

不妨设$x_1<x_2$，且$\dfrac{x_1+x_2}{2}=x_0$。

$f(x_1)+f(x_2)-2(x_0)=[f(x_2)-f(x_0)]-[f(x_1)-f(x_0)]$

$\xRightarrow{\text{拉格朗日中值定理}}=f'(\xi_2)(x_2-x_0)-f'(\xi_1)(x_0-x_1)=\dfrac{x_2-x_1}{2}[f'(\xi_2)-f'(\xi_1)]>0$

$\therefore f''(x)>0\Rightarrow f(\dfrac{x_1+x_2}{2})<\dfrac{f(x_1)+f(x_2)}{2}$。

# 函数极值与最值

## 函数极值

极值[**定义：**]{style="color: violet"}若$\exists\,\delta>0$，使

$\forall x\in U(x_0,\delta)$恒有$f(x)\geqslant f(x_0)$，则$f(x)$在$x_0$取极小值。

$\forall x\in U(x_0,\delta)$恒有$f(x)\leqslant f(x_0)$，则$f(x)$在$x_0$取极大值。

[**定理：**]{style="color: aqua"}（极值必要条件）

若$f(x)$在$x_0$处可导，且$x_0$处取得极值，则$f'(x_0)=0$。

[**定理：**]{style="color: aqua"}（极值第一充分条件）

设$f(x)$在$\mathring{U}(x_0,\delta)$内可导，且$f'(x_0)=0$或在$x_0$连续。

1.  若$x<x_0$时，$f'(x)\geqslant 0$，$x>x_0$时$f'(x)\leqslant 0$，则$x_0$取得极大值。

2.  若$x>x_0$时，$f'(x)\geqslant 0$，$x<x_0$时$f'(x)\leqslant 0$，则$x_0$取得极小值。

3.  若$f'(x)$在$x_0$处不变号，则无极值点。

[**定理：**]{style="color: aqua"}（极值第二充分条件）

若$f'(x_0)=0$而且$f''(x_0)\neq 0$：

1.  当$f''(x_0)<0$，则$f(x)$在$x_0$取极大值。

2.  当$f''(x_0)>0$，则$f(x)$在$x_0$取极小值。

## 函数最值

### 连续函数闭区间最值

1.  求出$f(x)$在$(a,b)$内的驻点和不可导的点$x_1,x_2\cdots,x_n$。

2.  求出函数值$f(x_1),f(x_2)\cdots,f(x_n)$与端点值$f(a),f(b)$。

3.  比较求出最值。

### 最值应用题

1.  建立目标函数并确定定义域。

2.  求出驻点并计算值。

# 函数图像绘制

## 基本步骤

1.  确定函数定义域，并考察其奇偶性与周期性。

2.  求出一阶导数与二阶导数，并计算导数为0与不存在的点。

3.  根据导数判断增减性与凹凸性，并求出极值与拐点。

4.  求出渐近线。

5.  确定另外的特殊点。

## 函数渐近线

-   若$\lim\limits_{x\to\infty}f(x)=A$，那么$y=A$就是水平渐近线。

-   若$\lim\limits_{x\to x_0}f(x)=\infty$，那么$x=x_0$就是垂直渐近线。

-   若$\lim\limits_{x\to\infty}\dfrac{f(x)}{x}=a,b=\lim\limits_{x\to\infty}(f(x)-ax)$，那么$y=ax+b$就是斜渐近线。

# 弧微分与曲率

## 弧微分

$\vert\wideparen{yy_0}\vert=S(x)$

$\Delta y=f(x+\Delta x)-f(x)$

$(\Delta s)^2\approx(\Delta x)^2+(\Delta y)^2$

当偏移量无穷小时，$y=f(x)$所构成的线段就是一条直线，所以：

$\textrm{d}y=f\,(x+\textrm{d}x)-f\,(x)$

$(\textrm{d}s)^2=(\textrm{d}x)^2+(\textrm{d}y)^2$

$\textrm{d}s=\sqrt{(\textrm{d}x)^2+(\textrm{d}y)^2}$（弧微分）

对于弧微分：

-   若直角坐标系下$y=f(x)$，$\textrm{d}s=\sqrt{1+\left(\dfrac{\textrm{d}y}{\textrm{d}x}\right)^2}\textrm{d}x=\sqrt{1+f'^2(x)}\textrm{d}x$，即$\textrm{d}s=\sqrt{1+f'^2(x)}\textrm{d}x$。

-   若参数方程下：$x=\phi(t),y=\psi(t)$，$\textrm{d}s=\sqrt{\left(\dfrac{\textrm{d}x}{\textrm{d}t}\right)^2+\left(\dfrac{\textrm{d}y}{\textrm{d}t}\right)^2}\textrm{d}t$\
    $=\sqrt{\psi'^2(t)+\phi'^2(t)}\textrm{d}t$，即$\textrm{d}s=\sqrt{\psi'^2(t)+\phi'^2(t)}\textrm{d}t$。

## 曲率

曲率[**定义：**]{style="color: violet"}表明曲线在某一点的弯曲程度的数值，针对曲线上某个点的切线方向角对弧长的转动率，通过微分来定义，表明曲线偏离直线的程度。曲率越大，表示曲线的弯曲程度越大。

曲率的倒数就是**曲率半径**。

两点切线改变角相同时，弯曲程度与两点之间的弧长度成反比。

两点之间的弧长度相同时，弯曲程度与两点切线改变角成正比。

$y-y_0$平均曲率：$\hat{k}=\dfrac{\vert\Delta\alpha\vert}{\vert\Delta s\vert}$。

$y$曲率：$k=\lim\limits_{\Delta x\to 0}\left\lvert\dfrac{\Delta\alpha}{\Delta s}\right\rvert=\left\lvert\dfrac{\textrm{d}\alpha}{\textrm{d}s}\right\rvert$（$\alpha$为$y$处切线与$x$轴所成角）。

需要对曲率公式进行化简，得到$s$与$\alpha$关于$x$的表示。根据弧微分的定义：$\textrm{d}s=\sqrt{1+f'^2(x)}\textrm{d}x$。

而对于$\alpha$：$\tan\alpha=y'=f'(x)$。

两边对$x$求导：$\sec^2\alpha\cdot\dfrac{\textrm{d}\alpha}{\textrm{d}x}=y''=f''(x)$。

又$\because\sec^2\alpha=1+\tan^2\alpha=1+y'^2$。

$\therefore\dfrac{\textrm{d}\alpha}{\textrm{d}x}=\dfrac{y''}{1+y'^2}\Rightarrow\textrm{d}\alpha=\dfrac{y''}{1+y\,'^2}\textrm{d}x$。

$\therefore \textcolor{aqua}{\textbf{定理：}}k=\left\lvert\dfrac{\textrm{d}\alpha}{\textrm{d}s}\right\rvert=\dfrac{\vert y''\vert}{(1+y'^2)^{\frac{3}{2}}}$。

## 曲率半径

$\odot\,O$为函数$L$在点$X$处的曲率圆，该圆与$L$在$X$处相切，切线为$T$。

该点的曲率半径为$R$，其中$R=\dfrac{1}{K}$。
