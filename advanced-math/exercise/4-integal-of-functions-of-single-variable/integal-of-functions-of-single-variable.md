---
author:
- Didnelpsun
title: 一元函数积分学
---

# 1 不定积分

## 1.1 基本积分

**例题：**汽车以20m/s的速度行驶，刹车后匀减速行驶了50m停止，求刹车加速度。

解：已知题目含有两个变量：距离和时间，设距离为$s$，时间为$t$。

因为汽车首先按20m/s匀速运动，所以$\dfrac{\textrm{d}s}{\textrm{d}t}\bigg\vert_{t=0}=20$，最开始距离为0，所以$s\vert_{t=0}=0$。

又因为是匀减速的，所以速度形如：$v=\dfrac{s}{t}=kt+b$，从而令二阶导数下$\dfrac{\textrm{d}^2s}{\textrm{d}t^2}=k$。

所以$\displaystyle{\dfrac{\textrm{d}s}{\textrm{d}t}=\int\dfrac{\textrm{d}^2s}{\textrm{d}t^2}\,\textrm{d}t=\int k\,\textrm{d}t}=kt+C_1$。

代入$\dfrac{\textrm{d}s}{\textrm{d}t}\bigg\vert_{t=0}=20$，所以$C_1=20$，即$\dfrac{\textrm{d}s}{\textrm{d}t}=kt+20$。

所以$\textrm{d}s=(kt+20)\,\textrm{d}t$，从而$s=\displaystyle{\int(kt+20)\,\textrm{d}t}=\dfrac{1}{2}kt^2+20t+C_2$。

又$s\vert_{t=0}=0$，所以代入得$C_2=0$，所以$s=\dfrac{1}{2}kt^2+20t$。

当$s=50$时停住，所以此时$\dfrac{\textrm{d}s}{\textrm{d}t}=0$，得到$t=-\dfrac{20}{k}$。

代入$s$：$50=\dfrac{1}{2}k\left(-\dfrac{20}{k}\right)^2+20\left(-\dfrac{20}{k}\right)$，解得$k=-4$，即加速度为-4m/$s^2$。

## 1.2 换元积分

### 1.2.1 第一类换元

#### 1.2.1.1 凑微分法

将复杂的式子转换为简单的一个因式放到$\textrm{d}$后面看作一个整体，然后利用基本积分公式计算。适用于式子近于基本公式的情况。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{x\ln x\ln\ln x}}$。

解：$=\displaystyle{\int\dfrac{\textrm{d}(\ln x)}{\ln x\ln\ln x}}=\displaystyle{\int\dfrac{\textrm{d}(\ln\ln x)}{\ln\ln x}}=\ln\vert\ln\ln x\vert+C$。

**例题：**求$\displaystyle{\int\dfrac{10^{2\arccos x}}{\sqrt{1-x^2}}\,\textrm{d}x}$。

解：$=-\displaystyle{\int10^{2\arccos x}\,\textrm{d}(\arccos x)}=-\dfrac{1}{2}\displaystyle{\int10^{2\arccos x}\,\textrm{d}(2\arccos x)}$

$=-\dfrac{10^{2\arccos x}}{2\ln10}+C$。

#### 1.2.1.2 积化和差

对于两个三角函数的乘积可以使用积化和差简单计算。特别是携带$\sin2x$、$\cos2x$、$\sin3x$等的。

**例题：**求$\displaystyle{\int\sin2x\cos3x\,\textrm{d}x}$。

解：$=\displaystyle{\int\cos3x\sin2x\,\textrm{d}x=\dfrac{1}{2}\int(\sin5x-\sin x)\,\textrm{d}x}$

$=\dfrac{1}{2}\int\sin5x\,\textrm{d}x-\dfrac{1}{2}\int\sin x\,\textrm{d}x=-\dfrac{1}{10}\cos5x+\dfrac{1}{2}\cos x+C$。

**例题：**求$\int\sin x\sin2x\sin3x\,\textrm{d}x$。

解：这时候需要利用积化和差。

$=\displaystyle{\int\dfrac{1}{2}(\cos x-\cos3x)\sin3x\,\textrm{d}x=\dfrac{1}{2}\int\cos x\sin3x\,\textrm{d}x-\dfrac{1}{2}\int\cos3x\sin3x\,\textrm{d}x}$

$=\dfrac{1}{4}\int(\sin2x+\sin4x)\textrm{d}x-\dfrac{1}{12}\sin^23x=-\dfrac{1}{16}\cos4x-\dfrac{1}{8}\cos2x-\dfrac{1}{12}\sin^23x+C$。

#### 1.2.1.3 三角等式

主要用于$\sec^2-1=\tan^2x$，当出现$\tan^2$、$\tan^3$等与$\sec x$在一起作为乘积时可以考虑拆分换元。同时$\sin^2x+\cos^2=1$，$\csc^2x-\cos^2x=1$。

**例题：**$\displaystyle{\int\tan^3x\sec x\,\textrm{d}x}$。

解：$=\displaystyle{\int(\sec^2x-1)}\tan x\sec x\,\textrm{d}x=\displaystyle{\int(\sec^2x-1)}\,\textrm{d}(\sec x)$

$=\dfrac{1}{3}\sec^3x-\sec x+C$。

有时需要利用到有理积分的高阶多项式分配与低阶多项式因式分解。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{(2+\cos x)\sin x}}$。

解：将所有的$\sin x$都变成$\cos x$。所以分子分母都乘上$\sin x$。

$=\displaystyle{\int\dfrac{\textrm{d}(\cos x)}{(2+\cos x)(\cos^2x-1)}}$，令$\cos x=u$：$=\displaystyle{\int\dfrac{\textrm{d}u}{(2+u)(u^2-1)}}$。

利用低阶多项式因式分解：$=\displaystyle{\int\left[\dfrac{1}{6(u-1)}-\dfrac{1}{2(u+1)}+\dfrac{1}{3(u+2)}\right]\textrm{d}u}$

$=\dfrac{1}{6}\vert u-1\vert-\dfrac{1}{2}\ln\vert u+1\vert+\dfrac{1}{3}\ln\vert u+2\vert+C=\dfrac{1}{6}\ln(1-\cos x)-\dfrac{1}{2}\ln(1+\cos x)+\dfrac{1}{3}\ln(2+\cos x)+C$。

有时还可以用二倍角公式。特别是遇到$1+\cos x$等。

**例题：**求$\displaystyle{\int\dfrac{\sqrt{1+\cos x}}{\sin x}\textrm{d}x}$。

解：看到根号就会很自然想到使用有理换元的方式，令$\sqrt{1+\cos x}=u$，从而$\sin x=\sqrt{2u^2-u^4}$，原式$=\displaystyle{\int\dfrac{u}{\sqrt{2u^2-u^4}}\textrm{d}u}$，这时会发现根本解不出来。

这里自然会想到把根号去掉，那么还有什么方法？将$1+\cos x$变为一个平方的形式，可以使用二倍角公式$1+\cos x=\cos^2\dfrac{x}{2}$，同理分母$\sin x=2\sin\dfrac{x}{2}\cos\dfrac{x}{2}$。

$=\displaystyle{\int\dfrac{\sqrt{2}\left\vert\cos\dfrac{x}{2}\right\vert}{2\sin\dfrac{x}{2}\cos\dfrac{x}{2}}\textrm{d}x=\pm\sqrt{2}\int\csc\dfrac{x}{2}\textrm{d}\left(\dfrac{x}{2}\right)=\pm\sqrt{2}\ln\left\vert\csc\dfrac{x}{2}-\cot\dfrac{x}{2}\right\vert+C}$。

且$\cos\dfrac{x}{2}>0$为正，否则为负。

又$\ln\left\vert\csc\dfrac{x}{2}-\cot\dfrac{x}{2}\right\vert=\ln\dfrac{\left\vert1-\cos\dfrac{x}{2}\right\vert}{\left\vert\sin\dfrac{x}{2}\right\vert}=\ln\left(\dfrac{1}{\left\vert\sin\dfrac{x}{2}\right\vert}-\dfrac{\cos\dfrac{x}{2}}{\left\vert\sin\dfrac{x}{2}\right\vert}\right)$。

所以当$\cos\dfrac{x}{2}>0$时乘积正负号不变，$=\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert-\left\vert\cot\dfrac{x}{2}\right\vert\right)$。

当$\cos\dfrac{x}{2}<0$时乘积正负号相反，提出负号，$=\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert+\left\vert\cot\dfrac{x}{2}\right\vert\right)$。

又$\csc^2\dfrac{x}{2}-\cot^2\dfrac{x}{2}=1$，$\therefore\ln\left(\left(\left\vert\csc\dfrac{x}{2}\right\vert+\left\vert\cot\dfrac{x}{2}\right\vert\right)\cdot\left(\left\vert\csc\dfrac{x}{2}\right\vert-\left\vert\cot\dfrac{x}{2}\right\vert\right)\right)=\ln\left(\csc^2\dfrac{x}{2}-\cot^2\dfrac{x}{2}\right)=\ln1=0$，$\therefore\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert+\left\vert\cot\dfrac{x}{2}\right\vert\right)+\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert-\left\vert\cot\dfrac{x}{2}\right\vert\right)=0$，$\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert+\left\vert\cot\dfrac{x}{2}\right\vert\right)=-\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert-\left\vert\cot\dfrac{x}{2}\right\vert\right)$。

当$\cos\dfrac{x}{2}>0$，$=\sqrt{2}\ln\left\vert\csc\dfrac{x}{2}-\cot\dfrac{x}{2}\right\vert+C=\sqrt{2}\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert-\left\vert\cot\dfrac{x}{2}\right\vert\right)+C$。

当$\cos\dfrac{x}{2}<0$，$=-\sqrt{2}\ln\left\vert\csc\dfrac{x}{2}-\cot\dfrac{x}{2}\right\vert+C=\sqrt{2}\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert-\left\vert\cot\dfrac{x}{2}\right\vert\right)+C$。

综上，$\displaystyle{\int\dfrac{\sqrt{1+\cos x}}{\sin x}\textrm{d}x}=\sqrt{2}\ln\left(\left\vert\csc\dfrac{x}{2}\right\vert-\left\vert\cot\dfrac{x}{2}\right\vert\right)+C$。

#### 1.2.1.4 反三角换元

当积分式子中存在$\arcsin x$、$\arccos x$、$\arctan x$这种反三角函数时，可以考虑将其令为$t$来进行简化计算。从而$x$分别为$\sin t$、$\cos t$、$\tan t$。

**例题：**求$\int(\arcsin x)^2\,\textrm{d}x$。

解：令$\arcsin x=t$，$\therefore x=\sin t$，$\textrm{d}x=\cos t\,\textrm{d}t$。

$=\int t^2\cos t\,\textrm{d}t$。除了换元法还需要使用分部积分法，可以直接进行分部积分也可以使用下面讲到的分部积分拓展公式的表格法来计算，$\cos t$更难求导，所以对其积分，放在下面，$t^2$容易求导，所以对其求导，放在上面：

    $t^2$       $2t$        $2$         $0$
  ---------- ---------- ----------- -----------
   $\cos t$   $\sin t$   $-\cos t$   $-\sin t$

$\therefore=t^2\sin t-2t\cos t-\sin t+C=(\arcsin x)^2x+2\arcsin x\sqrt{1-x^2}-2x+C$。

#### 1.2.1.5 指对换元

当积分式子存在指数函数$e^x$或对数函数$\ln x$时，可以考虑令其为$t$，从而$x$分别为$\ln t$和$e^t$。

但是如果$\ln x$、$\arctan x$、$\arcsin x$与$x$多项式或$e^x$做乘法时要考虑分布积分法。

#### 1.2.1.6 倒数换元

当被积函数的分母的幂次要比分子高两次以及以上时，令$x=\dfrac{1}{u}$。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{x^2\sqrt{x^2-1}}}$。

解：因为所有的变量都在分母，所以先进行倒代换：

$=-\displaystyle{\int\dfrac{u\,\textrm{d}u}{\sqrt{1-u^2}}}=\sqrt{1-u^2}+C=\dfrac{\sqrt{x^2-1}}{x}+C$。

#### 1.2.1.7 有理换元

书上这个类型属于有理函数部分，我这里移动到第一类换元中。即将无理因式直接设为一个变量，从而提高式子的阶数，消除无理式变为有理式。

有理换元时无理因式中的$x$必须是一阶的，如$\sqrt[3]{x+6}=u$，若是二阶需要利用第二类换元（三角换元），否则则无法消去无理因式项，因为$x$不能用单个的$u$来表示，如$\sqrt{x^3+6}=u$，$u=\sqrt[3]{u^2-6}$。

若式子是一个因式的整数次幂，则可以直接令这个因式为中间变量。

当无理式子是一个分式或其他复杂形式，既可以令其整个都是中间变量，也可以先化简，但是不能将无理式子拆开，否则有理换元就无用了。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{1+\sqrt[3]{x+1}}}$。

解：令$u=\sqrt[3]{x+1}$，从而$x=u^3-1$，$\textrm{d}x=3u^2\,\textrm{d}u$。

$=\displaystyle{\int\dfrac{3u^2}{1+u}\textrm{d}u=\int\dfrac{3u^2+3u-3u-3+3}{1+u}\textrm{d}u=\int\left(3u-3+\dfrac{3}{1+u}\right)\textrm{d}u}$

$=\dfrac{3}{2}u^2-3u+3\ln\vert1+u\vert+C=\dfrac{3}{2}\sqrt[3]{(x+1)^2}-3\sqrt[3]{x+1}+3\ln\vert1+\sqrt[3]{x+1}\vert+C$。

可以和有理积分一同使用：

**例题：**求$\displaystyle{\int\sqrt{\dfrac{1-x}{1+x}}\dfrac{\textrm{d}x}{x}}$。

解：令$u=\sqrt{\dfrac{1-x}{1+x}}$，$x=\dfrac{1-u^2}{1+u^2}$。

$\therefore\textrm{d}x=\textrm{d}\left(\dfrac{1-u^2}{1+u^2}\right)=\dfrac{-2u(1+u^2)-2u(1-u^2)}{(1+u^2)^2}$

$=\displaystyle{\int u\cdot\dfrac{1+u^2}{1-u^2}\cdot\dfrac{-4u}{(1+u^2)^2}\textrm{d}u=\int\dfrac{-4u^2}{(1-u)(1+u)(1+u^2)}\textrm{d}u}$

令$\dfrac{A}{1-u}+\dfrac{B}{1+u}+\dfrac{Cu+D}{1+u^2}=\dfrac{-4u^2}{(1-u)(1+u)(1+u^2)}$。

通分：$A(1+u^2+u+u^3)+B(1+u^2-u-u^3)+(Cu-Cu^3+D-Du^2)$

$=(A-B-C)u^3+(A+B-D)u^2+(A-B+C)u+(A+B+D)=-4u^2$

$\therefore A-B-C=0$，$A+B-D=-4$，$A-B+C=0$，$A+B+D=0$。

$\therefore A=B=-1$，$C=0$，$D=2$。

原式$=\displaystyle{\int\left(\dfrac{2}{1+u^2}-\dfrac{1}{1-u}-\dfrac{1}{1+u}\right)\textrm{d}u}$

$=2\arctan u+\ln\vert1-u\vert-\ln\vert1+u\vert+C$

$=2\arctan\sqrt{\dfrac{1-x}{1+x}}+\ln\left\vert\dfrac{\sqrt{1+x}-\sqrt{1-x}}{\sqrt{1+x}+\sqrt{1-x}}\right\vert+C$。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{\sqrt[3]{(x+1)^2(x-1)^4}}}$。

解：由最开始分析的，有理换元需要让换元里的式子是一个一阶的，而现在里面最高四阶，所以必须想办法把这个式子转换为一阶的，这个也是本题目的难点。由于是三次根，所以可以尝试将里面的$(x+1)^2(x-1)^4$都提出三次方：

$=\displaystyle{\int\dfrac{1}{x^2-1}\sqrt[3]{\dfrac{x+1}{x-1}}\textrm{d}x}$，令$\sqrt[3]{\dfrac{x+1}{x-1}}=u$，所以$x=\dfrac{u^3+1}{u^3-1}$：

$=\displaystyle{\int\dfrac{u}{\left(\dfrac{u^3+1}{u^3-1}\right)^2-1}\cdot\dfrac{-6u^2}{(u^3-1)^2}\textrm{d}u=-\dfrac{3}{2}\int\textrm{d}u}=-\dfrac{3}{2}u+C=-\dfrac{3}{2}\sqrt[3]{\dfrac{x+1}{x-1}}+C$。

因为有理换元将一个复杂的式子设为$u$，所以有时可以使用分部积分法：

**例题：**求$\displaystyle{\int\sqrt{\dfrac{a+x}{a-x}}\textrm{d}x}$。

解：令$\sqrt{\dfrac{a+x}{a-x}}=u$，解得$x=a\dfrac{u^2-1}{u^2+1}$，$\textrm{d}x=4a\dfrac{u\,\textrm{d}u}{(u^2+1)^2}$。

$=\displaystyle{4a\int\dfrac{u^2\,\textrm{d}u}{(u^2+1)^2}=-2a\int u\,\textrm{d}\left(\dfrac{1}{1+u^2}\right)=-\dfrac{2au}{1+u^2}+\int\dfrac{2a}{1+u^2}\textrm{d}u}$

$=-\dfrac{2au}{1+u^2}+2a\arctan u+C=(x-a)\sqrt{\dfrac{a+x}{a-x}}+2a\arctan\sqrt{\dfrac{a+x}{a-x}}+C$

$=-\sqrt{a^2-x^2}+2a\arctan\sqrt{\dfrac{a+x}{a-x}}+C$。

特别是根式下是比较古怪的表达式，不能直接通过有理换元计算，可以尝试先部分积分再换元。

**例题：**求$\displaystyle{\int\dfrac{xe^x}{\sqrt{1+e^x}}\textrm{d}x}$。

解：若首先进行换元积分法，令$\sqrt{1+e^x}=t$，则$I=2\int\ln(t^2-1)\,\textrm{d}t$。

所以先尝试换元：$\int xe^x(1+e^x)^{-\frac{1}{2}}\,\textrm{d}x=2\int x\,\textrm{d}(\sqrt{1+e^x})=2x\sqrt{1+e^x}-2\int\sqrt{1+e^x}\,\textrm{d}x$，再令$\sqrt{1+e^x}=t$。

则$x=\ln(t^2-1)$，$\textrm{d}x=\dfrac{2t}{t^2-1}\textrm{d}t$。

则$\displaystyle{\int\sqrt{1+e^x}\,\textrm{d}x=\int\dfrac{2t^2}{t^2-1}\textrm{d}t=2\int\dfrac{t^2-1+1}{t^2-1}\textrm{d}t}=2\left(t+\dfrac{1}{2}\ln\left\vert\dfrac{t-1}{t+1}\right\vert\right)+C=2\sqrt{1+e^x}+\ln\dfrac{\sqrt{1+e^x}-1}{\sqrt{1+e^x}+1}+C$。

$\therefore=2x\sqrt{1+e^x}-4\sqrt{1+e^x}-2\ln\dfrac{\sqrt{1+e^x}-1}{\sqrt{1+e^x}+1}+C$。

#### 1.2.1.8 万能公式

同样属于有理积分的内容，但是本质还是属于三角函数的部分。如果出现一个三角函数跟着常数的式子就使用万能公式。

令$u=\tan\dfrac{x}{2}$，$\sin x=\dfrac{2u}{1+u^2}$，$\cos x=\dfrac{1-u^2}{1+u^2}$，$\textrm{d}x=\dfrac{2}{1+u^2}\textrm{d}u$。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{3+\cos x}}$。

解：令$u=\tan\dfrac{x}{2}$，从而$\cos x=\dfrac{1-u^2}{1+u^2}$：

$=\displaystyle{\int\dfrac{1}{3+\dfrac{1-u^2}{1+u^2}}\cdot\dfrac{2}{1+u^2}\textrm{d}u=\dfrac{1}{2+u^2}\textrm{d}u=\dfrac{1}{\sqrt{2}}\arctan\dfrac{u}{\sqrt{2}}+C}$

$=\dfrac{1}{\sqrt{2}}\arctan\dfrac{\tan\dfrac{x}{2}}{\sqrt{2}}+C$。

### 1.2.2 第二类换元

使用换元法做了换元之后是要带回式子中的，也就是说要保证反函数的存在才能代入有意义。为了保证反函数的存在，因此要保证原函数的单调性，所以要有一个规定的范围来使原函数保证单调。

#### 1.2.2.1 $\sqrt{a^2-x^2}$：$x=a\sin t(a\cos t)$

若令$x=a\sin t$，则根据$\sin t\in(-1,1)$得到主区间：$t\in\left(-\dfrac{\pi}{2},\dfrac{\pi}{2}\right)$。

若令$x=a\cos t$，则根据$\cos t\in(-1,1)$，得到主区间：$t\in(0,\pi)$。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{1+\sqrt{1-x^2}}}$。

解：令$x=\sin t$（$t\in\left(-\dfrac{\pi}{2},\dfrac{\pi}{2}\right)$），所以$\sqrt{1-x^2}=\cos t$，$\textrm{d}x=\cos t\,\textrm{d}t$，$t=\arcsin x$。

因为式子$\dfrac{1}{1+\sqrt{1-x^2}}>0$，单调递减，所以不用讨论正负号。

$=\displaystyle{\int\dfrac{\cos t}{1+\cos t}\textrm{d}t=\int\dfrac{2\cos^2\dfrac{t}{2}-1}{2\cos^2\dfrac{t}{2}}\textrm{d}t=\int\textrm{d}t-\int\sec^2\dfrac{t}{2}\,\textrm{d}t=t-\tan}\dfrac{t}{2}+C$

$=t-\dfrac{\sin\dfrac{t}{2}}{\cos\dfrac{t}{2}}+C=t-\dfrac{\sin\dfrac{t}{2}\cos\dfrac{t}{2}}{\cos^2\dfrac{t}{2}}+C=t-\dfrac{\sin t}{1+\cos t}+C$

$=\arcsin x-\dfrac{x}{1+\sqrt{1-x^2}}+C$。

#### 1.2.2.2 $\sqrt{a^2+x^2}$：$x=a\tan t$

根据$\tan t\in R$，从而得到主空间：$t\in\left(-\dfrac{\pi}{2},\dfrac{\pi}{2}\right)$。

**例题：**求$\displaystyle{\int\dfrac{x^3+1}{(x^2+1)^2}\textrm{d}x}$。

解：虽然本题目看着可以从分母解开平方，然后低阶分配，但是这分母是平方的式子很难分配，所以需要使用换元法。

令$x=\tan t$，$t\in\left(-\dfrac{\pi}{2},\dfrac{\pi}{2}\right)$，$x^2+1=\sec^2t$，$\textrm{d}x=\sec^2t\,\textrm{d}t$。

因为$(x^2+1)^2>0$，虽然$x^3+1$可能为负可能为正，但是都是单调递增的，所以不用考虑正负号。

$=\displaystyle{\int\dfrac{\tan^3t+1}{\sec^2t}\textrm{d}t=\int\dfrac{\sin^3t+\cos^3t}{\cos t}\textrm{d}t=\int\dfrac{\sin t(1-\cos^2t)+\cos^3t}{\cos t}\textrm{d}t}$

$=\displaystyle{\int\dfrac{\cos^2t-1}{\cos t}\textrm{d}(\cos t)+\int\dfrac{1+\cos2t}{2}\textrm{d}t}$

$=\displaystyle{\int\cos t\,\textrm{d}(\cos t)-\int\dfrac{1}{\cos t}\,\textrm{d}(\cos t)+\dfrac{1}{2}\int\textrm{d}t+\dfrac{1}{4}\int\cos2t\,\textrm{d}(2t)}$

$=\displaystyle{\int\cos^t-\ln\cos t+\dfrac{t}{2}+\dfrac{1}{4}\sin2t+C}$（$\cos t$在$t\in\left(-\dfrac{\pi}{2},\dfrac{\pi}{2}\right)$中为正）

$\because\tan t=x$，$\therefore\sin t=\dfrac{x}{\sqrt{1+x^2}}$，$\cos t=\dfrac{1}{\sqrt{1+x^2}}$。

$=\dfrac{1+x}{2(1+x^2)}+\dfrac{1}{2}\ln(1+x^2)+\dfrac{1}{2}\textrm{arctan}\,x+C$。

#### 1.2.2.3 $\sqrt{x^2-a^2}$：$x=a\sec t$

根据$\sec t\in(-1,1)$，所以从而得到主空间：$t\in\left(-\dfrac{\pi}{2},\dfrac{\pi}{2}\right)$。

**例题：**求$\displaystyle{\int\dfrac{\sqrt{x^2-9}}{x}\textrm{d}x}$。

解：令$x=3\sec t$。$\therefore\sqrt{x^2-9}=3\tan t$，$\textrm{d}x=3\sec t\tan t\,\textrm{d}t$。

因为式子$\dfrac{\sqrt{x^2-9}}{x}$的分子必然为为正，而对于分子在0两边的单调性不同，所以需要对$x$进行正负区分，又$x\in(-\infty,-3]\cup[3,+\infty)$，所以：

当$x>3$时，$\sec t>1$，即$t\in\left(0,\dfrac{\pi}{2}\right)$。

$=\displaystyle{\int3\tan^2t\,\textrm{d}t=3\int(\sec^2t-1)\textrm{d}t}$

$=3\tan t-3t+C=\sqrt{x^2-9}-3\arccos\dfrac{3}{x}+C$。

当$x<-3$时，$\sec t<-1$，即$t\in\left(-\dfrac{\pi}{2},0\right)$。

$=\displaystyle{-\int3\tan^2t\,\textrm{d}t=-3\int(\sec^2t-1)\textrm{d}t}$

$=-3\tan t+3t+C=\sqrt{x^2-9}+3\arccos\dfrac{3}{x}+C$（$\tan t<0$）

$=\sqrt{x^2-9}-3\arccos\dfrac{3}{-x}+3\pi+C$（$3\arccos\dfrac{3}{x}=3\pi-3\arccos-\dfrac{3}{x}$）

$=\sqrt{x^2-9}-3\arccos\dfrac{3}{-x}+C$。

综上结果为$\sqrt{x^2-9}-3\arccos\dfrac{3}{\vert x\vert}+C$。

#### 1.2.2.4 辅助换元

在使用换元法的时候有可能单个式子不能求出积分，而使用其他辅助式子加减在一起积分可以得到结果，从而能得到原式和辅助式子的积分结果。对于这类题目需要观察什么样的式子能让积分简单。

**例题：**求$\displaystyle{\int\dfrac{\textrm{d}x}{x+\sqrt{1-x^2}}}$。

解：令$x=\sin t$，所以$\sqrt{1-x^2}=\cos t$，$\textrm{d}x=\cos t\,\textrm{d}t$。

$\because x+\sqrt{1-x^2}$可能为正可能为负，正负时单调性不同，所以令$x+\sqrt{1-x^2}=0$，即$\sin t=-\dfrac{\sqrt{2}}{2}$，从而$t\in(-\dfrac{\pi}{2},-\dfrac{\pi}{4})\cup(-\dfrac{\pi}{4},\dfrac{\pi}{2})$。

$\therefore=\displaystyle{\int\dfrac{\cos t}{\sin t+\cos t}\textrm{d}t}$（$t\in(-\dfrac{\pi}{4},\dfrac{\pi}{2})$）。

这时你会发现使用积化和差、万能公式、倍角公式都无法解出这个积分，所以这时候就需要另外一个辅助积分式子加上或减去这个式子，从而让和以及差更容易解出积分。这里根据式子特点让辅助式子分子为$\sin t$：

令$I_1=\displaystyle{\int\dfrac{\cos t}{\sin t+\cos t}\textrm{d}t}$，$I_2=\displaystyle{\int\dfrac{\sin t}{\sin t+\cos t}\textrm{d}t}$。

$I_1+I_2=\displaystyle{\int\dfrac{\sin t+\cos t}{\sin t+\cos t}\textrm{d}t=\int\textrm{d}t=t}$。

$I_1-I_2=\displaystyle{\int\dfrac{\cos t-\sin t}{\sin t+\cos t}\textrm{d}t=\int\dfrac{\textrm{d}(\sin t+\cos t)}{\sin t+\cos t}}=\ln\vert\sin t+\cos t\vert +C$。

所以$I_1=\dfrac{1}{2}(\arcsin x+\ln\vert x+\sqrt{1-x^2}\vert)+C$。

同理$t\in(-\dfrac{\pi}{2},-\dfrac{\pi}{4})$也得到同样结果。

#### 1.2.2.5 $\sqrt{ax^2+bx+c}$

当被积函数含有根式$\sqrt{ax^2+bx+c}$时，需要对其配方变成$\sqrt{\varphi^2(x)+k^2}$、$\sqrt{\varphi^2(x)-k^2}$、$\sqrt{k^2-\varphi^2(x)}$三种形式再进行三角函数换元。

## 1.3 分部积分

因为分部积分法使用$\int u\,\textrm{d}v=uv-\int v\,\textrm{d}u$，所以基本上用于两项乘积形式的积分式子。

函数积分难度为：反三角函数、对数函数、幂函数、指数函数、三角函数。越往右求导越难，左边更应该当$u$进行求导，而右边更适合做$v$进行积分。

### 1.3.1 基本分部

如果不是多次分部就是基本分部，目的都是为了降低积分式子幂次。

#### 1.3.1.1 非幂函数优先

当幂函数与一些微分后能降低幂函数幂次的函数在一起时，先对非幂函数优先分部积分，结果与幂函数相乘可以消去幂次，以达到降低幂次的作用。

如$\int x^n\ln x\,\textrm{d}x$，$\int x^n\arctan x\,\textrm{d}x$，$\int x^n\arcsin x\,\textrm{d}x$。

**例题：**求$\int x^2\arctan x\,\textrm{d}x$。

解：$=\dfrac{1}{3}\int\arctan x\,\textrm{d}(x^3)=\dfrac{1}{3}x^3\arctan x-\dfrac{1}{3}\int x^3\,\textrm{d}(\arctan x)$

$=\dfrac{1}{3}x^3\arctan x-\dfrac{1}{3}\displaystyle{\int\dfrac{x^3}{1+x^2}\textrm{d}x}=\dfrac{1}{3}x^3\arctan x-\dfrac{1}{3}\displaystyle{\int\dfrac{x+x^3-x}{1+x^2}\textrm{d}x}$

$=\dfrac{1}{3}x^3\arctan x-\dfrac{1}{3}\int x\,\textrm{d}x+\displaystyle{\dfrac{1}{6}\int\dfrac{\textrm{d}(1+x^2)}{1+x^2}}$

$=\dfrac{1}{3}x^3\arctan x-\dfrac{1}{6}x^2+\dfrac{1}{6}\ln(1+x^2)+C$。

#### 1.3.1.2 幂函数优先

当幂函数与三角函数在一起微分时，因为三角函数无论如何积分都不会被消去，所以应该优先消去幂函数部分，从而降低幂次。

如$\int x^a\sin x\,\textrm{d}x$，$\int x^a\cos x\,\textrm{d}x$。

**例题：**求$\int x\tan^2x\,\textrm{d}x$。

解：$=\int x(\sec^2-1)\,\textrm{d}x=\int x\,\textrm{d}(\tan x)-\dfrac{x^2}{2}=x\tan x+\ln\vert\cos x\vert-\dfrac{x^2}{2}+C$。

### 1.3.2 多次分部

对于一部分通过微分形式不会发生变化的函数，所以需要多次积分，然后利用等式求出目标值。即三角函数和指数函数，这两种积分形式不变，指数函数一次积分保持不变，而三角函数两次积分保持不变。

也称为积分再现、循环积分法。

如：$\int e^x\sin x\,\textrm{d}x$，$\int e^x\cos x\,\textrm{d}x$。

**例题：**求$\int e^x\sin^2x\,\textrm{d}x$。

解：$=\sin^2x\cdot e^x-\int e^x\,\textrm{d}(\sin^2x)=\sin^2x\cdot e^x-\int e^x\cdot\sin 2x\,\textrm{d}x$

$=\sin^2x\cdot e^x-\int\sin2x\,\textrm{d}(e^x)=\sin^2x\cdot e^x-\sin2x\cdot e^x+\int e^x\,\textrm{d}(\sin2x)$

$=\sin^2x\cdot e^x-\sin2x\cdot e^x+2\int e^x\cdot\cos2x\,\textrm{d}x$
（）

$=\sin^2x\cdot e^x-\sin2x\cdot e^x+2\int\cos2x\,\textrm{d}(e^x)$

$=\sin^2x\cdot e^x-\sin2x\cdot e^x+2e^x\cos2x-2\int e^x\,\textrm{d}(\cos2x)$

$=\sin^2x\cdot e^x-\sin2x\cdot e^x+2e^x\cos2x+4\int e^x\cdot\sin2x\,\textrm{d}x$

$=\sin^2x\cdot e^x-\sin2x\cdot e^x+2e^x\cos2x+4\int\sin2x\,\textrm{d}(e^x)$

$=\sin^2x\cdot e^x-\sin2x\cdot e^x+2e^x\cos2x+4\sin2x\cdot e^x-4\int e^x\,\textrm{d}(\sin2x)$

$=\sin^2x\cdot e^x-\sin2x\cdot e^x+2e^x\cos2x+4\sin2x\cdot e^x-8\int e^x\cdot\cos2x\,\textrm{d}x$
（）

然后=：$\int e^x\cdot\cos2x\,\textrm{d}x=\dfrac{e^x(\cos2x+2\sin2x)}{5}+C$

代入：$=\dfrac{e^x(5\sin^2x-5\sin2x+2\cos2x+4\sin2x)}{5}+C$

$=\dfrac{e^x(5\sin^2x-\sin2x+2\cos2x)}{5}+C=e^x\left(\dfrac{1}{2}-\dfrac{1}{5}\sin2x-\dfrac{1}{10}\cos2x\right)+C$

### 1.3.3 分部积分推广公式

分部积分法可以直接利用表格简便计算，特别是积分式子中含有$f(x)$这种不定的因子。

如何得到分部积分推广公式？以三次导数的积分为例：

$\int uv'''\,\textrm{d}x=\int u\,\textrm{d}(v'')=uv''-\int v''u'\,\textrm{d}x$

$\int u'v''\,\textrm{d}x=\int u'\,\textrm{d}(v')=u'v'-\int v'u''\,\textrm{d}x$

$\int u''v'\,\textrm{d}x=\int u''\,\textrm{d}v=u''v-\int vu'''\,\textrm{d}x$

$\therefore\int uv'''\,\textrm{d}x=uv''-u'v'+u''v-\int u'''v\,\textrm{d}x$。

所以分部积分法找到对应的规律，表格上求导，下积分：

            符号                 \+           \-           \+        $\cdots$   $(-1)^{n+1}$
  ------------------------- ------------- ----------- ------------- ---------- --------------
        $u$的各阶导数            $u$         $u'$         $u''$      $\cdots$    $u^{n+1}$
   $v^{(n+1)}$的各阶原函数   $v^{(n+1)}$   $v^{(n)}$   $v^{(n-1)}$   $\cdots$       $v$

以$u$为起点左上右下错位相乘，各项符号正负交错，直到$uv$的导阶数相同，最后一项是$(-1)^{n+1}\int u^{(n+1)}v\,\textrm{d}x$，只要这最后一项可以解出来就可以停止了，即上下是同一类的函数或幂函数求导成0。

$u$定为求导能被消去的函数，$v$定微分形式不变的函数。

**例题：**求$\int(x^3+2x+6)e^{2x}\,\textrm{d}x$。

解：如果要一般求，则需要拆分：

$\int(x^3+2x+6)e^{2x}\,\textrm{d}x=\int x^3e^{2x}\,\textrm{d}x+2\int xe^{2x}\,\textrm{d}x+6\int e^2x\,\textrm{d}x$。

而如果使用分部积分的推广公式，令$u=x^3+2x+6$，$v=e^{2x}$。

   $x^3+2x+6$         $3x^2+2$                 $6x$                    6                       0
  ------------ ---------------------- ---------------------- ---------------------- -----------------------
    $e^{2x}$    $\dfrac{1}{2}e^{2x}$   $\dfrac{1}{4}e^{2x}$   $\dfrac{1}{8}e^{2x}$   $\dfrac{1}{16}e^{2x}$

$\therefore=(x^3+2x+6)\left(\dfrac{1}{2}e^{2x}\right)-(3x^2+2)\left(\dfrac{1}{4}e^{2x}\right)+6x\left(\dfrac{1}{8}e^{2x}\right)-6\left(\dfrac{1}{16}e^{2x}\right)+\displaystyle{(-1)^{3+1}\cdot\int0\cdot(\dfrac{1}{16}e^{2x})\,\textrm{d}x}=\left(\dfrac{1}{2}x^3-\dfrac{3}{4}x^2+\dfrac{7}{4}x+\dfrac{17}{8}\right)e^{2x}+C$。

**例题：**求$\int x^2\ln x\,\textrm{d}x$。

解：

   $\ln x$    $\dfrac{1}{x}$
  --------- -------------------
    $x^2$    $\dfrac{1}{3}x^3$

$\therefore=\dfrac{1}{3}x^3\ln x-\displaystyle{\int\dfrac{1}{x}\dfrac{1}{3}x^3\,\textrm{d}x}=\dfrac{1}{3}x^3\ln x-\dfrac{1}{9}x^3+C$。

### 1.3.4 分部与换元

分部积分法和换元积分法经常一起使用。

**例题：**求$\int e^{\sqrt[3]{x}}\,\textrm{d}x$。

解：令$\sqrt[3]{x}=u$，从而$x=u^3$，$\textrm{d}x=3u^2\,\textrm{d}u$。

$=3\int e^uu^2\,\textrm{d}u=3\int u^2\,\textrm{d}(e^u)=3u^2e^u-3\int e^u\,\textrm{d}(u^2)=3u^2e^u-6\int e^uu\,\textrm{d}u$

$=3u^2e^u-6\int u\,\textrm{d}(e^u)=3u^2e^u-6ue^u+6\int e^u\,\textrm{d}u=3u^2e^u-6ue^u+6e^u+C$

$=3e^u(u^2-2u+2)+C=3e^{\sqrt[3]{x}}(x^{\frac{2}{3}}-2x^{\frac{1}{3}}+2)+C$。

**例题：**求$\int e^{\sqrt{3x+9}}\,\textrm{d}x$。

解：令$\sqrt{3x+9}=u$，从而$x=\dfrac{1}{3}(u^2-9)$，$\textrm{d}x=\dfrac{2}{3}u\,\textrm{d}u$：

$=\displaystyle{\dfrac{2}{3}\int ue^u\,\textrm{d}u=\dfrac{2}{3}\int u\,\textrm{d}(e^u)=\dfrac{2}{3}ue^u-\int\dfrac{2}{3}e^u\,\textrm{d}u=\dfrac{2}{3}ue^u-\dfrac{2}{3}e^u+C}$

$=\dfrac{2}{3}e^{\sqrt{3x+9}}(\sqrt{3x+9}-1)+C$。

## 1.4 有理积分

针对于多项式分式，需要将分母和分子拆解。首先需要对式子进行化简。

### 1.4.1 高阶多项式分配

当不定积分式子形如$\displaystyle{\int\dfrac{f(x)}{g(x)}\,\textrm{d}x}$，且$f(x)$、$g(x)$都为与$x$相关的多项式，$f(x)$阶数高于或等于$g(x)$，则$f(x)$可以按照$g(x)$的形式分配，约去式子，得到最简单的表达。

**例题：**$\displaystyle{\int\dfrac{x^3}{x^2+9}\,\textrm{d}x}$。

解：$=\displaystyle{\int\dfrac{x^3+9x-9x}{x^2+9}\,\textrm{d}x=\int\dfrac{x^3+9x}{x^2+9}\,\textrm{d}x-\int\dfrac{9x}{x^2+9}\,\textrm{d}x}$

$\displaystyle{=\int x\,\textrm{d}x-\dfrac{9}{2}\int\dfrac{\textrm{d}(x^2+9)}{x^2+9}}=\dfrac{x^2}{2}-\dfrac{9}{2}\ln(9+x^2)+C$。

### 1.4.2 低阶多项式分解

当不定积分式子形如$\displaystyle{\int\dfrac{f(x)}{g(x)}\,\textrm{d}x}$，且$f(x)$、$g(x)$都为与$x$相关的多项式，$f(x)$阶数低于$g(x)$，且$g(x)$可以因式分解为$g(x)=g_1(x)g_2(x)\cdots$时，先因式分解再进行运算。

有理积分的拆项是最小项的最高次数不超过2。所以具体的分解基本原理：

1.  一次单项式$ax+b$产生一项$\dfrac{A}{ax+b}$。

2.  $k$重一次因式$(ax+b)^k$产生$k$项：$\dfrac{A_1}{ax+b}+\dfrac{A_2}{(ax+b)^2}+\cdots+\dfrac{A_n}{(ax+b)^n}$。

3.  二次因式$px^2+qx+r$产生一项：$\dfrac{Ax+B}{px^2+qx+r}$。

4.  $k$重二次因式$(px^2+qx+r)^k$产生$k$项：$\dfrac{A_1x+B_1}{px^2+qx+r}+\cdots+\dfrac{A_nx+B_n}{(px^2+qx+r)^k}$。

虽然分母可以因式分解，但是整个式子不一定能因式分解，特别是某个因子的阶数高于一阶，所以若不能因式分解则可以考虑低阶多项式分配的方式。

**例题：**求$\displaystyle{\int\dfrac{x^2+1}{(x+1)^2(x-1)}\textrm{d}x}$。

解：令$\dfrac{A}{x+1}+\dfrac{B}{(x+1)^2}+\dfrac{C}{x-1}=\dfrac{x^2+1}{(x+1)^2(x-1)}$。

通分：$=A(x+1)(x-1)+B(x-1)+C(x+1)^2$

$=A(x^2-1)+B(x-1)+C(x^2+2x+1)$

$=(A+C)x^2+(B+2C)x+(C-A-B)=x^2+1$。

从而$A+C=1$，$B+2C=0$，$C-A-B=1$。

所以$A=C=\dfrac{1}{2}$，$B=-1$，所以$\dfrac{x^2+1}{(x+1)^2(x-1)}=\dfrac{1}{2(x+1)}-\dfrac{1}{(x+1)^2}+\dfrac{1}{2(x-1)}$。

$\therefore=\displaystyle{\int\left[\dfrac{1}{2(x+1)}-\dfrac{1}{(x+1)^2}+\dfrac{1}{2(x-1)}\right]\textrm{d}x}$

$=\dfrac{1}{2}\ln\vert x-1\vert+\dfrac{1}{2}\ln\vert x+1\vert+\dfrac{1}{x+1}+C=\dfrac{1}{2}\ln\vert x^2-1\vert+\dfrac{1}{x+1}+C$。

当然也没必要将所有式子拆开再同类型合并进行相等计算，可以直接将因式的解代入令部分因式等于0来计算，如：

通分：$=A(x+1)(x-1)+B(x-1)+C(x+1)^2=x^2+1$。

代入$x=-1$：$B(-1-1)=-2B=(-1)^2+1$，$\therefore B=-1$。

代入$x=1$：$C(1+1)^2=1^2+1$，$\therefore4C=2$，$C=\dfrac{1}{2}$。

代入$x=0$：$-A-B+C=1$，代入$B=-1$，$C=\dfrac{1}{2}$，$\therefore A=\dfrac{1}{2}$。

### 1.4.3 低阶多项式分配

当不定积分式子形如$\displaystyle{\int\dfrac{f(x)}{g(x)}\,\textrm{d}x}$，且$f(x)$、$g(x)$都为与$x$相关的多项式，$f(x)$阶数低于$g(x)$，且$g(x)$不能因式分解为$g(x)=g_1(x)g_2(x)\cdots$时，则可以分配式子：$\displaystyle{\int\dfrac{f(x)}{g(x)}\,\textrm{d}x=a_1\int\dfrac{\textrm{d}(f_1(x))}{g_1(x)}+a_2\int\dfrac{\textrm{d}(f_2(x))}{g_2(x)}}+\cdots$，将积分式子组合成积分结果为分式的函数，如$\ln x$、$\arcsin x$、$\arctan x$等。

**例题：**求$\displaystyle{\int\dfrac{x-1}{x^2+2x+3}\textrm{d}x}$。

解：因为$x^2+2x+3$不能因式分解，所以考虑将分子按照分母形式进行分配。优先对高阶的$x$进行分配。

首先因为分子最高阶为$x$只比分母最高阶$x^2$低一阶，所以考虑将$x-1$分配到微分号内。

$\because\textrm{d}(x^2+2x+3)=2x+2$，而现在是$x-1$，所以：

$=\displaystyle{\dfrac{1}{2}\int\dfrac{2x+2}{x^2+2x+3}\textrm{d}x-2\int\dfrac{1}{x^2+2x+3}\textrm{d}x}=\displaystyle{\dfrac{1}{2}\int\dfrac{\textrm{d}(x^2+2x+3)}{x^2+2x+3}}$

$-\displaystyle{\int\dfrac{1}{\left(\dfrac{x+1}{\sqrt{2}}\right)^2+1}\textrm{d}x}=\displaystyle{\dfrac{1}{2}\ln(x^2x+3)-\sqrt{2}\int\dfrac{\textrm{d}\left(\dfrac{x+1}{\sqrt{2}}\right)}{\left(\dfrac{x+1}{\sqrt{2}}\right)^2+1}}$

$=\dfrac{1}{2}\ln(x^2+2x+3)-\sqrt{2}\arctan\dfrac{x+1}{\sqrt{2}}+C$。

### 1.4.4 低阶多项式因式分解与分配

有时候一个式子需要同时用到因式分解和分配两种方式。

**例题：**求$\displaystyle{\int\dfrac{x^5+x^4-8}{x^3-x}\textrm{d}x}$。

解：$=\displaystyle{\int\dfrac{x^5-x^3+x^4-x^2+x^3-x+x^2+x-8}{x^3-x}\textrm{d}x}$

$=\int x^2\,\textrm{d}x+\int x\,\textrm{d}x+\int\textrm{d}x+\displaystyle{\int\dfrac{x^x+x-8}{x^3-x}\textrm{d}x}=\dfrac{x^3}{3}+\dfrac{x^2}{2}+x+\displaystyle{\int\dfrac{x^2+x-8}{x^3-x}\textrm{d}x}$

令$\dfrac{A}{x}+\dfrac{B}{x+1}+\dfrac{C}{x-1}=\dfrac{x^2+x-8}{x^3-x}$。

$\therefore(A+B+C)x^2+(C-B)x-A=x^2+x-8$。$A=8$，$B=-4$，$C=-3$。

$=\dfrac{x^3}{3}+\dfrac{x^2}{2}+x+\displaystyle{\int\dfrac{8}{x}\textrm{d}x-\int\dfrac{4}{x+1}\textrm{d}x-\int\dfrac{3}{x-1}\textrm{d}x}$

$=\dfrac{x^3}{3}+\dfrac{x^2}{2}+x+8\ln\vert x\vert-4\ln\vert x+1\vert-3\ln\vert x-1\vert+C$。

### 1.4.5 有理积分与其他积分运算

换元积分法可以与有理积分、分部积分共同使用。

**例题：**求$\displaystyle{\int\dfrac{-x^2-2}{(x^2+x+1)^2}\textrm{d}x}$。

解：首先根据因式分解：$\dfrac{-x^2-2}{(x^2+x+1)^2}=\dfrac{Ax+B}{x^2+x+1}+\dfrac{Cx+D}{(x^2+x+1)^2}$。

$\therefore Ax^3+(A+B)x^2+(A+B+C)x+(B+D)=-x^2-2$。

解得：$A=0$，$B=D=-1$，$C=1$。

$=\displaystyle{\int\dfrac{x-1}{(x^2+x+1)^2}\textrm{d}x-\int\dfrac{1}{x^2+x+1}\textrm{d}x}$

$=\displaystyle{\dfrac{1}{2}\int\dfrac{\textrm{d}(x^2+x+1)}{(x^2+x+1)^2}-\dfrac{3}{2}\int\dfrac{1}{(x^2+x+1)^2}\textrm{d}x-\int\dfrac{1}{\left(x+\dfrac{1}{2}\right)^2+\left(\dfrac{\sqrt{3}}{2}\right)^2}\textrm{d}x}$

$=-\dfrac{1}{2(x^2+x+1)}\displaystyle{-\dfrac{3}{2}\int\dfrac{1}{(x^2+x+1)^2}\textrm{d}x}-\dfrac{2}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}$

$\because x^2+x+1=\left(x+\dfrac{1}{2}\right)^2+\left(\dfrac{\sqrt{3}}{2}\right)^2$，$\therefore$令$u=x+\dfrac{1}{2}$，$a=\dfrac{\sqrt{3}}{2}$：

$\displaystyle{\int\dfrac{1}{(x^2+x+1)^2}\textrm{d}x=\int\dfrac{1}{(u^2+a^2)^2}\textrm{d}u=\int\dfrac{1}{\left(a^2\left(\left(\dfrac{u}{a}\right)^2+1\right)\right)^2}}$，使用第二类换元法（三角换元）：$\dfrac{u}{a}=\tan t$，$u=a\tan t$，$\textrm{d}u=a\sec^2t\,\textrm{d}t$，$t=\arctan\dfrac{u}{a}$。

$\therefore=\displaystyle{\int\dfrac{a\sec^2t}{a^4\sec^4t}\textrm{d}t=\dfrac{1}{a^3}\int\dfrac{\textrm{d}t}{sec^2t}}=\dfrac{1}{a^3}\int\cos^2t\,\textrm{d}t=\dfrac{1}{a^3}\int(1+\cos2t)\,\textrm{d}t$

$=\dfrac{1}{a^3}\int\textrm{d}t+\dfrac{1}{2a^3}\int\cos2t\,\textrm{d}(2t)=\dfrac{t}{a^3}+\dfrac{\sin2t}{2a^3}=\dfrac{\arctan\dfrac{u}{a}}{a^3}+\dfrac{\sin t\cos t}{a^3}$。

$\because\tan t=\dfrac{u}{a}$，$\therefore\tan^2t=\dfrac{\sin^2t}{\cos^2t}=\dfrac{1-\cos^2t}{\cos2t}=\dfrac{\sin^2t}{1-\sin^2t}=\dfrac{u^2}{a^2}$

$\therefore\sin t=\dfrac{u}{\sqrt{a^2+u^2}}$，$\cos t=\dfrac{a}{\sqrt{a^2+u^2}}$，$\dfrac{\sin t\cos t}{a^3}=\dfrac{u}{a^2(a^2+u^2)}$。

$\therefore$原式$=-\dfrac{1}{2(x^2+x+1)}-\dfrac{2}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}\displaystyle{-\dfrac{3}{2}\int\dfrac{1}{(x^2+x+1)^2}\textrm{d}x}$

$=-\dfrac{1}{2(x^2+x+1)}-\dfrac{2}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}-\dfrac{3}{2}\left(\dfrac{\arctan\dfrac{u}{a}}{a^3}+\dfrac{u}{a^2(a^2+u^2)}\right)+C$

$=-\dfrac{1}{2(x^2+x+1)}-\dfrac{2}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}$

$-\dfrac{3}{2}\left(\dfrac{\arctan\dfrac{x+\dfrac{1}{2}}{\dfrac{\sqrt{3}}{2}}}{\left(\dfrac{\sqrt{3}}{2}\right)^3}+\dfrac{x+\dfrac{1}{2}}{\left(\dfrac{\sqrt{3}}{2}\right)^2\left(\left(\dfrac{\sqrt{3}}{2}\right)^2+\left(x+\dfrac{1}{2}\right)^2\right)}\right)+C$

$=-\dfrac{1}{2(x^2+x+1)}-\dfrac{2}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}$

$-\dfrac{3}{2}\left(\dfrac{\arctan\dfrac{2x+1}{\sqrt{3}}}{\dfrac{3\sqrt{3}}{8}}+\dfrac{x+\dfrac{1}{2}}{\dfrac{3}{4}\left(x^2+x+1\right)}\right)+C$

$=-\dfrac{1}{2(x^2+x+1)}-\dfrac{2}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}-\dfrac{4}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}-\dfrac{2x+1}{x^2+x+1}+C$

$=-\dfrac{4x+3}{2(x^2+x+1)}-\dfrac{6}{\sqrt{3}}\arctan\dfrac{2x+1}{\sqrt{3}}+C$。

## 1.5 不定积分等式

积分求导就得到微分，题目会给出微分和积分之间的关系式，以求相关的函数表达式。

**例题：**已知$\int f'(x^3)\,\textrm{d}x=x^3+C$，求$f(x)$表达式。

解：两边求导：$f'(x^3)=3x^2$，令$x^3=t$，则$x=t^\frac{1}{3}$，即$f'(t)=3t^\frac{2}{3}$。

所以$f(x)=\dfrac{9}{5}x^\frac{5}{3}+C$。

# 2 定积分

定积分计算以牛莱公式为基础。

## 2.1 极限

若极限中有$n$这种变量，也可以通过定积分的定义来做，$\lim\limits_{n\to\infty}\sum\limits_{i=1}^nf\left(\dfrac{i}{n}\right)\dfrac{1}{n}=\int_1^0f(x)\,\textrm{d}x$。

1.  先提出$\dfrac{1}{n}$。

2.  凑出$\dfrac{i}{n}$。

3.  写出$\int_0^1f(x)\,\textrm{d}x$。

**例题：**求$\lim\limits_{n\to\infty}\left(\dfrac{1}{n+1}+\dfrac{1}{n+2}\cdots+\dfrac{1}{n+n}\right)$。

解：即求$\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+i}$。如果我们要传统求的话一般使用夹逼准则，找到放缩的两个函数。

所以找到两个：$\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+n}<\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+i}<\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+1}$。

即$\dfrac{1}{2}<\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+i}<\lim\limits_{n\to\infty}\dfrac{n}{n+1}=1$。夹逼准则失败。

所以对$\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+i}$通过定积分定义进行计算。

$\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+i}=\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1}{n+\dfrac{i}{n}}\dfrac{1}{n}=\displaystyle{\int_0^1\dfrac{1}{1+x}\,\textrm{d}x}=[\ln(1+x)]_0^1=\ln2$。

**例题：**求$\lim\limits_{n\to\infty}\left(\dfrac{n+1}{n^2+1}+\dfrac{n+2}{n^2+4}+\cdots+\dfrac{n+n}{n^2+n^2}\right)$。

解：即求$\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{n+i}{n^2+i^2}=\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{n^2+ni}{n^2+i^2}\cdot\dfrac{1}{n}=\lim\limits_{n\to\infty}\sum\limits_{i=1}^n\dfrac{1+\dfrac{i}{n}}{1+\left(\dfrac{i}{n}\right)^2}\cdot\dfrac{1}{n}$

$=\displaystyle{\int_0^1\dfrac{1+x}{1+x^2}\textrm{d}x}=\displaystyle{\int_0^1\dfrac{1}{1+x^2}\textrm{d}x+\int_0^1\dfrac{x}{1+x^2}\textrm{d}x}$

$=\left[\arctan x+\dfrac{1}{2}\ln(1+x^2)\right]_0^1=\dfrac{\pi}{4}+\dfrac{1}{2}\ln2$。

## 2.2 区间再现

若函数$f(x)$为连续函数，则$\int_a^bf(x)\,\textrm{d}x=\int_a^bf(a+b-x)\,\textrm{d}x$。区间再现本质是一种换元法，但是实际上是显式地根据函数周期移动$x$的范围，求出另一种形式，再结合一起解出。这种方法类似多次分部积分求出两边同一个形式的不定积分然后相减的方法。

基本上三角函数相关的式子可以用区间再现。如果直接求不出来就可以考虑区间再现。一般积分区间为$[0,a]$，令$x=a-t$。

**例题：**求$\displaystyle{\int_0^\frac{\pi}{2}\dfrac{\sin x}{\sin x+\cos x}\textrm{d}x}$。

解：$=\displaystyle{\int_0^\frac{\pi}{2}\dfrac{\sin(\dfrac{\pi}{2}-x)}{\sin(\dfrac{\pi}{2}-x)+\cos(\dfrac{\pi}{2}-x)}\textrm{d}x=\int_0^\frac{\pi}{2}\dfrac{\cos x}{\cos x+\sin x}\textrm{d}x}$

又$\displaystyle{\int_0^\frac{\pi}{2}\dfrac{\sin x}{\sin x+\cos x}\textrm{d}x+\int_0^\frac{\pi}{2}\dfrac{\cos x}{\cos x+\sin x}\textrm{d}x}$$=\int_0^\frac{\pi}{2}\textrm{d}x=\dfrac{\pi}{2}$。

$\therefore\displaystyle{\int_0^\frac{\pi}{2}\dfrac{\sin x}{\cos x+\sin x}\textrm{d}x}=\dfrac{\pi}{4}$。

**例题：**求$\displaystyle{\int_0^\pi}\dfrac{x\sin x}{1+\cos^2x}\textrm{d}x$。

解：首先看题目，貌似分部积分无法进行，因为式子结构不是两个部分，换元法一般的也换不了，

根据区间再现公式，令$x=\pi-t$，则$=-\displaystyle{\int_\pi^0\dfrac{(\pi-t)\sin(\pi-t)}{1+\cos^2(\pi-t)}\textrm{d}t}=$\
$\displaystyle{\int_0^\pi\dfrac{(\pi-t)\sin t}{1+\cos^2t}\textrm{d}t}=\pi\displaystyle{\int_0^\pi\dfrac{\sin t}{1+\cos^2t}\textrm{t}-I}$。

$\therefore=\dfrac{1}{2}\pi\displaystyle{\int_0^\pi\dfrac{\sin t}{1+\cos^2t}\textrm{d}t}=-\dfrac{1}{2}\pi\int_0^\pi\dfrac{\textrm{d}\cos t}{1+\cos^2t}=-\dfrac{1}{2}\pi\arctan\cos t\bigg|_0^\pi=\dfrac{1}{4}\pi^2$。

## 2.3 换元积分

换元积分法基本上跟不定积分一样。

**例题：**求$\displaystyle{\int_0^2\dfrac{x\,\textrm{d}x}{(x^2-2x+2)^2}}$。

解：从题目来看都需要使用换元积分法，因为分母比较复杂。一种思路直接令$x^2-2x+2=u$，但是这样$\textrm{d}x$就解不出来。所以尝试将分母配方：$x^2-2x+2=(x-1)^2+1$，看到$x^2+1$的形式就想到了$\tan^2u+1=\sec^2u$，所以令$x-1=\tan u$，即$x=\tan u+1$，$\textrm{d}x=\sec^2u\,\textrm{d}u$，$(x^2-2x+2)^2=\sec^4u$。当$x=0$，$u=-\dfrac{\pi}{4}$，当$x=2$，$u=\dfrac{\pi}{4}$。解得$=\displaystyle{\int_{-\frac{\pi}{4}}^\frac{\pi}{4}\dfrac{(1+\tan u)\textrm{d}u}{\sec^2u}}$

$=\int_{-\frac{\pi}{4}}^\frac{\pi}{4}\cos^2u\,\textrm{d}u+\int_{-\frac{\pi}{4}}^\frac{\pi}{4}\cos^2u\tan u\,\textrm{d}u=\int_{-\frac{\pi}{4}}^\frac{\pi}{4}\cos^2u\,\textrm{d}u+\int_{-\frac{\pi}{4}}^\frac{\pi}{4}\sin u\cos u\,\textrm{d}u=\int_{-\frac{\pi}{4}}^\frac{\pi}{4}\cos^2u\,\textrm{d}u=2\int_0^\frac{\pi}{4}\cos^2u\,\textrm{d}u=2\int_0^\frac{\pi}{4}(1+\cos2u)\,\textrm{d}u=\dfrac{\pi}{4}+\dfrac{1}{2}$。

## 2.4 分部积分

可以使用普通的分部积分方式，也可以使用分部积分推广公式。

**例题：**求$\int_0^\frac{\pi}{2}e^{2x}\cos x\,\textrm{d}x$。

解：令$e^{2x}=u$，$\cos x=v$，$\therefore$根据积分推广公式：

   $e^{2x}$   $2e^{2x}$   $4e^{2x}$
  ---------- ----------- -----------
   $\cos x$   $\sin x$    $-\cos x$

$\therefore\int_0^\frac{\pi}{2}e^{2x}\cos x\,\textrm{d}x=[e^{2x}\sin x+2e^{2x}\cos x]_0^\frac{\pi}{2}-4\int_0^\frac{\pi}{2}e^{2x}\cos x\,\textrm{d}x$。

$\int_0^\frac{\pi}{2}e^{2x}\cos x\,\textrm{d}x=\dfrac{1}{5}[e^{2x}(\sin x+2\cos x)]_0^\frac{\pi}{2}=\dfrac{1}{5}(e^\pi-2)$。

## 2.5 几何意义

定积分与不定积分不同的就是定积分具有几何意义，可以在计算时简化操作。

**例题：**计算$\int_0^1\sqrt{2x-x^2}\,\textrm{d}x$。

解：首先看到这个题目可能会使用换元积分法，但是尝试$t=\sqrt{2x-x^2}$，则$x$无法用$t$表示。

对$\sqrt{2x-x^2}$进行变形，$=\sqrt{1-(x-1)^2}$，令$x-1=t$，则$=\int_0^1\sqrt{1-t^2}\,\textrm{d}t$，根据定积分的几何意义，这是一个单位圆的四分之一，所以结果等于$\dfrac{1}{4}\pi$。

## 2.6 定限积分等式

与不定积分等式一样，存在一些问题给出带有不定积分的等式，需要求里面的包含的函数。其中不同的是定限积分的值都是常数，所以解题时可以令其为一个参数求。

**例题：**设$f(x)=x^2-x\int_0^2f(x)\,\textrm{d}x+2\int_0^1f(x)\,\textrm{d}x$，求$f(x)$。

解：令$\int_0^2f(x)\,\textrm{d}x=a$，$\int_0^1f(x)\,\textrm{d}x=b$。

则等式变为$f(x)=x^2-ax+2b$，所以等式就可以回代到两个参数的定积分中。

$\int_0^2(x^2-ax+2b)\,\textrm{d}x=a$，$\int_0^1(x^2-ax+2b)\,\textrm{d}x=b$。

$\left[\dfrac{x^3}{3}-\dfrac{ax^2}{2}+2bx\right]_0^2=\dfrac{8}{3}-2a+4b=a$，$\left[\dfrac{x^3}{3}-\dfrac{ax^2}{2}+2bx\right]_0^1=\dfrac{1}{3}-\dfrac{a}{2}+2b=b$。

即$b-\dfrac{1}{2}a=-\dfrac{1}{3}$，$4b-3a==\dfrac{8}{3}$，解得$a=\dfrac{4}{3}$，$b=\dfrac{1}{3}$。

则$f(x)=x^2-\dfrac{4}{3}x+\dfrac{2}{3}$。

## 2.7 中值定理

中值定理一般是在微分中使用，积分中也可能考到，但是重点是将定限积分化为两个常数的差的形式，所以基本上使用拉格朗日中值定理。

或者使用积分中值定理：

若$f(x)$在$[a,b]$上连续，则存在$\xi\in[a,b]$，使得$\int_a^bf(x)\,\textrm{d}x=f(\xi)(b-a)$。

若$f(x)$、$g(x)$在$[a,b]$上连续，$g(x)$不变号，则存在$\xi\in[a,b]$，使得$\int_a^bf(x)g(x)\,\\\textrm{d}x=f(\xi)\int_a^bg(x)\,\textrm{d}x$。

**例题：**设函数$f(x)$在$[0,3]$上连续，在$(0,3)$内有二阶导数，且$2f(0)=\int_0^2f(x)\,\textrm{d}x=f(2)+f(3)$。

证明：（1）存在$\eta\in(0,2)$，使得$f(\eta)=f(0)$；（2）存在$\xi\in(0,3)$，使得$f''(\xi)=0$。

证明：

（1）中值定理基本上是对普通函数的差式进行运算，所以令$F(x)=f_0^xf(t)\,\textrm{d}t$（$0\leqslant x\leqslant2$），所以$\int_0^2f(x)\,\textrm{d}x=F(2)-F(0)$。

由拉格朗日中值定理，存在$\eta\in(0,2)$，使得$F(2)-F(0)=F'(\eta)(2-0)=2f(\eta)$，即$\int_0^2f(x)\,\textrm{d}x=2f(\eta)$。

题目条件可知$f(\eta)=f(0)$。

（2）还剩下等式右边的条件没有使用，且数字为2和3。如何使用？

由函数导数$f''(\xi)$为0很显然知道要使用罗尔定理，但是这是二阶导数，就要求得到$f'(0)=f'(3)$两端相等的条件。

请注意这里是存在$\xi\in(0,3)$使得条件成立，则相等的两端不一定就等于0和3，在区间范围$(0,3)$内都成立。

往往第二问的条件基于第一问的结论，看到第一问，出现了两端相等且区域$\eta$为$(0,3)$子区间，两端相等所以得到这里有一个值的$f'(?)=0$。

此时我们必须找到另一个$f'(?)=0$也成立，此时就能看到最开始剩下的条件$f(2)+f(3)=2f(0)$，这个区域正好是$(0,2)$与$(0,3)$的差集。

我们需要根据这个条件知道存在一个点让$f'(?)=0$成立。即根据罗尔定理，让存在一个点使得$f(?)=f(0)$。根据右边的条件可以使用介值定理。

按这个思路倒退得到证明过程。

由于$f(x)$在$[0,3]$上连续则$[2,3]$上连续，则其必然存在最大值$M$和最小值$m$，使得$m\leqslant f(2)\leqslant M$，$m\leqslant f(3)\leqslant M$，所以$m\leqslant\dfrac{f(2)+f(3)}{2}\leqslant M$。

由介值定理可知存在$\tau\in[2,3]$，使得$f(\tau)=\dfrac{f(2)+f(3)}{2}=f(0)$。所以此时找到这个点。

由（1）$f(0)=f(\eta)=f(\tau)$，其中$0<\eta<2\leqslant\tau\leqslant3$。

根据罗尔定理，必然存在$\xi_1\in(0,\eta)$，$\xi_2\in(\eta,\tau)$，使得$f'(\xi_1)=f'(\xi_2)=0$，再根据罗尔定理存在$\xi\in(\epsilon_1,\epsilon_2)\subset(0,3)$使得$f''(\xi)=0$。

# 3 变限积分

## 3.1 求导公式

对定限积分求导公式：$(\int_a^xf(t)\,\textrm{d}t)'=f(x)$。

**例题：**求$\dfrac{\textrm{d}}{\textrm{d}x}[\int_0^xtf(x^2-t^2)\,\textrm{d}t]$。

解：按照公式，$f(t)$里面应该只有积分变量$t$，但是此时存在求导变量$x$，所以必须将$x$移出积分函数中。

使用换元法令$x^2-t^2=u$，即$-2t\textrm{d}t=\textrm{d}u$，当$t=0$，$u=x^2$，当$t=x$，$u=0$。

所以原式$=\dfrac{1}{2}\dfrac{\textrm{d}}{\textrm{d}x}[\int_0^{x^2}f(u)\,\textrm{d}u]=xf(x^2)$。

## 3.2 积分性质

可以使用积分性质来对积分进行简化，如奇偶性（奇函数积分为0，偶函数积分为双倍；原函数为偶函数，积分$C=0$时为奇函数，原函数为奇函数，积分为偶函数）、周期性（区间减去周期积分值不变）。

## 3.3 周期性

当积分为变限积分时，若函数为周期函数，区间长度为周期，可以直接把区间的变量$x$减掉，变成定积分。

**例题：**求$f(x)=\int_x^{x+2\pi}e^{\sin t}\sin t\,\textrm{d}t$是否为常量，并判断其正负性。

解：由于$\sin x$为周期函数，$e^x$为单调函数，所以$f(x)$为周期函数，周期为$\sin x$的周期$2\pi$。

$\therefore f(x)=\int_0^{2\pi}e^{\sin t}\sin t\,\textrm{d}t=\int_0^{2\pi}e^{\sin t}\cos^2t\,\textrm{d}t\geqslant0$。

## 3.4 极限

变限积分也常与极限共同出现。

**例题：**若$f(x)$连续，$f(0)=0$，$f'(0)=\pi$，求$\lim\limits_{x\to0}\dfrac{\int_0^xf(t)\,\textrm{d}t}{x^2}$。

解：$=\lim\limits_{x\to0}\dfrac{f(x)}{2x}=\dfrac{1}{2}\lim\limits_{x\to0}\dfrac{f(x)-f(0)}{x-0}=\dfrac{1}{2}f'(0)=\dfrac{\pi}{2}$。

**例题：**若$f(x)$连续，$F(x)=\int_0^x(x-t)f(t)\,\textrm{d}t$，求$F''(x)$。

解：因为$x$与$t$混合在一起很麻烦，$x$为上限是常数，$t$为积分变量。

$F(x)=\int_0^xxf(t)\,\textrm{d}t-\int_0^xtf(t)\,\textrm{d}t=x\int_0^xf(t)\,\textrm{d}t-\int_0^xtf(t)\,\textrm{d}t$

$\therefore F'(x)=\int_0^xf(t)\,\textrm{d}t+xf(x)-xf(x)=\int_0^xf(t)\,\textrm{d}t$。

$\therefore F''(x)=f(x)$。

**例题：**设$f(x)$是定义于$x\geqslant1$的正值连续函数，则求其相关函数$F(x)=\displaystyle{\int_1^x\left[\left(\dfrac{2}{x}+\ln x\right)-\left(\dfrac{2}{t}+\ln t\right)\right]f(t)\,\textrm{d}t}$（$x\geqslant1$）的极小值点。

解：按照一般函数一样求极值就是求导，注意的是$t$和$x$含义不同，若对$t$求导，则$x$作为积分上限是看作常数的，所以可以提出去：

$F(x)=\left(\dfrac{2}{x}+\ln x\right)\displaystyle{\int_1^xf(t)\,\textrm{d}t-\int_1^x\left(\dfrac{2}{t}+\ln t\right)f(t)\,\textrm{d}t}$。

$x$求导：$F'(x)=\left(-\dfrac{2}{x^2}+\dfrac{1}{x}\right)\int_1^xf(t)\,\textrm{d}t+\left(\dfrac{2}{x}+\ln x\right)f(x)-\left(\dfrac{2}{x}+\ln x\right)f(x)$

$\because f(x)$为连续正值函数，$\therefore=\dfrac{x-2}{x^2}\int_1^xf(t)\,\textrm{d}t=\left\{\begin{array}{lcl}
    < 0, & & 1<x<2 \\
    =0, & & x=2 \\
    >0, & & x>2
\end{array}\right.$。

所以极小值为$2$。

## 3.5 连续

**例题：**设$f(x)=\left\{\begin{array}{ll}
    x^2, & x\in[0,1) \\
    x, & x\in[1,2]
\end{array}\right.$，求$\varPhi(x)=\int_0^xf(t)\,\textrm{d}t$在$[0,2]$上的表达式，并讨论$\varPhi(x)$在$(0,2)$内的连续性。

解：当$x\in[0,1)$时，$\varPhi(x)=\int_0^xt^2\,\textrm{d}t=\dfrac{x^3}{3}$，注意的是$x\in[1,2]$时，$\varPhi(x)=\int_0^1f(t)\,\textrm{d}t+\int_1^xf(t)\,\textrm{d}t=\int_0^1t^2\,\textrm{d}t+\int_1^xt\,\textrm{d}t=\left[\dfrac{t^3}{3}\right]_0^1+\left[\dfrac{t^2}{2}\right]_1^x=\dfrac{x^2}{2}+\dfrac{1}{3}-\dfrac{1}{2}=\dfrac{x^2}{2}-\dfrac{1}{6}$。

$\therefore\varPhi(x)=\left\{\begin{array}{ll}
    \dfrac{x^3}{3}, & x\in[0,1) \medskip \\
    \dfrac{x^2}{2}-\dfrac{1}{6}, & x\in[1,2]
\end{array}\right.$。

由于$x\to1^-$时，$\lim\limits_{x\to1^-}\varPhi(x)=\lim\limits_{x\to1^-}\dfrac{x^3}{3}=\dfrac{1}{3}$。$x=1$时，$\varPhi(1)=\dfrac{1}{2}-\dfrac{1}{6}=\dfrac{1}{3}$，所以$\varPhi(x)$在$x=1$处连续，而在其他定义域都是函数，所以也连续，从而$\varPhi(x)$在$(0,2)$上连续。

## 3.6 无穷小比较

当对变限积分进行无穷小进行比较时有这样的结论：

[**定理：**]{style="color: aqua"}若$f(x)$在$x=0$的某邻域内连续，且$x\to0$时，$f(x)$是$x$的$m$阶无穷小，$\varphi(x)$是$x$的$n$阶无穷小，则当$x\to0$时$F(x)=\int_0^{\varphi(x)}f(t)\,\textrm{d}t$是$x$的$n(m+1)$阶无穷小。

**例题：**当$x\to0^+$时，哪个无穷小量阶数最高()。

$A.\int_0^x(e^{t^2}-1)\,\textrm{d}t$

$B.\int_0^x\ln(1+\sqrt{t^3})\,\textrm{d}t$

$C.\int_0^{\sin x}\sin t^2\,\textrm{d}t$

$D.\int_0^{1-\cos x}\sqrt{\sin^3t}\,\textrm{d}t$

解：根据结论，$A$阶数为$1(2+1)=3$，$B$阶数为$1\times\left(1+\dfrac{3}{2}\right)=\dfrac{5}{2}$，$C$的阶数为$1(2+1)=3$，$D$的上限为$1-\cos x\sim\dfrac{x^2}{2}$，阶数为$2\times\left(1+\dfrac{3}{2}\right)=5$。所以$D$。

# 4 反常积分

反常积分就是取极限，基本计算方法一样。

反常积分的瑕点可能在积分区间内，此时需要根据瑕点分隔积分区间。

## 4.1 求值

**例题：**求$\displaystyle{\int_0^{+\infty}\dfrac{\textrm{d}x}{(1+x)(1+x^2)}}$。

解：这是无穷区间的反常积分，看到一个$1+x^2$因式，所以尝试使用换元积分法，令$x=\tan u$，$1+x^2=\sec^2u$，$\textrm{d}x=\sec^2u\,\textrm{d}u$。

当$x=0$，$\tan u=0$，$u=0$，当$x=+\infty$，$u=+\dfrac{\pi}{2}$。

$\therefore=\displaystyle{\int_0^\frac{\pi}{2}\dfrac{1}{1+\tan u}\textrm{d}u=\int_0^\frac{\pi}{2}\dfrac{\cos u}{\cos u+\sin u}\textrm{d}u=\dfrac{\pi}{4}}$。

根据区间再现公式，$\displaystyle{\int_0^\frac{\pi}{2}\dfrac{\sin u}{\cos u+\sin u}\textrm{d}u=\int_0^\frac{\pi}{2}\dfrac{\cos u}{\cos u+\sin u}\textrm{d}u=\dfrac{\pi}{4}}$。

**例题：**求$\displaystyle{\int_0^{+\infty}\dfrac{xe^{-x}}{(1+e^{-x})^2}\textrm{d}x}$。

解：看到本题中没有可以换元的元素，尝试使用分部积分将分母移到积分变量中。

$=\displaystyle{\int_0^{+\infty}x\textrm{d}\left(\dfrac{1}{1+e^{-x}}\right)}=\left[\dfrac{x}{1+e^{-x}}\right]_0^{+\infty}-\int_0^{+\infty}\dfrac{\textrm{d}x}{1+e^{-x}}=\lim\limits_{x\to+\infty}\dfrac{x}{1+e^{-x}}-\int_0^{+\infty}\dfrac{\textrm{d}e^x}{1+e^x}=\lim\limits_{x\to+\infty}\left[\dfrac{x}{1+e^{-x}}-\ln(1+e^x)\right]+\ln2=\lim\limits_{x\to+\infty}\dfrac{1}{1+e^{-x}}[x-\ln(1+e^x)(1+e^{-x})]+\ln2=\lim\limits_{x\to+\infty}[x-\ln(1+e^x)(1+e^{-x})]+\ln2=\lim\limits_{x\to+\infty}[\ln e^x-\ln(1+e^x)(1+e^{-x})]+\ln2=\lim\limits_{x\to+\infty}\left[\ln e^x-(1+e^x)\dfrac{\ln(1+e^x)}{e^x}\right]+\ln2=\lim\limits_{x\to+\infty}\\\left[\ln\dfrac{e^x}{1+e^x}-\dfrac{\ln(1+e^x)}{e^x}\right]+\ln2=\ln1-0+\ln2=\ln2$。

## 4.2 求参数

题目会给出一个含参的式子，并给出对应的极限值，要求对应的参数值。首先必须知道对应的式子什么时候才会收敛。

**例题：**已知$\displaystyle{\int_1^{+\infty}\left[\dfrac{2x^2+bx+a}{x(2x+a)}-1\right]}$，求参数。

解：首先将式子化简$=\displaystyle{\int_1^{+\infty}\dfrac{(b-a)x+a}{x(2x+a)}\textrm{d}x=\int_1^{+\infty}\dfrac{b-a}{2x+a}+\dfrac{a}{x(2x+a)}\textrm{d}x}$。

此时可以知道后面的$\dfrac{a}{x(2x)+a}\to\dfrac{1}{2x^2}\to x^{-2}$，积分结果为$\dfrac{1}{x}$，所以这个部分的反常积分在$x\to+\infty$是收敛的。

而前面的部分$\dfrac{b-a}{2x+a}\to\dfrac{1}{x}$，积分结果为$\ln x$，当$x\to+\infty$时不收敛，所以就需要把这个部分消掉，即$b-a=0$，$b=a$。

所以结果变为$\displaystyle{\int_1^{+\infty}\dfrac{a}{x(2x+a)}\textrm{d}x=\int_1^{+\infty}\left[\dfrac{1}{x}-\dfrac{2}{2x+a}\right]\textrm{d}x}=\ln\dfrac{x}{2x+a}\bigg\vert_1^{+\infty}$\
$=\ln\dfrac{1}{2}-\ln\dfrac{1}{2+a}=\ln(2+a)-\ln2=\ln\left(1+\dfrac{a}{2}\right)=1$，$\therefore a=b=2(e-1)$。

可能会奇怪，为什么最开始不把式子化成最简单的式子：

$=\displaystyle{\int_1^{+\infty}\dfrac{b-a}{2x+a}+\dfrac{1}{x}-\dfrac{2}{2x+a}\textrm{d}x=\int_1^{+\infty}\dfrac{b-a-2}{2x+a}+\dfrac{1}{x}\textrm{d}x}$。此时前后两个式子都是发散的，所以不能求出收敛的参数。

## 4.3 递推公式

**例题：**利用递推公式计算反常积分$I_n=\int_0^{+\infty}x^ne^{-x}\,\textrm{d}x$（$n\in N$）。

解：看到这个公式，虽然不知道如何利用递推公式得到这个反常积分的值，但是看到这个式子是由两个部分的乘积构成，所以尝试使用分部积分来计算看看：

$I_n=-\int_0^{+\infty}x^n\,\textrm{d}(e^{-x})=[-x^ne^{-x}]_0^{+\infty}+\int_0^{+\infty}nx^{n-1}e^{-x}\,\textrm{d}x=-\lim\limits_{x\to+\infty}x^ne^{-x}+n\int_0^{+\infty}x^{n-1}e^{-x}\,\textrm{d}x=n\int_0^{+\infty}x^{n-1}e^{-x}\,\textrm{d}x=nI_{n-1}$。

且$I_0=\int_0^{+\infty}e^{-x}\,\textrm{d}x=[-e^{-x}]_0^{+\infty}=1$。

$\therefore I_n=n!$。

## 4.4 判敛

### 4.4.1 结论

无穷区间的反常积分$\int_1^{+\infty}\dfrac{\textrm{d}x}{x^p}$在$p>1$时收敛，在$p\leqslant1$时发散。

无界函数的反常积分$\int_0^1\dfrac{\textrm{d}x}{x^p}$（$p>1$，奇点$x=0$）在$0<p<1$时收敛，在$p\geqslant1$时发散。

面对判敛的式子就需要将反常积分转换为$\dfrac{1}{x}$的形式，通常使用等价无穷小。

**例题：**已知$\alpha,\beta>0$，判断反常积分$\displaystyle{\int_1^{+\infty}\dfrac{\left(\arctan\dfrac{1}{x}\right)^a}{\left[\ln\left(1+\dfrac{1}{x}\right)\right]^{2\beta}}\textrm{d}x}$的敛散性。

解：积分存在唯一奇点$+\infty$，当$x\to+\infty$时，$\arctan\dfrac{1}{x}\sim\dfrac{1}{x}$，$\ln\left(1+\dfrac{1}{x}\right)\sim\dfrac{1}{x}$。

$\dfrac{\left(\arctan\dfrac{1}{x}\right)^a}{\left[\ln\left(1+\dfrac{1}{x}\right)\right]^{2\beta}}=\dfrac{1}{x^{\alpha-2\beta}}$。

当$\alpha-2\beta>1$时收敛，$\alpha-2\beta\leqslant1$时发散。

### 4.4.2 计算

可以直接通过计算反常积分判断收敛或发散。

# 5 一元函数积分应用

## 5.1 几何应用

重点是形心公式和弧长公式。

### 5.1.1 面积

#### 5.1.1.1 直角坐标系

**例题：**求曲线$y^2=x$与$y=x^2$所围成面积。

解：首先确定$x$的范围，是$x\in[0,1]$。

第二步确立微元，即切割的微小元素，是$\textrm{d}S=[\sqrt{x}-x^2]\textrm{d}x$（也可以对$y$积分：$S=\int_0^1(\sqrt{y}-y^2)\,\textrm{d}y$）。

最后一步对其积分：$S=\int_0^1(\sqrt{x}-x^2)\,\textrm{d}x=\dfrac{2}{3}-\dfrac{1}{3}=\dfrac{1}{3}$。

**例题：**求曲线$y^2=2x$与$y=x-4$围成面积。

解：首先确定范围，将$y=x-4$代入$y^2=2x$，从而得到$x\in[0,8]$，$y\in[-2,4]$。

若是对$x$确立微元，则对于不同的区间，面积有不同的表达式：

$S=\int_0^22\sqrt{2x}\,\textrm{d}x+\int_2^8(\sqrt{2x}-x+4)\,\textrm{d}x$。

这显然很麻烦，然而如果对$y$确立微元，那么$y^2=2x$在$y\in[-2,4]$上总是在$y=x-4$下面，所以这个面积只要一个表达式就能表达出来：

$\textrm{d}S=\left[(y+4)-\dfrac{y^2}{2}\right]\textrm{d}y$。

所以$S=\displaystyle{\int_{-2}^4\left[(y+4)-\dfrac{y^2}{2}\right]\textrm{d}y}$。

#### 5.1.1.2 参数方程

**例题：**求摆线一拱$\left\{\begin{array}{l}
    x=a(t-\sin t) \\
    y=a(1-\cos t)
\end{array}
\right.$$(0\leqslant t\leqslant 2\pi)$与$x$轴所围成的面积。

解：首先计算范围，代入$2\pi$，得到$x\in[0,2a\pi]$。

然后是找微元，这里是对$x$确立：$\textrm{d}S=y(x)\,\textrm{d}x$。

从而$S=\int_0^{2a\pi}y(x)\,\textrm{d}x$。

因为无法计算对于$x$的表达式，所以使用参数方程代入，并改变上下限$S$：

$=\int_0^{2\pi}a(1-\cos t)\,\textrm{d}[a(t-\sin t)]=\int_0^{2\pi}a^2(1-\cos t)^2\,\textrm{d}t$

$=a^2\displaystyle{\int_0^{2\pi}\left(2\sin^2\dfrac{t}{2}\right)^2\textrm{d}t}\,\text{（消去里面的1）}=4a^2\displaystyle{\int_0^{2\pi}\sin^4\dfrac{t}{2}\,\textrm{d}t}$

令$u=\dfrac{t}{2}$，从而$\textrm{d}t=2\textrm{d}u$，从而$u\in[0,\pi]$。

$=8a^2\int_0^\pi\sin^4u\,\textrm{d}u=16a^2\int_0^{\frac{\pi}{2}}\sin^4u\,\textrm{d}u$（积分可加性拆分为两个相同限的项）

$=16a^2\cdot\dfrac{3}{4}\cdot\dfrac{1}{2}\cdot\dfrac{\pi}{2}=3a^2\pi$（点火公式）。

#### 5.1.1.3 极坐标

**例题：**求心形线$\rho=a(1+\cos\theta)(a>0)$所围成面积。

解：极角发生变化时，可以计算到心形线必然会穿过$(2a,0),(0,a),(0,0)$这三个点，而$\cos x$是一个偶函数，所以心形线图形是上下对称的。如果要求心形线的面积，可以只用求上半部分就可以了。

所以可以根据公式$S=2\dfrac{1}{2}\int_0^\pi a^2(1+\cos\theta)^2\,\textrm{d}\theta$。

$=a^2\displaystyle{\int_0^\pi\left(2\cos^2\dfrac{\theta}{2}\right)^2\textrm{d}\theta}=4a^2\displaystyle{\int_0^\pi\cos^4\dfrac{\theta}{2}\,\textrm{d}\theta}$

令$\dfrac{\theta}{2}=t$，所以$\textrm{d}\theta=2\textrm{d}t$，同时上下限缩小一半：$=8a^2\int_0^{\frac{\pi}{2}}\cos^4t\,\textrm{d}t$

根据华理士公式：$=8a^2\cdot\dfrac{3}{4}\cdot\dfrac{1}{2}\cdot\dfrac{\pi}{2}=\dfrac{3}{2}a^2\pi$。

#### 5.1.1.4 旋转体侧面积

### 5.1.2 体积

#### 5.1.2.1 旋转体

**例题：**计算由椭圆$\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}=1$所围成的图形绕$x$轴旋转一周而成的体积。

解：由式子得到$y^2=b^2\left(1-\dfrac{x^2}{b^2}\right)$。

所以旋转体体积就是两倍的第一象限的旋转体积，直接计算第一象限部分就可以了。

$V_x=2\pi\displaystyle{\int_0^ab^2\left(1-\dfrac{x^2}{a^2}\right)\,\textrm{d}x}=2\pi b^2\left(a-\dfrac{a}{3}\right)=\dfrac{4\pi ab^2}{3}$。

**例题：**计算摆线$\left\{\begin{array}{l}
    x=a(t-\sin t) \\
    y=a(1-\cos t)
\end{array}
\right.$$(0\leqslant t\leqslant 2\pi)$与$x$轴，$y$轴所旋转得到的体积。

解：$\because t\in[0,2\pi]$，$\therefore x\in[0,2a\pi]$。

$V_x=\pi\int_0^{2a\pi}y^2\,\textrm{d}x$

代入参数方程并改变上下限：

$=\pi\int_0^{2\pi}a^2(1-\cos t)^2\,\textrm{d}[a(t-\sin t)]=a^3\pi\int_0^{2\pi}(1-\cos t)^3\,\textrm{d}t$

$=a^3\pi\displaystyle{\int_0^{2\pi}\left(2\sin^2\dfrac{t}{2}\right)^3\textrm{d}t}=8a^3\pi\displaystyle{\int_0^{2\pi}\sin^6\dfrac{t}{2}\textrm{d}t}$

令$\dfrac{\theta}{2}=t$，所以$\textrm{d}\theta=2\textrm{d}t$，同时上下限缩小一半：

$=16a^3\pi\int_0^\pi\sin^6u\,\textrm{d}u=32a^3\pi\int_0^{\frac{\pi}{2}}\sin^6u\,\textrm{d}u$

华理士公式得到最后$=5a^3\pi^2$。

同理可得$y$轴旋转体积为$V_y=2\pi\int_0^{2\pi}xy(x)\,\textrm{d}x$

$=2\pi\int_0^{2\pi}a(t-\sin t)a^2(1-\cos t)^2\,\textrm{d}t=2a^3\pi\int_0^{2\pi}(t-\sin t)\cdot 4\sin^4\dfrac{t}{2}\,\textrm{d}t$

然后拆开分别进行凑微分法，得到$6a^3\pi^3$。

#### 5.1.2.2 平行截面已知的立体体积

**例题：**计算由$\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}+\dfrac{z^2}{c^2}=1$所围成的椭球体的体积。

解：已知$\dfrac{y^2}{b^2}+\dfrac{z^2}{c^2}=1-\dfrac{x^2}{a^2}$.

$S(x)=\pi bc\left(1-\dfrac{x^2}{a^2}\right)$

$V=2\int_0^a\pi bc\left(1-\dfrac{x^2}{a^2}\right)\,\textrm{d}x$。

解得$V=\dfrac{4}{3}\pi abc$。

### 5.1.3 平均值

**例题：**求函数$y=\dfrac{x^2}{\sqrt{1-x^2}}$在区间$\left[\dfrac{1}{2},\dfrac{\sqrt{3}}{2}\right]$上的平均值。

解：$\bar{y}=\dfrac{1}{\dfrac{\sqrt{3}}{2}-\dfrac{1}{2}}\displaystyle{\int_\frac{1}{2}^\frac{\sqrt{3}}{2}\dfrac{x^2}{\sqrt{1-x^2}}\textrm{d}x}$，令$x=\sin t$：$=\dfrac{2}{\sqrt{3}-1}\displaystyle{\int_\frac{\pi}{6}^\frac{\pi}{3}\dfrac{\sin^2t}{\cos t}\cos t\,\textrm{d}t}$

$=\dfrac{2}{\sqrt{3}-1}\int_\frac{\pi}{6}^\frac{\pi}{3}\sin^2t\,\textrm{d}t=\dfrac{1}{\sqrt{3}-1}\int_\frac{\pi}{6}^\frac{\pi}{3}(1-\cos2t)\,\textrm{d}t=\dfrac{\sqrt{3}+1}{12}\pi$。

### 5.1.4 弧长

### 5.1.5 旋转曲面表面积

### 5.1.6 形心坐标公式

**例题：**设曲线$L$的方程为$y=\dfrac{1}{4}x^2-\dfrac{1}{2}\ln x$，$1\leqslant x\leqslant e$，$D$是由曲线$L$，直线$x=1$，$x=e$及$x$轴围成的平面图形，求$D$的形心横坐标。

解：代入$\overline{x}=\dfrac{\int_a^bxf(x)\,\textrm{d}x}{\int_a^bf(x)\,\textrm{d}x}=\dfrac{\int_1^ex\left(\dfrac{1}{4}x^2-\dfrac{1}{2}\ln x\right)\,\textrm{d}x}{\int_1^e\left(\dfrac{1}{4}x^2-\dfrac{1}{2}\ln x\right)\,\textrm{d}x}=\dfrac{3(e^2+1)(e^2-3)}{4(e^3-7)}$。

### 5.1.7 平行截面已知的立体体积

## 5.2 物理应用

### 5.2.1 变力沿直线做功

### 5.2.2 抽水做功

**例题：**有一个半径为$4m$的半球形水池蓄满了水，现在要将水全部抽取到距水池原水面$6m$高的水箱中，求需要做多少功。（水的密度为$1000kg/m^3$，重力加速度$g=9.8m/s^2$）

解：令水池是竖直的，所以以$y$为积分的方向。

根据原水平面为半径为4的圆的面积，得到$x^2+y^2=16$，解得$x^2=16-y^2$，$A(y)=\pi x^2=\pi(16-y^2)$。

$\rho gA(y)\,\textrm{d}y=\rho g\pi(16-y^2)\,\textrm{d}y$

要将水提到$6m$，即路径为$6-y$，所以$\rho g\pi(16-y^2)(6-y)\,\textrm{d}y$。

又$y$从最开始的0到抽干的-4，所以得到$w=\int_{-4}^0\rho g\pi(16-y^2)(6-y)\,\textrm{d}y$。

### 5.2.3 水压力

# 6 积分关系式

## 6.1 积分等式

包括证明带有积分的等式、方程根、积分中值定理等。

对于这种等式要求其值，往往是给出部分式子的条件，所以必须想办法进行转换。

一种是已知$f(x)$，式子中含有未知的$f'(x)$，一种是已知$f'(x)$（多以$f(x)=\int f'(x)\,\textrm{d}x$的形式给出），式子中含有未知的$f(x)$。

### 6.1.1 分部积分

分部积分法用于消除未知的式子的导数或者积分。

**例题：**设$f''(u)$在区间$[0,2]$上连续，$f(2)=a$，$f'(2)=b$，$\int_0^2f(u)\,\textrm{d}u=c$，求$\int_0^1x^2f''(2x)\,\textrm{d}x$。

解：已知条件是多个导数和一个积分的值，要将这些值换成目标积分的样式。所以要考虑换元积分或分部积分。

这里目标积分的值是乘积形式且变量无法换元，且存在一个未知的$f''(2x)$，所以使用分部积分将$f''(2x)$换到$\textrm{d}x$中降低求导幂次。

$\int_0^1x^2f''(2x)\,\textrm{d}x=\dfrac{1}{2}\int_0^1x^2\,\textrm{d}[f'(2x)]=\dfrac{1}{2}[x^2f'(2x)]\bigg\vert_0^1-\int_0^1xf'(2x)\,\textrm{d}x=\dfrac{1}{2}f'(2)-\dfrac{1}{2}\int_0^1x\,\textrm{d}[f(2x)]=\dfrac{b}{2}-\dfrac{1}{2}[xf(2x)]\bigg\vert_0^1+\dfrac{1}{2}\int_0^1f(2x)\,\textrm{d}x=\dfrac{b}{2}-\dfrac{a}{2}+\dfrac{1}{4}\int_0^2f(u)\,\textrm{d}(u)=-\dfrac{a}{2}+\dfrac{b}{2}+\dfrac{c}{4}$。

### 6.1.2 中值定理

**例题：**设$f(x)$、$g(x)$在$[a,b]$上连续且$g(x)$不变号，证明至少存在一点$\xi\in[a,b]$使得$\int_a^bf(x)g(x)\,\textrm{d}x=f(\xi)\int_a^bg(x)\,\textrm{d}x$。（推广中值定理）

若$g(x)\equiv1$，则结论就是$\int_a^bf(x)\,\textrm{d}x=f(\xi)(b-a)$积分中值定理。

证明：若$g(x)\equiv0$则等式显然成立。若$g(x)$不变号，则不妨设$g(x)>0$。

令$F(x)=\int_a^xf(t)g(t)\,\textrm{d}t$，$G(x)=\int_a^xg(t)\,\textrm{d}t$。

由柯西中值定理可得$\dfrac{F(b)-F(a)}{G(b)-G(a)}=\dfrac{F'(\xi)}{G'(\xi)}=\dfrac{\int_a^bf(x)g(x)\,\textrm{d}x}{\int_a^bg(x)\,\textrm{d}x}=\dfrac{f(\xi)g(\xi)}{g(\xi)}$。

$\therefore\int_a^bf(x)g(x)\,\textrm{d}x=f(\xi)\int_a^bg(x)\,\textrm{d}x$，$\xi\in(a,b)\subset[a,b]$。

同理$g(x)<0$也如此。

### 6.1.3 夹逼准则

夹逼准则一般用于求数列极限，若极限号后面有积分号可以考虑使用夹逼准则。

## 6.2 积分不等式

带积分号的不等问题。

### 6.2.1 函数单调性

将某一限一般是上限变量化，然后移项构造辅助函数，由辅助函数的单调性来证明不等式，多用于所给条件为"$f(x)$在$[a,b]$上连续"的情况，因为函数连续必然可积分与求导。

**例题：**设$f(x)$在$[a,b]$上连续，且$f(x)>0$，证明$\displaystyle{\int_a^bf(x)\,\textrm{d}x\int_a^b\dfrac{1}{f(x)}\textrm{d}x}\geqslant(b-a)^2$。

证明：令$F(x)=\displaystyle{\int_a^xf(t)\,\textrm{d}t\int_a^x\dfrac{1}{f(t)}\textrm{d}t-(x-a)^2}$。目标是证明$F(b)\geqslant0$。

$F'(x)=f(x)\cdot\displaystyle{\int_a^x\dfrac{1}{f(t)}\textrm{d}t+\int_a^xf(t)\,\textrm{d}t\dfrac{1}{f(x)}}-2(x-a)$

$=\displaystyle{\int_a^x\dfrac{f(x)}{f(t)}\textrm{d}t+\int_a^x\dfrac{f(t)}{f(x)}\textrm{d}t-2(x-a)=\int_a^x\left[\dfrac{f(x)}{f(t)}+\dfrac{f(t)}{f(x)}\right]\textrm{d}t-2(x-a)}$

又$\dfrac{f(x)}{f(t)}+\dfrac{f(t)}{f(x)}\geqslant2\sqrt{\dfrac{f(x)}{f(t)}\cdot\dfrac{f(t)}{f(x)}}=2$。

$\therefore\geqslant\int_a^x2\,\textrm{d}t-2(x-a)=2(x-a)-2(x-a)=0$。

从而$F'(x)\geqslant0$，等于0不恒成立，所以$F(x)$在$[a,b]$上单调增，从而$F(b)>F(a)$，$\displaystyle{\int_a^xf(t)\,\textrm{d}t\int_a^x\dfrac{1}{f(t)}\textrm{d}t-(x-a)^2}>0$。

所以$\displaystyle{\int_a^bf(x)\,\textrm{d}x\int_a^b\dfrac{1}{f(x)}\textrm{d}x}\geqslant(b-a)^2$

**例题：**设$f(x)$在$[0,1]$上连续递减，证明$0<\lambda<1$时$\int_0^\lambda f(x)\,\textrm{d}x\geqslant\lambda\int_0^1f(x)\,\textrm{d}x$。

证明：看到$\lambda$和1，可以做出辅助函数$\dfrac{\int_0^xf(t)\,\textrm{d}t}{x}$，即要证明$F(\lambda)\geqslant F(1)$。

又$\lambda<1$，所以只用证明$F(x)$在$[0,1]$上递减。

则$F'(x)=\dfrac{f(x)x-\int_0^xf(t)\,\textrm{d}t}{x^2}$，又根据积分中值定理$\int_0^xf(t)\,\textrm{d}t=f(\xi)(x-0)$，$\xi\in(0,x)$。

$\therefore=\dfrac{f(x)x-f(\xi)x}{x^2}=\dfrac{f(x)-f(\xi)}{x}$，因为$f(x)$在$[0,1]$上递减，$\xi<x$，$f(\xi)>f(x)$。

所以$F'(x)<0$，所以$F(x)$单调递减，从而$F(\lambda)\geqslant F(1)$，所以得证。

### 6.2.2 拉格朗日中值定理

多用于所给条件为"$f(x)$一阶可导"且某一端点值较简单甚至为0的题目。

一阶导数不代表导数连续，导数可能存在震荡间断点。

**例题：**设$f(x)$在$[0,1]$上具有一阶连续导数，且$f(0)=f(1)=0$，证明：$\vert\int_0^1f(x)\,\textrm{d}x\vert\leqslant\dfrac{1}{4}\max\limits_{x\in[0,1]}\{\vert f'(x)\vert\}$。

证明：在$[0,1]$中任意取一点$x$，进行两次拉格朗日中值定理。

$f(x)-f(0)=f'(\xi_1)(x-0)$（$\xi_1\in(0,x)$），$f(x)=f'(\xi_1)x$。

$f(1)-f(x)=f'(\xi_2)(1-x)$（$\xi_2\in(x,1)$），$-f(x)=f'(\xi_2)(1-x)$。

根据不等式性质：$\vert\int_0^1f(x)\,\textrm{d}x\vert=\vert\int_0^xf(t)\,\textrm{d}t+\int_x^1f(t)\,\textrm{d}t\vert$

$\leqslant\vert\int_0^xf(t)\,\textrm{d}t\vert+\vert\int_x^1f(t)\,\textrm{d}t\vert\leqslant\int_0^x\vert f(t)\vert\,\textrm{d}t+\int_x^1\vert f(t)\vert\,\textrm{d}t$

$\xi_1\in(0,x)$上代入$f(x)=f'(\xi_1)x$，$\xi_2\in(x,1)$上代入$-f(x)=f'(\xi_2)(1-x)$。

$=\int_0^x\vert f'(\xi_1)\vert t\,\textrm{d}t+\int_x^1\vert f'(\xi_2)\vert(1-t)\,\textrm{d}t$，令$M=\max\limits_{x\in[0,1]}\{\vert f'(x)\vert\}$。

$\leqslant\int_0^xMt\,\textrm{d}t+\int_x^1M(1-t)\,\textrm{d}t=M\left(\int_0^xt\,\textrm{d}t+\int_x^1(1-t)\,\textrm{d}t\right)$

$=M\left(\dfrac{1}{2}x^2+\dfrac{1}{2}(1-x)^2\right)=M\left(\left(x-\dfrac{1}{2}\right)^2+\dfrac{1}{4}\right)$

即$\vert\int_0^1f(x)\,\textrm{d}x\vert\leqslant M\left(\left(x-\dfrac{1}{2}\right)^2+\dfrac{1}{4}\right)$，$\min\left(M\left(\left(x-\dfrac{1}{2}\right)^2+\dfrac{1}{4}\right)\right)=\dfrac{1}{4}M$

$\therefore\vert\int_0^1f(x)\,\textrm{d}x\vert\leqslant\dfrac{1}{4}M=\dfrac{1}{4}\max\limits_{x\in[0,1]}\{\vert f'(x)\vert\}$

### 6.2.3 泰勒公式

多用于所给条件为"$f(x)$二阶可导"且某一端点值较简单甚至为0的题目。

**例题：**设$f(x)$在$[0,2]$上二阶导数连续，且$f(1)=0$，当$x\in[0,2]$时，记$M=\max\{\vert f''(x)\vert\}$，证明$\vert\int_0^2f(x)\,\textrm{d}x\vert\leqslant\dfrac{1}{3}M$。