---
author:
- Didnelpsun
title: 不定积分与定积分
---

# 1 不定积分

## 1.1 定义

设$f(x)$定义在区间$I$上，若存在可导函数$F(x)$，使得$F'(x)=f(x)$对于任意$x\in I$都成立，则称$F(x)$为$f(x)$在区间$I$上的一个**原函数**。

[**定理：**]{style="color: aqua"}任意的两个原函数只相差一个常数。

在区间$I$上，函数$f(x)$带有任意常数项的原函数$F(x)+C$称为$f(x)/f(x)\,\textrm{d}x$在该区间上的不定积分，记为$\int f(x)\,\textrm{d}x$，其中$\int$为**积分号**，$f(x)$为**被积函数**，$f(x)\,\textrm{d}x$为**被积表达式**，$x$为**积分变量**。

积分就是导数的逆运算。$\int f(x)\,\textrm{d}x=F(x)+C$，$F'(x)=f(x)$。

## 1.2 性质

### 1.2.1 计算性质

积分运算就可以将原来求导的方式进行逆运算。其中隐函数求导法与参数方程求导法都可以看作复合函数求导法则的变式。

积分运算具有两个性质：

1.  $\int[f(x)+g(x)]\textrm{d}x=\int f(x)\textrm{d}x+\int g(x)\textrm{d}x$，就是分项积分法。

2.  $\int kf(x)\textrm{d}x=k\int f(x)\textrm{d}x$（$k\neq 0$）。

复合函数的求导法则的逆运算，就是换元积分法。

函数乘积的求导法则的逆运算，就是分部积分法。

### 1.2.2 存在性性质

即一元函数的常义（区间有限，函数有界）可积性。

[**定理：**]{style="color: aqua"}连续函数必有原函数。而反之有原函数不一定是连续函数，可能有第二类间断点。

[**定理：**]{style="color: aqua"}含有第一类间断点、无穷间断点的函数$f(x)$在包含其间断点的区间内必没有原函数$F(x)$。（可以用导数介值定理反证，一个函数的导数不可能导出不可导的点）

若原函数含有震荡间断点则可能导出导函数。

如$F(x)=\left\{\begin{array}{lcl}
    x^2\sin\dfrac{1}{x}, & & x\neq 0 \\
    0, & & x=0
\end{array}\right.$，$f(x)=\left\{\begin{array}{lcl}
    2x\sin\dfrac{1}{x}-\cos\dfrac{1}{x}, & & x\neq 0 \\
    0, & & x=0
\end{array}\right.$。

这个函数$F(x)$是连续函数，而$f(x)$在靠近0时的极限为$\lim\limits_{x\to 0}(2x\sin\dfrac{1}{x}-\cos\dfrac{1}{x})=-\lim\limits_{x\to 0}\cos\dfrac{1}{x}$是一个振荡间断点。

## 1.3 换元积分法

### 1.3.1 第一类换元法（凑微分法）

[**定理：**]{style="color: aqua"}$\int f(u)\,\textrm{d}u=F(u)+C$，则$\int f[\varphi(x)]\varphi'(x)\,\textrm{d}x=\int f[\varphi(x)]\,\textrm{d}\varphi(x)=F[\varphi(x)]+C$。

即用一个中间变量如$t$替换一个$x$的复杂表达式从而让式子更简单接近基本积分公式。

如$\displaystyle{\int\dfrac{x}{\sqrt{1+x^2}}\textrm{d}x=\dfrac{1}{2}\int\dfrac{\textrm{d}(1+x^2)}{\sqrt{1+x^2}}}=\sqrt{1+x^2}+C$。

凑微分法适用于式子比较简单的情况，所凑微分的形式必须符合一个简单积分公式的式子，且有一定的式子可以提出来到微分号后面。

**例题：**

解：$\int(1+3x)^{100}\,\textrm{d}x=\dfrac{1}{3}\int(1+3x)^{100}\,\textrm{d}(1+3x)=\dfrac{1}{303}(1+3x)^{101}+C$。

$\int\cos^2x\,\textrm{d}x=\dfrac{1}{2}\int(1+\cos 2x)\,\textrm{d}x=\dfrac{1}{2}\left(x+\dfrac{1}{2}\sin 2x\right)+C$。

$\int\cos^3x\,\textrm{d}x=\int\cos^2\,\textrm{d}\sin x=\int(1-\sin^2x)\,\textrm{d}\sin x=\sin x-\dfrac{1}{3}\sin^3x+C$。

$\displaystyle{\int\dfrac{\textrm{d}x}{x\sqrt{1+\ln x}}=\int\dfrac{\textrm{d}(1+\ln x)}{\sqrt{1+\ln x}}}=2\sqrt{1+\ln x}+C$。

$\displaystyle{\int\dfrac{\textrm{d}x}{\sqrt{x}(1+x)}=2\int\dfrac{\textrm{d}\sqrt{x}}{1+(\sqrt{x})^2}}=2\arctan\sqrt{x}+C$。

$\displaystyle{\int\dfrac{\arcsin\sqrt{x}}{\sqrt{x(1-x)}}\,\textrm{d}x=\int\dfrac{\arcsin\sqrt{x}}{1-x}\cdot\dfrac{\textrm{d}x}{\sqrt{x}}=2\int\dfrac{\arcsin\sqrt{x}}{1-(\sqrt{x})^2}\,\textrm{d}\sqrt{x}}$

$=2\int\arcsin\sqrt{x}\,\textrm{d}\arcsin\sqrt{x}=(\arcsin\sqrt{x})^2+C$。

$\displaystyle{\int\dfrac{\textrm{d}x}{\sqrt{a^2-x^2}}}=\displaystyle{\int\dfrac{\textrm{d}\left(\dfrac{x}{a}\right)}{\sqrt{1-\left(\dfrac{x}{a}\right)^2}}}=\arcsin\dfrac{x}{a}+C$。

$\displaystyle{\int\dfrac{\textrm{d}x}{a^2+x^2}}=\displaystyle{\int\dfrac{\textrm{d}\left(\dfrac{x}{a}\right)}{1+\left(\dfrac{x}{a}\right)^2}}=\dfrac{1}{a}\arctan\dfrac{x}{a}+C$。

$\displaystyle{\int\dfrac{\textrm{d}x}{x^2-a^2}}=\displaystyle{\int\dfrac{\textrm{d}x}{(x-a)(x+a)}}=\dfrac{1}{2a}\displaystyle{\int\left(\dfrac{1}{x-a}-\dfrac{1}{x+a}\right)\textrm{d}x}$

$=\dfrac{1}{2a}\left(\displaystyle{\int\dfrac{\textrm{d}(x-a)}{x-a}-\int\dfrac{\textrm{d}(x+a)}{x+a}}\right)=\dfrac{1}{2a}\ln\left\vert\dfrac{x-a}{x+a}\right\vert+C$。

### 1.3.2 第二类换元法

[**定理：**]{style="color: aqua"}设$x=\varphi(t)$为单调可导函数，且$\varphi'(t)\neq 0$，$\int f[\varphi(t)\varphi'(t)]\,\textrm{d}t=F(t)+C$，则$\int f(x)\textrm{d}x=\int f[\varphi(t)\varphi'(t)]\,\textrm{d}t=F(t)+C=F[\varphi^{-1}(x)]+C$。

第二类换元法适用于无法适用第一类换元法的情况，但是最重要的还是对于中间变量的取值，这个中间变量必须要让原式子更能接近公式，且还要注意到变量取值范围。

第二类换元法相当于第一类换元法的逆运算，不是将复杂的$x$表达式转为简单的一个$t$，而是将一个简单的$x$转换为一个关于$t$的表达式。这是因为简单的$x$无法求出积分结果，必须通过复杂化$x$"中和"一部分式子来进行转化。

[注意：]{style="color: orange"}$\varphi'(t)\neq 0$是为了保证中间变量函数具有反函数，而严格单调函数必然有反函数，所以只要能证明这个中间变量函数必然严格单调，那么其实$\varphi'(t)$也可以等于0。

**例题：**求$\int\sqrt{a^2-x^2}\,\textrm{d}x(a>0)$。

解：首先看题目，如果使用凑微分法，那必须从式子中提取出一个式子放到微分后面，且提取后的式子满足一个简单的积分公式。

这个式子一般就只能提取出$x$到平方号外面，但是提取后式子仍不能变为一个简单微分公式，所以说第一种凑微分法就无法使用，就只能使用第二类换元法。

这个式子是一个平方取开平方的式子，所以取中间变量后最好让这个式子能被开平方。又涉及到一个常数$a$，所以我们很容易就想到是否可以通过三角函数来作为中间变量。

所以取$x=a\sin t$，从而$\sqrt{a^2-x^2}=a\cos t$。

并且还要注意到这个$t$的取值范围。

因为$x=\varphi(t)$是一个单调可导的函数。所以$\sin t$必须取在单调区间上。

又$\sqrt{a^2-x^2}$要求$-a\leqslant x\leqslant a$，$-a\leqslant a\sin t\leqslant a$，从而$-1\leqslant\sin t\leqslant 1$。

且$\varphi'(t)\neq 0$，所以$\cos t\neq 0$。

所以综上三个条件从而得到一个$t$的定义域：$t\in\left[-\dfrac{\pi}{2},0\right)\cup\left(0,\dfrac{\pi}{2}\right]$。

但是在$\left[-\dfrac{\pi}{2},\dfrac{\pi}{2}\right]$上$\varphi'(t)=a\sin t$是严格单调递增的，单调函数必然存在反函数，所以$\varphi'(t)$可以等于0，从而$t\in\left[-\dfrac{\pi}{2},\dfrac{\pi}{2}\right]$。

$\int\sqrt{a^2-x^2}\,\textrm{d}x=a\int\cos t\,\textrm{d}a\sin t=a^2\int\cos^2t\textrm{d}t=\dfrac{a^2}{2}\int(1+\cos 2t)\textrm{d}t=\dfrac{a^2}{2}\left(t+\dfrac{1}{2}\sin 2t\right)+C=\dfrac{a^2}{2}\left(\arcsin\dfrac{x}{a}+\dfrac{x}{a}\sqrt{1-\dfrac{x^2}{a^2}}\right)+C$。

**例题：**

解：已知$\tan^2x+1=\sec^2x$。

$\displaystyle{\int\dfrac{\textrm{d}x}{\sqrt{a^2+x^2}}}(a>0)$。

令$x=a\tan t$。

原式$=\displaystyle{\int\dfrac{a\sec^2t}{a\sec t}\,\textrm{d}t=\int\sec t\,\textrm{d}t}=\ln\vert\sec t+\tan t\vert+C=\ln\bigg\vert\sqrt{1+\dfrac{x^2}{a^2}}+\dfrac{x}{a}\bigg\vert+C$。

$\displaystyle{\int\dfrac{\textrm{d}x}{\sqrt{x^2-a^2}}}(a>0)$。

令$x=a\sec t$。

原式$=\displaystyle{\int\dfrac{a\sec t\tan t}{a\tan t}\,\textrm{d}t}=\ln\bigg\vert\sec t+\tan t\bigg\vert+C=\ln\bigg\vert\dfrac{x}{a}+\sqrt{\dfrac{x^2}{a^2}-1}\vert+C$。

所以常用的换元积分替换方式：

1.  $\sqrt{a^2-x^2}$：$x=a\sin t(a\cos t)$。

2.  $\sqrt{a^2+x^2}$：$x=a\tan t$。

3.  $\sqrt{x^2-a^2}$：$x=a\sec t$。

换元法本质是将式子转换为我们已知的积分公式，所以换元积分法只适合于能转换为积分公式的简单式子上，如果式子比较复杂或形式与大部分积分公式不一致，那么也无法换元了。

## 1.4 分部积分法

已知$(uv)'=uv'+u'v$，所以$uv'=(uv)'-u'v$，从而$\int uv'\,\textrm{d}x=\int(uv)'\,\textrm{d}x-\int vu'\,\textrm{d}x$，即$\int u\,\textrm{d}v=uv-\int v\,\textrm{d}u$。

所以分部积分法的公式就是：$\int u\,\textrm{d}v=uv-\int v\,\textrm{d}u$。

所以分部积分法的适用方式就是所求积分的式子是一个可拆分为两项不同函数的式子，式子的分式中一个式子不好积分，另一个式子好积分，就可以用好积分的式子来积分计算。

### 1.4.1 基本分部积分

**例题：**

解：$\int xe^x\,\textrm{d}x=\int x\,\textrm{d}e^x=xe^x-\int e^x\textrm{d}x=xe^x-e^x+C$。

$\int x\sin x\,\textrm{d}x=-\int x\,\textrm{d}\cos x=-[x\cos x-\int\cos x\,\textrm{d}x]=-[x\cos x-\sin x]+C=\sin x-x\cos x+C$。

$\int x\ln x\,\textrm{d}x=\dfrac{1}{2}\int\ln x\textrm{d}x^2=\dfrac{1}{2}[x^2\ln x-\ln x^2\textrm{d}\ln x]=\dfrac{1}{2}[x^2\ln x-\ln x\textrm{d}x]=\dfrac{1}{2}x^2\ln x-\dfrac{1}{4}x^2+C$。

$\int x\arctan x\textrm{d}x=\dfrac{1}{2}\int\arctan x\textrm{d}x^2=\dfrac{1}{2}\left[x^2\arctan x-\displaystyle{\int\dfrac{x^2}{1+x^2}\textrm{d}x}\right]=\\ \dfrac{1}{2}[x^2\arctan x-x+\arctan x]+C$。

### 1.4.2 多次分部积分还原

当式子中含有$\sin x$，$\cos x$，$e^x$这种积分后变化不大的因式时，可以适用多步分部积分，然后在右边计算的式子中得到左边目标式子一样的因式，然后移到一边就能得到目标式子的表达式。

**例题：**

解：

$\begin{aligned}
    \int e^x\sin x\,\textrm{d}x & =\int\sin x\,\textrm{d}e^x \\
    & =e^x\sin x-\int e^x\cos x\,\textrm{d}x \\
    & =e^x\sin x-\int\cos x\,\textrm{d}e^x \\
    & =e^x\sin x-\left[e^x\cos x+\int e^x\sin\,\textrm{d}x\right] \\
    2\int e^x\sin x\,\textrm{d}x & =e^x\sin x-e^x\cos x
\end{aligned}$

$\therefore\int e^x\sin x\,\textrm{d}x=\dfrac{e^x\sin x-e^x\cos}{2}+C$。

$\begin{aligned}
    \int\sec^3x\,\textrm{d}x =&\int\sec x\,\textrm{d}\tan x \\
    & =\sec x\tan x-\int\tan^2x\sec x\,\textrm{d}x \\
    & =\sec x\tan x-\int\sec^3x\textrm{d}x+\int\sec x\textrm{d}x \\
    2\int\sec^3x\,\textrm{d}x =&[\sec x\tan x+\ln\vert\sec x+\tan x\vert]
\end{aligned}$

$\therefore\int\sec^3x\,\textrm{d}x =\dfrac{\sec x\tan x+\ln\vert\sec x+\tan x\vert}{2}+C$。

如上所说分部积分的方法就是找到目标式子中两个因式好求的一部分进行积分，其中好求是指$\textrm{d}v$微分后这个结果会简化整个式子。

其中$e^x$，$\sin x$，$\cos x$这三个因式求微分后无法简化，所以无法对其微分，除非需要多次分部积分还原间接求出；$x^n$微分后会降幂，所以一般可以积分；而$\ln x$，$\arctan x$，$\arcsin x$微分会转换为幂函数相关的式子降低幂次，如果不对其微分则无法消去这三个函数，所以如果出现这三个因式必然优先微分。

所以常用的分部积分方式：

1.  $\int x^ne^x\,\textrm{d}x$、$\int x^n\sin x\,\textrm{d}x$，$\int x^n\cos x\,\textrm{d}x$：对非幂函数的部分，即对$e^x$或三角函数进行分部。

2.  $\int x^n\ln x\,\textrm{d}x$，$\int x^n\arctan x\,\textrm{d}x$，$\int x^n\arcsin x\,\textrm{d}x$：对幂函数的部分，即对$x^n$进行分部。

3.  $\int e^x\sin x\,\textrm{d}x$，$\int e^x\cos x\,\textrm{d}x$：对哪个部分进行分部都可以，而$e^x$进行分部积分时没有正负号的改变，所以对$e^x$进行分部积分，需要多次分部积分还原。

## 1.5 有理函数的积分

两个多项式的商$\dfrac{P(x)}{Q(x)}$被称为有理函数，或有理分式。

假设该多项式之间没有公因式，当$P(x)$的次数小于$Q(x)$的次数时称为真分式，否则称为假分式。

假分式可以分解为多项式与真分式之和。

真分式$\dfrac{P(x)}{Q(x)}$若可以分解为两个或多个多项式的乘积：$\dfrac{P(x)}{Q(x)}=\dfrac{P_1(x)}{Q_1(x)}+\dfrac{P_2(x)}{Q_2(x)}+\cdots$，则称为将真分式化为部分分式之和。其中$P_i$的最高阶应该低于$Q_i$最高阶次数。

通过这种化简方式，可以在求以商的形式的有利函数的式子的积分时拆分因式，从而简化积分运算。这种简化运算主要体现在分数的积分为对数。

即将多项式的积分式子转换为$\displaystyle{\int\dfrac{A}{x-a}\textrm{d}x}$和$\displaystyle{\int\dfrac{A}{(x-a)^n}\textrm{d}x}$等形式。

当然如果多项式是无法拆分为一次的多个式子，那就无法使用有理函数积分的化简方式。

[**定理：**]{style="color: aqua"}

$\dfrac{P}{(A_0x^a+A_1x^{a-1}+\cdots+A_ax^0)\cdots(N_0x^n+N_1x^{n-1}+\cdots+N_nx^0)}$

$=\dfrac{a_0x^{a-1}+a_1x^{a-2}+\cdots+a_{a-1}x^0}{A_0x^a+A_1x^{a-1}+\cdots+A_ax^0}+\cdots+\dfrac{n_0x^{n-1}+n_1x^{n-2}+\cdots+n_{n-1}x^0}{N_0x^n+N_1x^{n-1}+\cdots+N_nx^0}$

如$\dfrac{2x+3}{(x+1)(x+2)(x^2+3x+1)}=\dfrac{A}{x+1}+\dfrac{B}{x+2}+\dfrac{Cx+D}{x^2+3x+1}$

从而$A(x+2)(x^2+3x+1)+B(x+1)(x^2+3x+1)+(Cx+D)(x+1)(x+2)$

$=A(x^3+5x^2+7x+2)+B(x^3+4x^2+4x+1)+(Cx^3+(3C+D)x^2+(2C+3D)x+2D)$

$=(A+B+C)x^3+(5A+4B+3C+D)x^2+(7A+4B+2C+3D)x+(2A+B+2D)$

从而$A+B+C=0$（），$5A+4B+3C+D=0$（），$7A+4B+2C+3D=2$（），$2A+B+2D=3$（）。

-3×=$2A+B+D=0$（）

-=$D=3$。

从而$5A+4B+3C=-3$（），$7A+4B+2C=-7$（），$2A+B=-3$（）。

-=$2A-C=-4$（）。

+=$3A+B=-4$（）。

-=$A=-1$。

从而$B+C=1$（），$4B+3C=2$（），$4B+2C=0$（），$B=-1$（）。

从而$C=2$。

所以$\dfrac{2x}{(x+1)(x+2)(x^2+3x+1)}=-\dfrac{1}{x+1}-\dfrac{1}{x+2}+\dfrac{2x+3}{x^2+3x+1}$。

[**定理：**]{style="color: aqua"}

$\dfrac{P}{x^n}=\dfrac{A}{x}+\dfrac{B_0x+B_1}{x^2}+\cdots+\dfrac{N_0x^{n-1}+\cdots+N_{n-1}x^0}{x^n}$

如$\dfrac{2x}{(1+x)(x^2+1)^2}=-\dfrac{1}{2}\dfrac{1}{x+1}+\dfrac{1}{2}\dfrac{x-1}{x^2+1}+\dfrac{x+1}{(x^2+1)^2}$。

# 2 定积分

不定积分的概念根据导数的代数定义给出，而定积分则由几何的面积运算引出。

定积分是积分的一种，是函数在一个区间上积分和的极限。已知$f(x)$为速度函数，则$f'(x)$为速度变化率函数，$\textrm{d}f(x)$为瞬时位移，则$\int_{a}^bf(x)\,\textrm{d}x$为位移函数。

如果说是微分就是微小改变量的计算，那么积分就是累加无穷个微分得到的整个计算。

## 2.1 定义

设函数$f(x)$在区间$[a,b]$上连续，将区间分割为$n$个子区间：$[x_0,x_1],(x_1,x_2],$\
$(x_2,x_3],\cdots,(x_{n-1},x_n]$，其中$x_0=a$，$x_n=b$。并可知各区间长度为$\Delta x_1=x_1-x_0\cdots$，在每个子区间$(x_{i-1},x_i]$上任意取一点$\xi_i(i=1,2,\cdots,n)$，做累计和$\sum\limits_{i=1}^nf(\xi_i)\Delta x_i=\lim\limits_{n\to\infty}\sum\limits_{i=1}^nf(a+\dfrac{b-a}{n}i)\dfrac{b-a}{n}=\lim\limits_{n\to\infty}\sum\limits_{i=1}^nf(\dfrac{i}{n})\dfrac{1}{n}=\int_0^1f(x)\,\textrm{d}x$，这个式子被称为积分和。

设$\lambda=\max{\Delta x_1,\Delta x_2,\cdots,\Delta x_n}$，从而$\lambda$为最大的区间长度，若$\lambda\to 0$时积分和极限$\lim\limits_{\lambda\to 0}\sum\limits_{i=1}^nf(\xi_i)\Delta x_i$存在，则这个极限就是函数在区间$[a,b]$的定积分，记为$\int_a^bf(x)\,\textrm{d}x$，并称函数$f(x)$在区间$[a,b]$上可积。

其中$a$为积分下限，$b$为积分上限，区间$[a,b]$为积分区间，函数$f(x)$为被积函数，$x$是积分变量，$f(x)\,\textrm{d}x$为被积表达式，$\int$为积分号。

通过数列极限可以计算积分：$\displaystyle{\int_a^bf(x)\,\textrm{d}x=\lim\limits_{n\to\infty}\sum\limits_{i=1}^nf\left(a+\dfrac{b-a}{n}\cdot i\right)\dfrac{b-a}{n}}$。

## 2.2 性质

[**定理：**]{style="color: aqua"}定积分由积分上下限与函数关系确定，与积分变量无关。$\int_a^xf(x)\,\textrm{d}x=\int_a^xf(t)\,\textrm{d}t=\varPhi(x)$。

### 2.2.1 计算性质

设函数$f(x)$在区间$[a,b]$上连续，则得到定积分基本计算性质：

1.  当$a=b$时，$\int_a^bf(x)\,\textrm{d}x=0$。

2.  当$a>b$时，$\int_a^bf(x)\,\textrm{d}x=-\int_b^af(x)\,\textrm{d}x$。

3.  $\int_a^bkf(x)\,\textrm{d}x=k\int_a^bf(x)\,\textrm{d}x$。

4.  $\int_a^b[f(x)\pm g(x)]\,\textrm{d}x=\int_a^bf(x)\,\textrm{d}x\pm\int_a^bg(x)\,\textrm{d}x$。

5.  $\int_a^bf(x)\,\textrm{d}x=\int_a^cf(x)\,\textrm{d}x+\int_c^bf(x)\,\textrm{d}x$，若$c$处于函数的可积区间。

6.  若$[a,b]$上$f(x)\geqslant 0$，则$\int_a^bf(x)\,\textrm{d}x\geqslant 0$。当$f(x)\equiv0$时等号成立。

7.  若$[a,b]$上$f(x)\leqslant g(x)$，则$\int_a^bf(x)\,\textrm{d}x\leqslant\int_a^bg(x)\,\textrm{d}x$。

8.  $\left\vert\int_a^bf(x)\,\textrm{d}x\right\vert\leqslant\int_a^b\vert f(x)\vert\,\textrm{d}x$。

9.  已知$f(x)\in[m,M]$在$[a,b]$上成立，则$m(b-a)\leqslant\int_a^bf(x)\,\textrm{d}x\leqslant M(a-b)$。

10. 估值定理：当$M$，$m$分别为$f(x)$在$[a,b]$上的最大值和最小值，则$m(b-a)\leqslant\int_a^bf(x)\,\textrm{d}x\leqslant M(b-a)$。

11. 积分中值定理：$\exists\,\xi\in[a,b]$，使得$\int_a^bf(x)\,\textrm{d}x=f(\xi)(b-a)$。

12. 积分中值定理推广：设$f(x)\in[a,b]$，$\exists\,\xi\in(a,b)$，使得$\int_a^bf(x)\,\textrm{d}x=f(\xi)(b-a)$。

证明第八条：已知$-\vert f(x)\vert\leqslant f(x)\leqslant\vert f(x)\vert$。

即得到$-\int_a^b\vert f(x)\vert\,\textrm{d}x\leqslant\int_a^bf(x)\,\textrm{d}x\leqslant\int_a^b\vert f(x)\vert\,\textrm{d}x$。

从而得证。

证明第十一条积分中值定理：

设函数$f(x)$在区间$[a,b]$上连续，因为闭区间上连续函数必然有最大最小值，所以设最大值为$M$，最小值为$m$，$M\geqslant m$。

对$m\leqslant f(x)\leqslant M$两边积分得到：$m(b-a)\leqslant\int_a^bf(x)\,\textrm{d}x\leqslant M(b-a)$。

同时除以$b-a$得到：$m\leqslant\dfrac{1}{b-a}\int_a^bf(x)\,\textrm{d}x\leqslant M$。

由连续函数的介值定理，必然存在一个$\xi$，使得$f(\xi)=\dfrac{1}{b-a}\int_a^bf(x)\,\textrm{d}x$。

从而得到$\exists\,\xi\in[a,b]$，使得$\int_a^bf(x)\,\textrm{d}x=f(\xi)(b-a)$。

也可以使用下面的变限积分来证明：

因为$f(x)$连续，所以有积分，设$F(x)=\int_a^xf(t)\,\textrm{d}t$。

对$F(x)$使用拉格朗日中值定理：$F(b)-F(a)=F'(\xi)(b-a)$，即$\int_a^bf(x)\,\textrm{d}x=f(\xi)(b-a)$，其中$\xi\in(a,b)\subset[a,b]$。

证明第十二条积分中值定理的推广。令$F(x)=\int_a^xf(t)\,\textrm{d}t$，$F'(x)=f(x)$。

$\int_a^bf(x)\,\textrm{d}x=F(b)-F(a)=F'(\xi)(b-a)=f(\xi)(b-a)$（$a<\xi<b$）。

### 2.2.2 存在性性质

充分条件：

1.  设函数$f(x)$在区间$[a,b]$上连续，则$f(x)$在该区间上可积。

2.  设函数$f(x)$在区间$[a,b]$上单调，则$f(x)$在该区间上可积。

3.  设函数$f(x)$在区间$[a,b]$上有界，且只有有限个间断点，则$f(x)$在该区间上可积。

必要条件：可积函数必然有界。

### 2.2.3 定积分与函数性质

1.  若函数$f(x)$是周期函数且周期为$T$，$\int_a^{a+T}f(x)\,\textrm{d}x=\int_0^Tf(x)\,\textrm{d}x$，\
    $\int_\alpha^{\alpha+nT}f(x)\,\textrm{d}x=n\int_0^Tf(x)\,\textrm{d}x$（$n\in N$）对于$\forall a$成立。

2.  若函数$f(x)$是连续的偶函数，则$\int_{-a}^af(x)\,\textrm{d}x=2\int_0^af(x)\,\textrm{d}x$。

3.  若函数$f(x)$是连续的奇函数，则$\int_{-a}^af(x)\,\textrm{d}x=0$。

4.  区间再现公式：若函数$f(x)$为连续函数，则$\int_a^bf(x)\,\textrm{d}x=\int_a^bf(a+b-x)\,\textrm{d}x$。

5.  华里士公式（根据区间再现公式可知$\int_0^\frac{\pi}{2}\sin^nx\,\textrm{d}x=\int_0^\frac{\pi}{2}\cos^nx\,\textrm{d}x$）：
    $$\int_0^\frac{\pi}{2}\sin^nx\,\textrm{d}x=\int_0^\frac{\pi}{2}\cos^nx\,\textrm{d}x=\left\{\begin{array}{ll}
            \dfrac{n-1}{n}\cdot\dfrac{n-3}{n-2}\cdot\cdots\cdot\dfrac{2}{3}\cdot1, & n\text{为非}1\text{奇数} \\ \medskip
            \dfrac{n-1}{n}\cdot\dfrac{n-3}{n-2}\cdot\cdots\cdot\dfrac{1}{2}\cdot\dfrac{\pi}{2}, & n\text{为正偶数}
        \end{array}\right.$$

6.  $\int_0^\pi\sin^nx\,\textrm{d}x=2\int_0^\frac{\pi}{2}\sin^nx\,\textrm{d}x$。

7.  $\int_0^\pi\cos^nx\,\textrm{d}x=\left\{\begin{array}{lcl}
            0, & & n\text{为正奇数} \\
            2\int_0^\frac{\pi}{2}\cos^nx\,\textrm{d}x, & & n\text{为正偶数}
        \end{array}\right.$。

8.  $\int_0^{2\pi}\sin^nx\,\textrm{d}x=\int_0^{2\pi}\cos^nx\,\textrm{d}x=\left\{\begin{array}{lcl}
            0, & & n\text{为正奇数} \\
            4\int_0^\frac{\pi}{2}\sin^nx\,\textrm{d}x, & & n\text{为正偶数}
        \end{array}\right.$。

证明定理第一条的第一个式子：根据积分区间可拆性：

$\int_a^{a+T}f(x)\,\textrm{d}x=\int_0^af(x)\,\textrm{d}x+\int_0^Tf(x)\,\textrm{d}x+\int_T^{a+T}f(x)\,\textrm{d}x$

其中令$x-T=t$，即$x=t+T$，将$t$代入上下限：$\int_T^{a+T}f(x)\,\textrm{d}x=\int_0^af(t+T)\,\textrm{d}(t+T)$，因为$f(x)$是周期函数，周期为$T$，$\therefore=\int_0^af(t)\,\textrm{d}t=\int_0^af(x)\,\textrm{d}x$。

$\therefore\int_a^{a+T}f(x)\,\textrm{d}x=\int_0^af(x)\,\textrm{d}x+\int_0^Tf(x)\,\textrm{d}x+\int_0^af(x)\,\textrm{d}x=\int_0^Tf(x)\,\textrm{d}x$。

证明区间再现公式：令$x=a+b-t$。

这种方法也称为定积分的[区间再现换元法]{style="color: orange"}。

$\int_a^bf(x)\,\textrm{d}x=\int_b^af(a+b-t)(-\textrm{d}t)=\int_a^bf(a+b-t)\,\textrm{d}t=\int_a^bf(a+b-x)\,\textrm{d}x$。

如何使用区间再现换元法来进行计算呢？可能$\int_a^bf(x)\,\textrm{d}x$和$\int_a^bf(a+b-x)\,\textrm{d}x$解不出来，但是可能$\int_a^bf(x)\,\textrm{d}x+\int_a^bf(a+b-x)\,\textrm{d}x$能解出，所以就能解出原来的结果。

**例题：**(1)已知$f(x)$为一个周期为$T$的偶函数，证明$\int_0^{nT}xf(x)\,\textrm{d}x=\dfrac{n^2T}{2}\int_0^Tf(x)\,\textrm{d}x$。

(2)计算$I=\int_0^{n\pi}x\vert\sin x\vert\,\textrm{d}x$。

(1)证明：因为$f(x)$是一个不定的函数，所以基本的四种积分方法都无法使用，可以尝试首先对于第一问使用区间再现换元，令$x=nT-t$：

$\int_0^{nT}xf(x)\,\textrm{d}x=\int_{nT}^0(nT-t)f(nT-t)(-\textrm{d}t)=\int_0^{nT}(nT-t)f(nT-t)\,\textrm{d}t$。

又因为$f(x)$是一个周期为$T$的函数，所以$f(nT-t)=f(-t)$，又是偶函数，所以$f(-t)=f(t)$。

$=\int_0^{nT}nTf(t)\,\textrm{d}t-\int_0^{nT}tf(t)\,\textrm{d}t$，又$\int_0^{nT}tf(t)\,\textrm{d}t=\int_0^{nT}xf(x)\,\textrm{d}x$。

$\therefore\int_0^{nT}xf(x)\,\textrm{d}x=\dfrac{1}{2}\int_0^{nT}nTf(t)\,\textrm{d}t=\dfrac{nT}{2}\int_0^{nT}f(x)\,\textrm{d}x=\dfrac{n^2T}{2}\int_0^Tf(x)\,\textrm{d}x$。

(2)解：因为$\sin x$以$\dfrac{\pi}{2}$为周期，所以$\vert\sin x\vert$以$\pi$为周期。

根据第一问的公式：$\int_0^{n\pi}x\vert\sin x\vert\,\textrm{d}x=\dfrac{n^2\pi}{2}\int_0^\pi\vert\sin x\vert\,\textrm{d}x=\dfrac{n^2\pi}{2}[-\cos x]_0^\pi=n^2\pi$。

**例题：**求$\int_0^\pi x\sin^9x\,\textrm{d}x$。

解：需要先把$x$消掉才能使用华里士公式，使用区间再现公式，令$x=\pi-t$：

$=\int_0^\pi(\pi-x)\sin^9(\pi-x)\,\textrm{d}x=\int_0^\pi\pi\sin^9x\,\textrm{d}x-\int_0^\pi x\sin^9x\,\textrm{d}x$，积分再现。

$\therefore\int_0^\pi x\sin^9x\,\textrm{d}x=\dfrac{\pi}{2}\int_0^\pi\sin^9x\,\textrm{d}x=\pi\dfrac{8}{9}\dfrac{6}{7}\dfrac{4}{5}\dfrac{2}{3}=\dfrac{128}{315}\pi$。

## 2.3 牛顿-莱布尼茨公式

[**定理：**]{style="color: aqua"}（微积分基本定理/牛顿-莱布尼茨公式）若函数$F(x)$是连续函数$f(x)$在区间$[a,b]$上的一个原函数，则$\int_a^bf(x)\,\textrm{d}x=F(b)-F(a)$。

利用牛莱公式证明积分中值定理：

已知$F'(x)=f(x)$。

$\int_a^bf(x)\,\textrm{d}x=F(b)-F(a)=F'(\xi)(b-a)=f(\xi)(b-a)(a<\xi b)$。

牛-莱公式连接了微分学和积分学之间的关系。

## 2.4 不定积分与定积分的区别与联系

区别：

不定积分最后结果是一类函数的集合；定积分的结果是一个数，或是关于积分上下限的二元函数或运算。

不定积分概念建立于原函数上，定积分的概念建立于求曲边图形面积上。

一个函数，可以存在不定积分，而不存在定积分，也可以存在定积分，而没有不定积分。连续函数，一定存在定积分和不定积分；若在有限区间$[a,b]$上只有有限个间断点且函数有界，则定积分存在；若有跳跃、可去、无穷间断点，则原函数一定不存在，即不定积分一定不存在。

联系：

定积分的计算建立于不定积分。且方法都是类似的。

可以通过牛-莱公式转换定积分与不定积分。

## 2.5 积分法

定积分的换元积分法与分部积分法就是在定积分的换元积分法与分部积分法上代入了牛-莱公式。定积分的积分法和不定积分的积分法的使用基本上类似。

### 2.5.1 换元积分法

[**定理：**]{style="color: aqua"}设$f(x)$在$[a,b]$上连续，函数$x=\varphi(t)$满足$\varphi(\alpha)=a,\varphi(\beta)=b$，$\varphi(t)$在$[\alpha,\beta]$上具有连续导数，且其值域$R_\varphi=[a,b]$（值域超出而其他条件满足时也成立），则有$\int_a^bf(x)\,\textrm{d}x=\int_\alpha^\beta f[\varphi(t)]\varphi'(t)\,\textrm{d}t$。

定积分的换元和不定积分的换元方法类似，其中重点就是$a$到$\alpha$，$b$到$\beta$的区间变化，从$x$的区间到$\varphi(t)$的区间，需要代入方程使其与原区间相等，从而得到$t$的区间。

**例题：**计算$\int_0^\pi\sqrt{\sin^3x-\sin^5x}\,\textrm{d}x$。

解：由于$\sqrt{\sin^3x-\sin^5x}=\sqrt{\sin^3(1-\sin^2x)}=\sin^\frac{3}{2}x\cdot\vert\cos x\vert$。

注意保留绝对值，若是不保存就会发现后面计算会得到上下限为同样的值从而导致错误。

利用积分的区间可加性将$\vert\cos x\vert$进行拆分。

$=\int_0^\frac{\pi}{2}\sin^\frac{3}{2}x\cos x\,\textrm{d}x+\int_\frac{\pi}{2}^\pi\sin^\frac{3}{2}x(-\cos x)\,\textrm{d}x=\int_0^\frac{\pi}{2}\sin^\frac{3}{2}x\,\textrm{d}(\sin x)-$\
$\int_\frac{\pi}{2}^\pi\sin^\frac{3}{2}x\,\textrm{d}(\sin x)=\dfrac{2}{5}\sin^\frac{5}{2}x|_0^\frac{\pi}{2}-\dfrac{2}{5}\sin^\frac{5}{2}x|_\frac{\pi}{2}^\pi=\dfrac{4}{5}$。

[**定理：**]{style="color: aqua"}设$f(x)$在$[0,1]$上连续：

(1)$\int_0^\frac{\pi}{2}f(\sin x)\,\textrm{d}x=\int_0^\frac{\pi}{2}f(\cos x)\,\textrm{d}x$。

(2)$\int_0^\pi xf(\sin x)\,\textrm{d}x=\dfrac{\pi}{2}\int_0^\pi f(\sin x)\,\textrm{d}x$。

(1)证明：这个证明式子很像华莱士公式。不过华莱士给定函数$f(x)=x^n$。

这个式子需要将$f(\sin x)$变为$f(\cos x)$，即使用诱导公式变化。

$\sin\left(\dfrac{\pi}{2}-x\right)=\cos x$，所以令$x=\dfrac{\pi}{2}-t$，$t=\dfrac{\pi}{2}-x$，当$x=0$，$t=\dfrac{\pi}{2}$，当$x=\dfrac{\pi}{2}$，$t=0$，$\textrm{d}x=-\textrm{d}t$。

$\int_0^\frac{\pi}{2}f(\sin x)\,\textrm{d}x=-\displaystyle{\int_\frac{\pi}{2}^0f\left(\sin\dfrac{\pi}{2}-t\right)\,\textrm{d}t}=$$-\int_\frac{\pi}{2}^0f(\cos t)\,\textrm{d}t=\int^\frac{\pi}{2}_0f(\cos x)\,\textrm{d}x$。

(2)证明：首先需要证明的函数是$xf(\sin x)$，所以想在函数外面也凑出一个$\dfrac{\pi}{2}$。这里也肯定需要诱导公式，但是因为最后还是$\sin x$，所以添加的是偶的。

令$x=\pi-t$，当$x=0$时，$t=\pi$，当$x=\pi$时，$t=0$，且$\textrm{d}x=-\textrm{d}t$。

$\int_0^\pi xf(\sin x)\,\textrm{d}x=-\int_\pi^0(\pi-t)f(\sin(\pi-t))\,\textrm{d}t=\int_0^\pi(\pi-t)f(\sin t)\,\textrm{d}t=$\
$\pi\int_0^\pi f(\sin t)\,\textrm{d}t-\int_0^\pi tf(\sin t)\,\textrm{d}t=\pi\int_0^\pi f(\sin x)\,\textrm{d}x-\int_0^\pi xf(\sin x)\,\textrm{d}x$。

即$\int_0^\pi xf(\sin x)\,\textrm{d}x=\dfrac{\pi}{2}\int_0^\pi f(\sin x)\,\textrm{d}x$。

### 2.5.2 分部积分法

[**定理：**]{style="color: aqua"}$\int_a^bu\,\textrm{d}v=[uv]_a^b-\int_a^bv\,\textrm{d}u$。

其他计算方法与不定积分的方法一样。

# 3 变限积分

## 3.1 定义

设$f(x)$在$[a,b]$上连续，且$\Phi(x)=\int_a^xf(t)\,\textrm{d}t(x\in[a,b])$，这个函数就是积分上限函数或叫积分变限函数（如果$\int_x^af(t)\,\textrm{d}t$就是变下限积分或积分下限函数）。

对变限积分$\int_{a}^xf(t)\,\textrm{d}t$求导得到$f(x)$，再求导就得到$f'(x)$。

定限积分是一个数值，而变限积分是一个函数。

## 3.2 性质

[**定理：**]{style="color: aqua"}设$f(x)$在$[a,b]$上可积，则$\int_a^xf(t)\,\textrm{d}t$在$[a,b]$上的一个原函数连续（连续则连续）

[**定理：**]{style="color: aqua"}设$f(x)$在$[a,b]$上连续，则$\int_a^xf(t)\,\textrm{d}t$在$[a,b]$上的一个原函数可导（连续则可导）$(\int_a^xf(t)\,\textrm{d}t)'=f(x)$。

证明：设$x\in(a,b)$。

则$\dfrac{\Phi(x+\Delta x)-\Phi(x)}{\Delta x}=\dfrac{\int_a^{x+\Delta x}f(t)\,\textrm{d}t-\int_a^xf(t)\,\textrm{d}t}{\Delta x}=\dfrac{\int_x^{x+\Delta x}f(t)\,\textrm{d}t}{\Delta x}$。

由积分中值定理存在$\xi$使得原式$=\dfrac{\Delta x\,f(\xi)}{\Delta x}=f(\xi)$。

从而$\Phi'(x)=\lim\limits_{\Delta x\to 0}\dfrac{\Phi(x+\Delta x)-\Phi(x)}{\Delta x}=f(x)$。

同理当$x=a,\Delta x>0$与$x=b,\Delta x<0$时也同样成立。

固定的上限或下限都不会影响到最后的变限积分结果，因为他们之间只差了一个常数。所以一般会将$a$取为0，这样更方便计算。

变限积分运算[**定理：**]{style="color: aqua"}$\int_a^{\varphi(x)}f(t)\,\textrm{d}t=\int_a^xf(\varphi(x))\,\textrm{d}(\varphi(x))=\int_a^xf(\varphi(x))\varphi'(x)\,\textrm{d}x$，

所以$(\int_a^{\varphi(x)}f(t)\,\textrm{d}t)'=f(\varphi(x))\varphi'(x)$。

**例题：**求$F(x)=\int_0^{x^2}e^{-t^2}\,\textrm{d}t$的导数。

解：由定理，可以将式子看作复合函数求导（注意定理中积分上限为$x$，而这里不是$x$，但是对$x$求导，所以必须看作为一个复合函数求导）。

$F(x)=\int_0^ue^{-t^2}\,\textrm{d}t$，$u=x^2$。

$\therefore F'_x(x)=F'_u(x)\cdot u'_x=e^{-u^2}\cdot 2x=2xe^{-x^4}$。

同理，如果是变下限的变限积分，则可以看作负的变上限积分进行运算，本质是一样的。

也同理，如果上限下限都在变化，则可以利用积分区间的可加性，将这个积分的区间插入一个常数（一般为0），将一个积分式子变为两个积分式子，再分别进行运算。

所以变限为函数的积分求导[**定理：**]{style="color: aqua"}若$\phi(x)$与$\psi(x)$都可导，$f(x)$连续，则$\dfrac{\textrm{d}\int_{\phi(x)}^{\psi(x)}f(t)\,\textrm{d}t}{\textrm{d}x}=f(\psi(x))\psi'(x)-f(\phi(x))\phi'(x)$。

其中$x$为求导变量，$t$为积分变量。

**例题：**求极限$\lim\limits_{x\to 0}\dfrac{\int_0^{\sin^2x}\ln(1+t)\,\textrm{d}t}{x(\sqrt{1+x^3}-1)}$。

解：原式$=\lim\limits_{x\to 0}\dfrac{\ln(1+\sin^2x)2\sin x\cos x}{x(\sqrt{1+x^3}-1)}=\lim\limits_{x\to 0}\dfrac{x^2\cdot 2x\cdot 1}{\dfrac{4}{3}x^3}=\dfrac{3}{2}$。

[**定理：**]{style="color: aqua"}若函数$f(x)$是连续的偶函数，则其积分只有一个$\int^x_0f(t)\,\textrm{d}t$是奇函数。

证明：令$F(x)=\int_0^xf(t)\,\textrm{d}t$，需要证明$F(-x)=-F(x)$。

$F(-x)=\int_0^{-x}f(t)\,\textrm{d}t$，令$t=-u$，所以得到$\int_0^xf(-u)\,\textrm{d}(-u)$。

又$f(x)$偶函数，所以$f(-x)=f(x)$，从而$=\int_0^xf(-u)\,\textrm{d}(-u)=-\int_0^xf(u)\,\textrm{d}u$

$=-\int_0^xf(t)\,\textrm{d}t=-F(x)$。这就是个奇函数。若加上一个常数就不是个奇函数了。

[**定理：**]{style="color: aqua"}若函数$f(x)$是连续的奇函数，则其所有积分$\int^x_af(t)\,\textrm{d}t$都是偶函数。

证明：令$F(x)=\int_0^xf(t)\,\textrm{d}t$，需要证明$F(-x)=F(x)$。

$F(-x)=\int_0^{-x}f(t)\,\textrm{d}t$，令$t=-u$，所以得到$\int_0^xf(-u)\,\textrm{d}(-u)$。

又$f(x)$奇函数，所以$f(-x)=-f(x)$。

从而$=\int_0^x-f(u)(-\textrm{d}u)=\int_0^xf(u)\,\textrm{d}u=\int_0^xf(t)\,\textrm{d}t=F(x)$。

而$\int_a^xf(t)\,\textrm{d}t=\int_a^0f(t)\,\textrm{d}t+\int_0^xf(t)\,\textrm{d}t$也为偶函数。

[**定理：**]{style="color: aqua"}若函数$f(x)$是周期函数且周期为$T$，虽然其导数也为周期函数且周期，但是其变限积分不一定为周期函数。若$\int_0^Tf(x)\,\textrm{d}x=0$即一个周期上的定积分值为0，则这个函数为周期函数，且周期为$T$。

证明：若需要证明其为周期函数，所以要证明$F(x)=\int_0^xf(t)\,\textrm{d}t=F(x+T)$。

$F(x+T)=\int_0^{x+T}f(t)\,\textrm{d}t=\int_0^xf(t)\,\textrm{d}t+\int_x^{x+T}f(t)\,\textrm{d}t$

又根据定积分的周期性质$\int_x^{x+T}f(t)\,\textrm{d}t=\int_0^Tf(x)\,\textrm{d}x$：

$=\int_0^xf(t)\,\textrm{d}t+\int_0^Tf(x)\,\textrm{d}x=\int_0^xf(t)\,\textrm{d}t=F(x)$。（下限值为$a$也可以）

**例题：**若$f(x)$是一个有周期的奇函数，则其积分$\int_a^xf(t)\,\textrm{d}t$是否为周期函数。

解：考察积分是否为周期函数，已知其原式周期函数，只需要考察$\int_0^Tf(x)\,\textrm{d}x$是否为0。

$\int_0^Tf(x)\,\textrm{d}x=\int_a^{a+T}f(x)\,\textrm{d}x=\int_{-\frac{\pi}{2}}^{\frac{\pi}{2}}f(x)\,\textrm{d}x=0$，所以是周期函数。

# 4 反常积分

无论是定限积分还是变限积分，有一部分的区间是固定不变的。

当积分区间为无穷区间，或被积函数为无界函数，那么定积分就无法"定"下来，所以这种积分就是反常积分。

对于无穷区间的反常积分首先求出原函数，然后代入上下限。

## 4.1 无穷区间

设函数$f(x)$在区间$[a,+\infty)$上连续，任取$t>a$，做定积分$\int_a^tf(x)\,\textrm{d}x$，对这种变上限积分的极限$\lim\limits_{t\to+\infty}\int_a^tf(x)\,\textrm{d}x$就是$f(x)$在无穷区间$[a,+\infty)$上的反常积分，记为$\int_a^{+\infty}f(x)\,\textrm{d}x$。

[**定义：**]{style="color: violet"}若函数$f(x)$在区间$[a,+\infty)$上连续，且极限$\lim\limits_{t\to+\infty}\int_a^tf(x)\,\textrm{d}x$存在，则称反常积分$\int_a^{+\infty}f(x)\,\textrm{d}x$收敛，且这极限就是该反常积分的值，若该极限不存在，则反常积分$\int_a^{+\infty}f(x)\,\textrm{d}x$发散。

同理可以给出[**定义：**]{style="color: violet"}$\int_{-\infty}^af(x)\,\textrm{d}x=\lim\limits_{t\to-\infty}\int_t^af(x)\,\textrm{d}x$。

无穷限反常积分[**定义：**]{style="color: violet"}$\int_{-\infty}^{+\infty}f(x)\,\textrm{d}x=\int_{-\infty}^0f(x)\,\textrm{d}x+\int_0^{+\infty}f(x)\,\textrm{d}x$。

对于无穷区间的反常积分要求的就是$\lim\limits_{x\to\infty}f(x)$。

## 4.2 无界函数

若$f(x)$在点$a$的任意一个邻域内都无界，则$a$就是$f(x)$的瑕点（无穷间断点），无界函数的反常积分又称为瑕积分。

设$f(x)$在区间$(a,b]$上连续，点$a$为$f(x)$的瑕点，任取$t>a$，作定积分$\int_t^bf(x)\,\textrm{d}x$，则对变下限的定积分求极限的$\lim\limits_{t\to a^+}\int_t^bf(x)\,\textrm{d}x$就是函数$f(x)$在区间$(a,b]$上的反常积分，记为$\int_a^bf(x)\,\textrm{d}x$。

[**定义：**]{style="color: violet"}若$f(x)$在区间$(a,b]$上连续，$a$为$f(x)$的瑕点，若极限$\lim\limits_{t\to a^+}\int_t^bf(x)\,\textrm{d}x$存在，则称反常积分$\int_a^bf(x)\,\textrm{d}x$收敛，并称为此极限为该反常积分的值，若不存在，则反常积分$\int_a^bf(x)\,\textrm{d}x$发散。

同理可得$\int_a^bf(x)\,\textrm{d}x=\lim\limits_{t\to b^-}\int_a^tf(x)\,\textrm{d}x$

若$f(x)$在区间$[a,c)\cup(c,b]$上连续，$c$为瑕点，则$\int_a^bf(x)\,\textrm{d}x=\int_a^cf(x)\,\textrm{d}x+\int_c^bf(x)\,\textrm{d}x$。

对于无界函数的反常积分要求的就是$\lim\limits_{x\to a}f(x)$。

# 5 定积分应用

对比不定积分的直接数学计算，定积分的实际应用要广许多，往往可以用来解决几何、物理等问题。

对于定积分概念的引入就是对求面积采用**元素法**，即将曲边多边形无限次的分割得到每一片的平均值再求和得到近似解。

元素法也叫微元法，是分析、解决物理问题中的常用方法，也是从部分到整体的思维方法。用该方法可以使一些复杂的物理过程用我们熟悉的物理规律迅速地加以解决，使所求的问题简单化。在使用元素法处理问题时，需将其分解为众多微小的"元过程"，而且每个"元过程"所遵循的规律是相同的，这样，我们只需分析这些"元过程"，然后再将"元过程"进行必要的数学方法或物理思想处理，进而使问题求解。

数一基本上只考几何应用不考物理应用。

## 5.1 几何应用

### 5.1.1 面积

#### 5.1.1.1 直角坐标系

即求两条曲线$y=y_1(x)$、$y=y_2(x)$与积分上下限$x=a$与$x=b$所围成的平面图像面积$S=\int_a^b\vert y_1(x)-y_2(x)\vert\,\textrm{d}x$。

若没有指定积分上下限，还要根据两条曲线的图像先确定上下限即$x$的范围。

同理也可以对$y$使用微元法。使用的方法与$x$一致

#### 5.1.1.2 参数方程

参数方程基本不能将中间变量消去，一般还是要计算积分的上下限，然后将积分式子$S=\int_a^bf(x)\,\textrm{d}x$全部换成中间变量$t$：$\int_\alpha^\beta y(t)\,\textrm{d}(x(t))=\int_\alpha^\beta y(t)x'(t)\,\textrm{d}t$。

会很奇怪为什么求$f(x)$的积分变成了求$y(t)$的积分？因为一般直角坐标系给出$x$与$y$的关系$y=y(x)$，最后变量是$x$，而参数方程给出的是$y=y(t)$，$x=x(t)$，中间变量变成了$x$，最后变量变成了$t$，而$y(t)=y(x)$，只不过最终变量不同而已，所以最后$\int_\alpha^\beta y(t)\,\textrm{d}(x(t))$求的就是对$t$的积分值，而无论最后变量是什么，积分变量与积分值无关，所以$x$与$t$一样，这个积分值不变。

#### 5.1.1.3 极坐标

已知极径函数$\rho=\rho(\theta)$，极角$\theta\in[\alpha,\beta]$，极坐标所围成面积就是初始角所在射线与结束角所在射线以及函数所围成的图形。所以微元计算时所围成的图形可以近似看作扇形。从而根据扇形公式得到微元：$\textrm{d}S=\dfrac{1}{2}\rho^2(\theta)\,\textrm{d}\theta$。最后$S=\dfrac{1}{2}\int_\alpha^\beta\rho^2(\theta)\,\textrm{d}\theta$。

即曲线$r=r_1(\theta)$、$r=r_2(\theta)$与上下限射线$\theta=\alpha$、$\theta=\beta$（$0<\beta-\alpha\leqslant2\pi$）所围成的曲边扇形的面积$S=\dfrac{1}{2}\int_\aleph^\beta\vert r_1^2(\theta)-r_2^2(\theta)\vert\,\textrm{d}\theta$。

#### 5.1.1.4 旋转体侧面积

需要联系旋转体的体积的计算来理解，并还要理解后面的弧长是如何求的。

若是对$x$轴旋转的旋转体侧面积，$S=2\pi\int_a^byl\,\textrm{d}x$，其中$a,b$为$x$轴上的距离，$y$为曲线表达式，$l$为$y$的弧长。可以根据圆柱体的侧面积公式来对比理解，$S=2\pi rh$，其中$r$为圆柱体半径，类似$y$，而$h$为圆柱体的高，类似$y$的弧长。

使用弧长而不是$\textrm{d}x$来计算。

曲线$y=y(x)$在区间$[a,b]$上的曲线弧段绕$x$轴旋转一周所得的旋转曲面的表面积$S=2\pi\int_a^b\vert y(x)\vert\sqrt{1+[y'(x)]^2}\,\textrm{d}x$。

曲线$x=x(t)$，$y=y(t)$（$\alpha\leqslant t\leqslant\beta$，$x'(t)\neq0$）在区间$[\alpha,\beta]$上的曲线弧段绕$x$轴旋转一周所得到的旋转曲面的表面积：

$S=2\pi\int_\alpha^\beta\vert y(t)\vert\sqrt{[x'(t)]^2+[y'(t)]^2}\,\textrm{d}t$。（所以参数方程这里就没有把$x(t)$代入$\textrm{d}x$求$x'(t)\textrm{d}t$）

### 5.1.2 体积

圆和椭圆都是有参数方程的，所以对于这种所旋转产生的体积没办法使用参数方程计算。

#### 5.1.2.1 旋转体

对于一条曲线$y=f(x)$以及$x=a$，$x=b$（$a<b$）所围成的平面绕$x$轴进行旋转，可以看作从$x$轴沿$y$轴水平切割旋转体，就得到了以$x$轴为中心的一个圆柱，底边半径为$f(x)$，高度为$\textrm{d}x$，所以$\textrm{d}V_x=\pi f^2(x)\,\textrm{d}x$，所以$V_x=\pi\int_a^bf^2(x)\,\textrm{d}x$（如果用$y(x)$表达，就是$V_x=\pi\int_c^d\varphi^2(y)\,\textrm{d}y$）。

对于一条曲线$y=f(x)$以及$x=a$，$x=b$（$a<b$）所围成的平面绕$y$轴进行旋转，可以看作从旋转中心向外围按同样的半径切割环形体，这个环形体从里到外半径与体积都在不断变大，然后将这个环形体展开为长方体来计算体积，其中长度为原来圆周$2\pi x$，宽度为$f(x)$，高度为$\textrm{d}x$，所以$\textrm{d}V_y=2\pi xf(x)\,\textrm{d}x$，所以$V_y=2\pi\int_a^bx\vert f(x)\vert\,\textrm{d}x$。（柱壳法）（同理也可以使用$y(x)$来表达）

对于两条曲线$y=f_1(x)\geqslant0$，$y=f_2(x)\geqslant0$以及$x=a$，$x=b$（$a<b$）所围成的平面绕$x$轴旋转一周，可以看做一个环形体，中间是空的，所以可以将外面的较大函数旋转得到的大体积减去里面的较小函数旋转得到小体积，体积为$V_x=\pi\int_a^b\vert f_1^2(x)-f_2^2(x)\vert\,\textrm{d}x$。（同理也可以使用$y(x)$来表达）

对于两条曲线$y=f_1(x)\geqslant0$，$y=f_2(x)\geqslant0$以及$x=a$，$x=b$（$a<b$）所围成的平面绕$y$轴旋转一周，可以看做一个环形体，中间是空的，所以可以将外面的较大函数旋转得到的大体积减去里面的较小函数旋转得到小体积，体积为$V_y=2\pi\int_a^bx\vert f_1(x)-f_2(x)\vert\,\textrm{d}x$。（同理也可以使用$y(x)$来表达）

对于不同的旋转轴，可以由前两种情况变为后两种情况来计算。使用第一种方式来计算，如围绕$y=1$旋转，即用$1-f(x)$来替换，围绕$y=-2$，用$-2-g(y)$来替换，不要使用柱壳法来计算。

#### 5.1.2.2 平行截面已知的立体体积

已知截面面积可以通过对应的高得到立体体积，在区间$[a,b]$上，垂直于$x$轴的平面截例题所得到的截面面积为$x$的连续函数$S(x)$，则体积为：$V=\int_a^bS(x)\,\textrm{d}x$。

### 5.1.3 平均值

设$x\in[a,b]$，函数$y(x)$在$[a,b]$上的平均值为$\bar{y}=\dfrac{1}{b-a}\int_a^by(x)\,\textrm{d}x$。就是积分中值定理的平均值代入结果。

平均值即曲边四边形的平均高度。

### 5.1.4 弧长

圆的周长可以用内接正多边形的周长当边数趋于无穷大的极限来表示，同理弧长也可以同样表示。

在弧长中插入$n$个点$M_1,M_2,\cdots,M_{i-1},M_i,\cdots,M_n$。

$S_n=\sum\limits_{i=1}^n\Vert\overline{M_{i-1}M_{i}}\Vert$，$S=\lim\limits_{\delta\to 0}S_n=\lim\limits_{\delta\to 0}\sum\limits_{i=1}^n\Vert\overline{M_{i-1}M_{i}}\Vert$。

对于弧长采用弧微分的方式进行计算：$S=\int_a^b\sqrt{1+y'^2}\,\textrm{d}x$。

如果是参数方程，则$S=\int_\alpha^\beta\sqrt{x'^2+y'^2}\,\textrm{d}t$。

如果是极坐标方程，则$S=\int_\alpha^\beta\sqrt{\rho^2+\rho'^2}\,\textrm{d}\theta$。

### 5.1.5 形心坐标公式

设曲边梯形平面区域$D=\{(x,y)|0\leqslant y\leqslant f(x),a\leqslant x\leqslant b\}$，$f(x)$在$[a,b]$上连续，则$D$的形心坐标计算公式为：

$\overline{x}=\dfrac{\iint\limits_Dx\,\textrm{d}\sigma}{\iint\limits_D\textrm{d}\sigma}=\dfrac{\int_a^b\textrm{d}x\int_0^{f(x)}x\textrm{d}y}{\int_a^b\textrm{d}x\int_0^{f(x)}\,\textrm{d}y}=\dfrac{\int_a^bxf(x)\,\textrm{d}x}{\int_a^bf(x)\,\textrm{d}x}$。

$\overline{y}=\dfrac{\iint\limits_Dy\,\textrm{d}\sigma}{\iint\limits_D\textrm{d}\sigma}=\dfrac{\int_a^b\textrm{d}x\int_0^{f(x)}y\textrm{d}y}{\int_a^b\textrm{d}x\int_0^{f(x)}\,\textrm{d}y}=\dfrac{\int_a^bf^2(x)\,\textrm{d}x}{2\int_a^bf(x)\,\textrm{d}x}$。

## 5.2 物理应用

### 5.2.1 变力沿直线做功

设方向沿$x$轴正向的力函数为$F(x)$（$a\leqslant x\leqslant b$），则物体沿$x$轴从点$a$移动到点$b$时，变力$F(x)$所做的功为$W=\int_a^bF(x)\,\textrm{d}x$，功的元素$\textrm{d}W=F(x)\,\textrm{d}x$。

### 5.2.2 抽水做功

将容器中的水全部抽出所做的功为$W=\rho g\int_a^bxA(x)\,\textrm{d}x$，其中$\rho$为水的密度，$g$为重力加速度。

功的元素$\textrm{d}W=\rho gxA(x)\,\textrm{d}x$为位于$x$处厚度为$\textrm{d}x$，水平截面面积为$A(x)$的一层水被抽出（路径为$x$）所做的功。

### 5.2.3 水压力

垂直浸没于水中的平板$ABCD$的一侧收到的水压力为$P=\rho g\int_a^bx[f(x)-h(x)]\,\textrm{d}x$，其中$\rho$为水的密度，$g$为重力加速度。

压力元素$\textrm{d}P=\rho gx[f(x)-h(x)]\,\textrm{d}x$是受到的压力，$x$表示水深，$f(x)-h(x)$是矩形的宽度，$\textrm{d}x$是矩形的高度，总高度为$\vert a-b\vert$。

# 6 积分表

::: center
                   原函数                           积分函数                        原函数                           积分函数
  ----------------------------------------- ------------------------ ------------------------------------ ------------------------------
            $\int k\,\textrm{d}x$                    $kx+C$               $\int x^\mu\,\textrm{d}x$        $\dfrac{x^{\mu+1}}{\mu+1}+C$
        $\int\dfrac{\textrm{d}x}{x}$          $\ln\vert x\vert+C$      $\int\dfrac{\textrm{d}x}{1+x^2}$           $\arctan x+C$
   $\int\dfrac{\textrm{d}x}{\sqrt{1-x^2}}$       $\arcsin x+C$            $\int\cos x\,\textrm{d}x$                 $\sin x+C$
          $\int\sin x\,\textrm{d}x$               $-\cos x+C$         $\int\dfrac{\textrm{d}x}{\cos^2x}$            $\tan x+C$
     $\int\dfrac{\textrm{d}x}{\sin^2x}$           $-\cot x+C$          $\int\sec x\tan x\,\textrm{d}x$              $\sec x+C$
       $\int\csc x\cot x\,\textrm{d}x$            $-\csc x+C$              $\int e^x\,\textrm{d}x$                   $e^x+C$
           $\int a^x\,\textrm{d}x$           $\dfrac{a^x}{\ln a}+C$                                       
:::
