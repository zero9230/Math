---
author:
- Didnelpsun
title: 随机变量及其分布
---

# 一维随机变量

## 随机变量概念

[**定义：**]{style="color: violet"}随机变量就是其值会随机而定的变量。设随机试验$E$的样本空间$\Omega={\omega}$，如果对每一个$\omega$都有唯一的实数$X(\omega)$与之对应，并且对任意实数$x$，$\{\omega|X(\omega)\leqslant x,\omega\in\Omega\}$是随机事件，则称定义在$\Omega$上的实值单值函数$X(\omega)$为**随机变量**，记为随机变量$X$。

## 分布函数

### 概念

[**定义：**]{style="color: violet"}设$X$为随机变量，$x$为任意实数，称函数$F(x)=P\{X\leqslant x\}$（$x\in R$且取遍所有实数）为随机变量$X$的分布函数，或称$X$服从分布$F(x)$，记为$X\sim F(x)$。（随着$x$从$-\infty$到$+\infty$，$X(\omega)$到$\varnothing$到$\Omega$）

### 性质

同样是分布函数的充要条件：

-   $F(x)$是$x$的单调不减函数，即对任意实数$x_1<x_2$，有$F(x_1)\leqslant F(x_2)$。

-   $F(x)$是$x$的右连续函数，即对任意$x_0\in R$，有$\lim\limits_{x\to x_0^+}F(x)=F(x_0+0)=F(x_0)$。（左空心右实心）

-   $F(-\infty)=\lim\limits_{x\to-\infty}F(x)=0$，$F(+\infty)=\lim\limits_{x\to+\infty}F(x)=1$。

### 应用

-   $P\{X\leqslant a\}=F(a)$。

-   $P\{X<a\}=F(a-0)$。是指分布函数下该点左极限的概率值。

-   $P(X=a)=F(a)-F(a-0)$。$\because P\{X\leqslant a\}=P\{X<a\cup X=a\}=P\{X<a\}+P\{X=a\}$，$\therefore P\{X=a\}=P\{X\leqslant a\}-P\{X<a\}=F(a)-F(a-0)$。

# 一维离散型随机变量

[**定义：**]{style="color: violet"}若随机变量$X$只可能取有限个或可列各值$x_1,x_2,\cdots$，则称$X$为离散型随机变量。

## 分布律

[**定义：**]{style="color: violet"}$P\{X=x_i\}=p_i$，$i=1,2,\cdots$为$X$的**分布列**、**分布律**或**概率分布**，记为$X\sim p_i$。

概率分布常用表格或矩阵表示：

   $X$   $x_1$   $x_2$   $\cdots$
  ----- ------- ------- ----------
   $P$   $p_1$   $p_2$   $\cdots$

 或$X\sim\left(\begin{array}{ccc}
    x_1 & x_2 & \cdots \\
    p_1 & p_2 & \cdots
\end{array}\right)$。

## 性质

数列$\{p_i\}$是离散型随机变量的概率分布的充要条件是$p_i\geqslant0$（$i=1,2,\cdots$）且$\sum\limits_{i=1}^np_i=1$。

设离散型随机变量$X$的概率分布为$P\{X=x_i\}=p_i$，则$X$的分布函数$F(x)=P\{X\leqslant x\}=\sum\limits_{x_i\leqslant x}P\{X=x_i\}$，即离散型随机变量的分布律函数是一个左实右空的阶梯形函数。

$P\{X=x_i\}=P\{X\leqslant x_i\}-P\{X<x_i\}=F(x_i)-F(x_i-0)$，即某点的概率值为该点分布律值减去该点左极限的分布律值。

对实数轴上的任一集合$B$有$P\{X\in B\}=\sum\limits_{x_i\in B}P\{X=x_i\}$，特别地$P\{a<X\leqslant b\}=P\{X\leqslant b\}-P\{X\leqslant a\}=F(b)-F(a)$。

## 分布

### 0-1分布

[**定义：**]{style="color: violet"}若$X$的概率分布为$X\sim\left(\begin{array}{cc}
    1 & 0 \\
    p & 1-p
\end{array}\right)$，即$P\{X=1\}=p$，$P\{X=0\}=1-p$，则称$X$服从参数为$p$的0-1分布，记为$X\sim B(1,p)$（$0<p<1$）。

0-1分布基于一次伯努利试验，$X$也称为伯努利计数变量。

### 二项分布

[**定义：**]{style="color: violet"}如果$X$的概率分布为$P\{X=k\}=C_n^kp^k(1-p)^{n-k}$（$k=0,1,\cdots,n$，$0<p<1$），则称$X$服从参数为$(n,p)$的**二项分布**，记为$X\sim B(n,p)$。

二项分布基于$n$重伯努利试验。

二项分布的分布律计算，总共进行试验$n$次，已知成功的概率为$p$，若成功了$k$次，则$k$次成功概率为$p^k$，则失败次数为$n-k$，从而$n-k$失败概率为$(1-p)^{n-k}$，因为$n$次试验都是相互独立的，所以将成功的概率与失败的概率乘在一起。又在$n$次中成功$k$次就可以了，进行排列，所以还乘上$C_n^k$。

### 泊松分布

[**定义：**]{style="color: violet"}如果$X$的概率分布为$P\{X=k\}=\dfrac{\lambda^k}{k!}e^{-\lambda}$（$k=0,1,\cdots,n$，$\lambda>0$），则称$X$服从参数为$\lambda$的**泊松分布**，记为$X\sim P(\lambda)$。

泊松分布基于某场合某单位时间内源源不断的质点来流的个数$X=k$，$\lambda$代表质点流动到来的强度。也可以代表稀有事件发生的概率。

### 泊松定理

[**定理：**]{style="color: aqua"}设$X\sim B(n,p)$，当$n$较大，$p$较小时，近似$X\sim P(np)$。

即$P\{X=k\}=C_n^kp^k(1-p)^{n-k}\approx\dfrac{(np)^ke^{-np}}{k!}$。

### 几何分布

[**定义：**]{style="color: violet"}如果$X$的概率分布为$P\{X=k\}=(1-p)^{k-1}p$（$k=0,1,\cdots,n$，$0<p<1$），则称$X$服从参数为$p$的**几何分布**，记为$X\sim G(p)$。

几何分布与几何无关，代表的是$n$重伯努利试验首次成功就停止试验，试验次数可以为无穷。设$X$表示伯努利试验中事件$A$首次放生所需要的试验次数，则$X\sim G(p)$，其中$p=P(A)$。

从而根据意义，几何分布要求前$k-1$次都失败，从而概率为$(1-p)^{k-1}$，最后一次成功，所以再乘上$p$。

### 超几何分布

[**定义：**]{style="color: violet"}如果$X$的概率分布为$P\{X=k\}=\dfrac{C_M^kC_{N-M}^{n-k}}{C_N^n}$（$\max\{0,n-N+M\}\leqslant k\leqslant\min\{MM,n\}$，$M,N,n$为正整数且$M\leqslant N$，$n\leqslant N$，$k$为整数），则称$X$服从参数为$(n,N,M)$的**超几何分布**，记为$X\sim H(n,N,M)$。

超几何分布考的可能性很小，事件数就是古典概型的一个特例。

如有$N$件产品，其中$M$件正品，从而$N-M$件次品，任取$n$个，则取出$k$件正品的概率就是超几何分布。

## 分布函数

设$X$为随机变量，$x$为任意实数，函数$F(x)=P\{X\leqslant x\}$，$(-\infty<x<+\infty)$称为$X$的离散随机变量分布函数。

1.  $F(x)$是一个不减函数，随着$x$增大逐渐累积。

2.  $P\{a<X\leqslant b\}=F(b)-F(a)$。（$a$处被减掉了所以是空心的）

3.  $0\leqslant F(x)\leqslant1$，$F(-\infty)=0$，$F(+\infty)=1$。

4.  $P(X=k)=P(X\leqslant k)-P(X<k)$。

5.  $F(x)$是右连续。

通过性质四可有由离散型变量的分布函数推出离散型随机变量的分布律。

## 应用

**例题：**已知随机变量$X$的概率分布为：

      $X$           1                 2                  3
  ------------ ------------ --------------------- ----------------
   $P\{X=k\}$   $\theta^2$   $2\theta(1-\theta)$   $(1-\theta)^2$

且$P\{X\geqslant2\}=\dfrac{3}{4}$，求未知参数$\theta$与$X$的分布函数$F(x)$。

解：$\because P\{X\geqslant2\}=\dfrac{3}{4}$，$\therefore 2\theta(1-\theta)+(1-\theta)^2=\dfrac{3}{4}$，解得$\theta=\dfrac{1}{2}$，$-\dfrac{1}{2}$舍。

# 一维连续型随机变量

[**定义：**]{style="color: violet"}若随机变量$X$的分布函数可以表示为$F(x)=\int_{-\infty}^xf(t)\,\textrm{d}t$（$x\in R$且取遍所有实数），其中$f(x)$是非负可积函数，则$X$为**连续型随机变量**。

## 概率密度

[**定义：**]{style="color: violet"}若对于随机变量$X$的分布函数$F(x)$存在非负可积函数$f(x)$使得对于任意实数$x$都有$F(x)=\int_{-\infty}^xf(t)\,\textrm{d}t$，则$f(x)$称为$X$的**概率密度函数**，简称**概率密度**，记为$X\sim f(x)$。

## 性质

1.  改变$f(x)$有限各点的值$f(x)$仍是概率密度（因为单个点没有面积）。且$P(X=a)=0$。

2.  $f(x)$为某一随机变量$X$的概率密度的充分必要条件：$f(x)\geqslant0$，且\
    $\int_{-\infty}^{+\infty}f(x)\,\textrm{d}x=1$。

3.  若$X$为连续型随机变量，$X\sim f(x)$，则对任意实数$c$有$P\{X=c\}=0$。

4.  对实数轴上的任一集合$B$有$P\{X\in B\}=\int\limits_Bf(x)\,\textrm{d}x$，特别地$P\{a<X<b\}=P\{a\leqslant X<b\}=P\{a<X\leqslant b\}=P\{a\leqslant X\leqslant b\}=\int_a^bf(x)\,\textrm{d}x=F(b)-F(a)$。

## 分布

### 均匀分布

[**定义：**]{style="color: violet"}如果$X$的概率密度或分布函数分别为$f(x)=\left\{\begin{array}{ll}
    \dfrac{1}{b-a}, & a<x<b \\
    0, & \text{其他}
\end{array}\right.$，$F(x)=\left\{\begin{array}{ll}
    0, & x<a \\
    \dfrac{x-a}{b-a}, & a\leqslant x<b \\
    1, & x\geqslant b
\end{array}\right.$，则称$X$在区间$(a,b)$上服从**均匀分布**，记为$X\sim U(a,b)$。

几何概型在一维情况下就是几何分布。

若$X$在区间$I$上的任一子区间取值的概率与该子区间的长度成正比，则$X\sim U(a,b)$。

### 指数分布

[**定义：**]{style="color: violet"}如果$X$的概率密度或分布函数分别为$f(x)=\left\{\begin{array}{ll}
    \lambda e^{-\lambda x}, & x>0 \\
    0, & \text{其他}
\end{array}\right.$，$F(x)=\left\{\begin{array}{ll}
    1-e^{-\lambda x}, & x\geqslant0 \\
    0, & x<0 \\
\end{array}\right.$，则称$X$在区间$(a,b)$上服从参数为$\lambda$的**指数分布**，记为$X\sim E(\lambda)$。

指数分布中$\lambda$代表失效率，往往用来代表一个事物毁坏的过程，如灯泡毁坏。

[**定理：**]{style="color: aqua"}无记忆性：若$X$服从指数分布，则$P\{X>s+t|X>s\}=P\{X>t\}$。

即在指数分布下事情发生的概率与前面所经过的时间无关，如果$T$是某一元件的寿命，已知元件使用了$t$小时，它总共使用至少$s+t$小时的条件概率，与从开始使用时算起它使用至少$s$小时的概率相等。

证明：$P\{X>s+t|X>s\}=\dfrac{P\{X>s+t\}}{P\{X>s\}}=\dfrac{1-P\{X\leqslant s+t\}}{1-P\{X\leqslant s\}}$

$=\dfrac{1-F(s+t)}{1-F(x)}=\dfrac{1-(1-e^{-\lambda(s+t)})}{1-(1-e^{-\lambda s})}=\dfrac{e^{-\lambda(s+t)}}{e^{-\lambda s}}=e^{-\lambda t}=1-(1-e^{-\lambda t})$

$=1-F(t)=1-P\{X\leqslant t\}=P\{X>t\}$。

### 正态分布

[**定义：**]{style="color: violet"}如果$X$的概率密度为$f(x)=\dfrac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$（$-\infty<x<+\infty$，$-\infty<\mu<+\infty$，$\sigma>0$），则称$X$服从参数为$(\mu,\sigma^2)$的**正态分布**，称$X$为**正态变量**，记为$X\sim N(\mu,\sigma^2)$。

$f(x)$的图形关于$x=\mu$对称，即$f(\mu-x)=f(\mu+x)$，并在$x=\mu$处有唯一最大值$f(\mu)=\dfrac{1}{\sqrt{2\pi}\sigma}$。$\mu-\sigma$和$\mu+\sigma$为拐点。

当$\mu=0$，$\sigma=1$时的正态分布$N(0,1)=\dfrac{1}{\sqrt{2\pi}}e^{-\frac{x^2}{2}}$为**标准正态分布**，记为$\varPhi(x)$，$\varPhi(x)$为偶函数，$\varPhi(0)=\dfrac{1}{2}$，$\varPhi(-x)=1-\varPhi(x)$。

若$X\sim N(0,1)$，$P\{X>\mu_\alpha\}=\alpha$，则称$\mu_\alpha$为标准正态分布的**上侧$\alpha$分位数/上$\alpha$分位点**。

若$X\sim N(\mu,\sigma^2)$，则

-   $F(x)=P\{X\leqslant x\}=P\left\{\dfrac{X-\mu}{\sigma}\leqslant\dfrac{x-\mu}{\sigma}\right\}=\varPhi\left(\dfrac{x-\mu}{\sigma}\right)$。（标准化）

-   $F(\mu-x)+F(\mu+x)=1$。

-   $P\{a<X<b\}=\varPhi\left(\dfrac{b-\mu}{\sigma}\right)-\varPhi\left(\dfrac{a-\mu}{\sigma}\right)$。（标准化得到）

-   $aX+b\sim N(a\mu+b,a^2\theta^2)$（$a\neq0$）。

## 应用

**例题：**已知随机变量$X$的概率密度为$\left\{\begin{array}{ll}
    Ax, & 1<x<2 \\
    B, & 2\leqslant x<3 \\
    0, & \text{其他}
\end{array}\right.$，且$P\{1<X<2\}=P\{2<X<3\}$，求常数$AB$，分布函数$F(x)$以及概率$P\{2<X<4\}$。

解：由于归一性$\int_{-\infty}^{+\infty}f(x)\,\textrm{d}x=1$，$\therefore\int_1^2Ax\,\textrm{d}x+\int_2^2B\,\textrm{d}x=1$。

$\therefore\dfrac{3}{2}A+B=1$。又$P\{1<X<2\}=P\{2<X<3\}$。

$\therefore\int_1^2Ax\,\textrm{d}x=\int_2^3B\,\textrm{d}x$，即$\therefore\int_1^2Ax\,\textrm{d}x=\int_2^2B\,\textrm{d}x=\dfrac{1}{2}$，$A=\dfrac{1}{3}$，$B=\dfrac{1}{2}$。

$f(x)=\left\{\begin{array}{ll}
    \dfrac{1}{3}x, & 1<x<2 \medskip \\
    \dfrac{1}{2}, & 2\leqslant x<3 \\
    0, & \text{其他}
\end{array}\right.$，$\because F(x)=\int_{-\infty}^xf(t)\,\textrm{d}t$。

$\therefore F(x)=\left\{\begin{array}{ll}
    0, & x<1 \\
    \int_1^x\dfrac{1}{3}t\,\textrm{d}t=\dfrac{x^2}{6}-\dfrac{1}{6}, & 1\leqslant x<2 \medskip \\
    \int_1^2\dfrac{1}{3}x\,\textrm{d}x+\int_2^x\dfrac{1}{2}\,\textrm{d}x=\dfrac{1}{2}x-\dfrac{1}{2}, & 2\leqslant x<3 \\
    1, & x\geqslant3
\end{array}\right.$

# 一维随机变量函数分布

设$X$为随机变量，函数$y=g(x)$，则以随机变量$X$作为自变量的函数$Y=g(X)$也是随机变量，称为**随机变量$X$的函数**。

如$Y=aX^2+bX^+c$等等。

## 离散型

设$X$为离散型随机变量，其概率分布为$p_i=P\{X=x_i\}$（$i=1,2,\cdots$），则$X$的函数$Y=g(X)$也是离散型随机变量，其概率分布为$P\{Y=g(x_i)\}=p_i$（$i=1,2,\cdots$）。

即$Y\sim\left(\begin{array}{ccc}
    g(x_1) & g(x_2) & \cdots \\
    p_1 & p_2 & \cdots
\end{array}\right)$。

若有若干个$g(x_i)$相同，则合并为一项，并将对应概率相加作为$Y$取$g(x_i)$的概率。

离散型一维随机变量函数分布单独考的可能性很低。

**例题：**设$X$是仅可能取6个值的离散型随机变量，分布为：

   X    -2     -1     0      1      2      3
  --- ------ ------ ------ ------ ------ ------
   P   0.05   0.15   0.20   0.25   0.20   0.15

求$Y=2X+1$，$Z=X^2$的概率分布。

因为$Y=2X+1$是线性的，所以改变$X$变为$Y$，所对应的$P$不变：

   Y    -3     -1     1      3      5      7
  --- ------ ------ ------ ------ ------ ------
   P   0.05   0.15   0.20   0.25   0.20   0.15

对于$Z=X^2$是一个平方，导致$Z$的值有些是一样的，所以概率合在一起：

   Z    0      1      4      9
  --- ------ ------ ------ ------
   P   0.20   0.40   0.25   0.15

## 连续性

设$X$为离散型随机变量，其分布函数、概率密度为$F_X(x)$与$f_X(x)$，随机变量$Y=g(X)$也是$X$的函数，则$Y$的分布函数或概率密度可用分布函数法得到$F_Y(y)=P\{Y\leqslant y\}=P\{g(X)\leqslant y\}=\int_{g(X)\leqslant y}f_X(x)\,\textrm{d}x$。

若$F_Y(y)$连续，且除有限个点外，$F_Y'(y)$存在且连续，$Y$的概率密度为$f_Y(y)=F_Y'(y)$。

首先已知$X$的概率密度函数为$f_X(x)$，分布函数为$F_X(x)$，已知$Y=g(X)$，即$Y$对$X$的映射关系。现在要求$Y$的概率规律，即要求$Y$的概率密度$f_Y(y)$与分布函数$F_Y(y)$。

先求分布函数$F_Y(y)=P\{Y\leqslant y\}=P\{g(X)\leqslant y\}$，然后用$y$来表示$X$，这是连续性随机变量函数分布的重点。

即$X$在以$y$表示的一个区间上，$X\in I_y$，所以解得$Y$分布函数$\int_{I_y}f_X(x)\,\textrm{d}x$。

**例题：**设随机变量$X$的概率密度为$f_X(x)=\left\{\begin{array}{ll}
    1+x, & -1\leqslant x<0 \\
    1-x, & 0\leqslant x\leqslant1 \\
    0, & \text{其他}
\end{array}\right.$，求随机变量$Y=X^2+1$的分布函数。

解：求随机变量$Y=X^2+1$的分布函数即求$F_Y(y)=P\{Y\leqslant y\}=P\{X^2+1\leqslant y\}$。即将$X^2+1$与$y$的概率关系解出，即求曲线$X^2+1$与直线$y$的关系。

根据$X$的概率密度函数，所以只有$x\in [-1,1]$才有正概率，其他区间概率为0，即不能取，将$Y$的取值范围划在$[-1,1]$中。

又由$f_X(x)$的关系知道$Y$的函数，是在$[-1,1]$的属于$[1,2]$的抛物线。

当$y<1$时，$Y=X^2+1>1$恒成立，所以$X^2+1\leqslant y$不可能发生，概率为0，所以$F_Y(y)=0$。

当$y>2$时，$Y=X^2+1$在$X\in[-1,1]$时$Y\in[1,2]$，所以$X^2+1\leqslant y$必然成立，所以所以$F_Y(y)=1$。

当$1<y<2$时，解出$X^2+1\leqslant y$为$X=\pm\sqrt{y-1}$，所以$F_Y(y)=P\{-\sqrt{y-1}\leqslant X\leqslant\sqrt{y-1}\}=\int_{-\sqrt{y-1}}^{\sqrt{y-1}}f(x)\,\textrm{d}x=\int_{-\sqrt{y-1}}^01+x\,\textrm{d}x+\int_0^{\sqrt{y-1}}1-x\,\textrm{d}x=2\sqrt{y-1}-y+1$。

# 多维随机变量

## 概念

多维随机变量[**定义：**]{style="color: violet"}如果$X_1,X_2,\cdots,X_n$是定义在同一个样本空间上的$n$个随机变量，则称$(X_1,X_2,\cdots,X_n)$为**$n$维随机变量**或**$n$维随机向量**，$X_i$为第$i$个分量。

当$n=2$时，$(X,Y)$为**二维随机变量/二维随机向量**。

## 联合分布函数

[**定义：**]{style="color: violet"}对任意$n$个实数$x_1,x_2,\cdots,x_n$称为$n$元函数$F(x_1,x_2,\cdots,x_n)=P\{X_1\leqslant x_1,X_2\leqslant x_2,\cdots,X_n\leqslant x_n\}$为$n$为随机变量$(X_1,X_2,\cdots,X_n)$的**联合分布函数**。

当$n=2$时对任意的实数$xy$称二元函数$F(x,y)=P\{X\leqslant x,Y\leqslant y\}$为二维随机变量$(X,Y)$的**联合分布函数**，简称**分布函数**，记为$(X,Y)\sim F(x,y)$。

性质：

-   单调性：$F(x,y)$是$xy$的单调不减函数。

-   右连续性：$F(x,y)$在右边连续。

-   有界性：当$x$或$y$趋向负无穷时值为0，当$x$和$y$趋向正无穷时值为1。

-   非负性：对任意$x_1<x_2$，$y_1<y_2$有$P\{x_1<X\leqslant x_2,y_1<Y\leqslant y_2\}=F(x_2,y_2)-F(x_2,y_1)-F(x_1,y_2)+F(x_1,y_1)\geqslant0$。（由定义画图可知）

## 边缘分布函数

[**定义：**]{style="color: violet"}设二维随机变量$(X,Y)$的联合分布函数为$F(x,y)$，随机变量$X,Y$的分布函数$F_X(x)$与$F_Y(y)$分别称$(X,Y)$关于$X$与关于$Y$的**边缘分布函数**。

$F_X(x)=P\{X\leqslant x\}=P\{X\leqslant x,Y<+\infty\}=\lim\limits_{y\to+\infty}P\{X\leqslant x,Y\leqslant y\}=\lim\limits_{y\to+\infty}F(x,y)=F(x,+\infty)$。同理$F_Y(y)=F(+\infty,y)$。

求边缘分布函数的口诀：求谁不积谁，不积先定限，限内画条线，先交写下限，后交写上限。

即若求$x$则积$y$，然后根据$f(x,y)$联合概率密度的图形求$x$的取值区间。然后在$f(x,y)$联合概率密度共同的取值区间内画一条水平的线$y=y_0$（若求$y$）或垂直的线$x=x_0$（若求$x$），则从左到右从下到上先与所画线相交的区间边缘的线就是边缘概率密度的下限，后面相交的就是上限。最后将被积函数的联合概率密度加到中间就是最后的边缘分布函数。

## 条件分布函数

[**定义：**]{style="color: violet"}对于二维随机变量$(X，Y)$，可以考虑在其中一个随机变量取得可能的固定值的条件下，另一随机变量的概率分布，这样得到的$X$或$Y$的概率分布叫做**条件概率分布**，**简称条件分布**。

[**定理：**]{style="color: aqua"}条件概率密度=$\dfrac{\text{联合概率密度}}{\text{边缘概率密度}}$。

# 二维离散型随机变量

[**定义：**]{style="color: violet"}若二维随机变量$(X,Y)$只能取有限或可列对值$(x_1,y_1),(x_2,y_2),\cdots$则称$(X,Y)$为**二维离散型随机变量**。

## 联合分布律

[**定义：**]{style="color: violet"}$p_{ij}=P\{X=x_i,Y=y_j\}$，$i,j=1,2,\cdots$为$(X,Y)$的**分布律**或随机变量$X$和$Y$的**联合分布律**，记为$(X,Y)\sim p_{ij}$。

数列$\{p_{ij}\}$，$i,j=1,2,\cdots$是某一二维离散型随机变量的概率分布的充要条件是$p_{ij}\geqslant0$，$\sum\limits_{i=1}^\infty\sum\limits_{j=1}^\infty p_{ij}=1$。

[**定义：**]{style="color: violet"}若$p_{ij}$，$i,j=1,2,\cdots$为$(X,Y)$的概率分布，则$(X,Y)$的**联合分布函数**为$F(x,y)=P\{X\leqslant x,Y\leqslant y\}=\sum\limits_{x_i\leqslant x}\sum\limits_{y_j\leqslant y}p_{ij}$。

联合分布函数是以$(x,y)$为定点的左下角平面上$(X,Y)$所有可能取值的概率的和。

设$G$是平面上某个区域，则$P\{(X,Y)\in G\}=\sum\limits_{(x_i,y_j)\in G}p_{ij}$。

## 边缘分布律

[**定义：**]{style="color: violet"}对于同一个$x$值的所有$y$取值的概率的和，就是该$x$值的**边缘分布律**。同理对于同一个$y$值的所有$x$取值的概率的和，就是该$y$值的**边缘分布律**。

即$p_{i\cdot}=P\{X=x_i\}=\sum\limits_{j=1}^\infty P\{X=x_i,Y=y_j\}=\sum\limits_{j=1}^\infty p_{ij}$（$i=1,2,\cdots$）。

$p_{\cdot j}=P\{Y=y_i\}=\sum\limits_{i=1}^\infty P\{X=x_i,Y=y_j\}=\sum\limits_{i=1}^\infty p_{ij}$（$j=1,2,\cdots$）。

## 条件分布律

条件分布律类比随机事件概率中的条件概率。

[**定义：**]{style="color: violet"}如果$(X,Y)\sim p_{ij}$（$i,j=1,2,\cdots$），对固定的$j$，如果$p_{\cdot j}=P\{Y=y_j\}>0$，则称$P\{X=x_i|Y=y_j\}=\dfrac{P\{X=x_i,Y=y_j\}}{P\{Y=y_j\}}=\dfrac{p_{ij}}{p_{\cdot j}}$（$i=1,2,\cdots$）为$X$在$Y=y_j$条件下的**条件分布**。

同理[**定义：**]{style="color: violet"}$Y$在$X=x_i$条件下的**条件分布**为$P\{Y=y_j|X=x_i\}=\dfrac{p_{ij}}{p_{i\cdot}}$（$j=1,2,\cdots$）。

# 二维连续型随机变量

[**定义：**]{style="color: violet"}如果二维随机变量$(X,Y)$的联合分布函数$F(x,y)$可表示为$F(x,y)=\int_{-\infty}^x\int_{-\infty}^yf(u,v)\,\textrm{d}u\textrm{d}v$，（$(x,y)\int R^2$），其中$f(x,y)$为非负可积函数，则称$(X,Y)$为**二维连续型随机变量**，$f(x,y)$为$(X,Y)$的**概率密度**，记为$(X,Y)\sim f(x,y)$。

二元函数$f(x,y)$是概率密度的充要条件$f(x,y)\geqslant0$，$\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}f(x,y)\,\textrm{d}x\textrm{d}y$\
$=1$。

改变$f(x,y)$有限个点值（仍取非负值），$f(x,y)$仍是概率密度。

## 联合概率密度

[**定义：**]{style="color: violet"}设$(X,Y)$的联合分布函数为$F(x,y)$，概率密度为$f(x,y)$，则

-   $F(x,y)$为$(x,y)$的二元连续函数，且$F(x,y)=P\{X\leqslant x,Y\leqslant y\}=\int_{-\infty}^x\int_{-\infty}^xf(u,v)\,\textrm{d}u\textrm{d}v$。

-   设$G$为平面上某个区域，则$P\{(X,Y)\in G\}=\iint\limits_Gf(x,y)\,\textrm{d}x\textrm{d}y$。

-   若$f(x,y)$在点$(x,y)$处连续，则$\dfrac{\partial^2F(x,y)}{\partial x\partial y}=f(x,y)$。

-   若$F(x,y)$连续可导，则$(X,Y)$是连续型随机变量，则$\dfrac{\partial^2F(x,y)}{\partial x\partial y}$是其概率密度。

## 边缘概率密度

[**定义：**]{style="color: violet"}设$(X,Y)\sim f(x,y)$，则$X$的边缘分布函数为$P\{X\leqslant x\}=F_X(x)=F(-\infty,x)=\int_{-\infty}^x\left[\int_{-\infty}^{+\infty}f(u,v)\,\textrm{d}v\right]\textrm{d}u$，所以$X$为连续型随机变量，其概率密度$f_X(x)=\int_{-\infty}^{+\infty}f(x,y)\,\textrm{d}y$，称$f_X(x)$为$(X,Y)$关于$X$的**边缘概率密度**。同理$Y$也为连续型随机变量，关于$Y$的边缘分布函数为$P\{Y\leqslant y\}=F_Y(y)=\int_{-\infty}^y[\int_{-\infty}^{+\infty}f(x,y)\,\textrm{d}x]\textrm{d}y$，其概率密度为$f_Y(y)=\int_{-\infty}^{+\infty}f(x,y)\,\textrm{d}x$。

## 条件概率密度

[**定义：**]{style="color: violet"}设$(X,Y)\sim f(x,y)$，边缘概率密度$f_X(x)>0$，则称$f_{Y|X}(y|x)=\dfrac{f(x,y)}{f_X(x)}$为$Y$在$X=x$条件下的**条件概率密度**。同理$X$在$Y=y$条件下的条件概率密度为$f_{X|Y}(x|y)=\dfrac{f(x,y)}{f_Y(y)}$。

若$f_X(x)>0$，$f_Y(y)>0$，则有概率密度乘法公式$f(x,y)=f_X(x)f_{Y|X}(y|x)=f_Y(y)f_{X|Y}(x|y)$。

[**定义：**]{style="color: violet"}$Y$在$X=x$条件下的**条件分布函数**为$F_{Y|X}(y|x)=\int_{-\infty}^yf_{Y|X}(y|x)\,\textrm{d}y=\displaystyle{\int_{-\infty}^y\dfrac{f(x,y)}{f_X(x)}\textrm{d}y}$，同理$X$在$Y=y$条件下的条件分布函数为$F_{X|Y}(x|y)=$\
$\int_{-\infty}^xf_{X|Y}(x|y)\,\textrm{d}x=\displaystyle{\int_{-\infty}^x\dfrac{f(x,y)}{f_Y(y)}}\textrm{d}x$。

## 二维均匀分布

[**定义：**]{style="color: violet"}若$(X,Y)$的概率密度为$f(x,y)=\left\{\begin{array}{ll}
    \dfrac{1}{S_D}, & (x,y)\in D \\
    0, & \text{其他}
\end{array}\right.$，$S_D$为区域$D$的面积，则称$(X,Y)$在平面有界区域$D$上服从**均匀分布**。

二维均匀分布就是几何概型的二维情况。

## 二维正态分布

[**定义：**]{style="color: violet"}若$(X,Y)$的概率密度为：

$f(x,y)=\dfrac{1}{2\pi\sigma_1\sigma_2\sqrt{1-\rho^2}}\exp\left\{-\dfrac{1}{2(1-\rho^2)}\left[\left(\dfrac{x-\mu_1}{\sigma_1}\right)^2-2\rho\left(\dfrac{x-\mu_1}{\sigma_1}\right)\left(\dfrac{y-\mu_2}{\sigma_2}\right)+\left(\dfrac{y-\mu_2}{\sigma_2}\right)^2\right]\right\}$

其中$\mu_1,\mu_2\in R$，$\sigma_1,\sigma_2>0$，$-1<\rho<1$，则称$(X,Y)$服从参数为$\mu_1,\mu_2,\sigma_1^2,\sigma_2^2,\rho$的**二维正态分布**，记为$(X,Y)\sim N(\mu_1,\mu_2;\sigma_1^2,\sigma_2^2;\rho)$。此时：

-   $X\sim N(\mu_1,\sigma_1^2)$，$Y\sim N(\mu_2,\sigma_2^2)$，$\rho$为$X$与$Y$的相关系数，即$\rho=\dfrac{Cov(X,Y)}{\sqrt{DX}\sqrt{DY}}=\dfrac{Cov(X,Y)}{\sigma_1\sigma_2}$。

-   $X,Y$的条件分布都是正态分布。

-   $aX+bY$（$a\neq0$或$b\neq0$）服从正态分布。

-   $XY$相互独立的充要条件是$XY$不相关，即$\rho=0$。

# 随机变量独立性

## 概念

[**定义：**]{style="color: violet"}设随机变量$X,Y$的联合分布函数为$F(x,y)$，边缘分布函数为$F_X(x)$，$F_Y(y)$，若对任意实数$x$，$y$，有$P\{X\leqslant x,Y\leqslant y\}=P\{X\leqslant x\}P\{Y\leqslant y\}$，即$F(x,y)=F_X(x)F_Y(y)$，则称随机变量$X$和$Y$相互独立。即对于离散型随机变量$P\{X=x_i,Y=y_j\}=P\{X=x_i\}P\{Y=y_j\}$。对于连续型随机变量$f(x,y)=f_X(x)f_Y(y)$。

## 充要条件

若$X,Y$独立，则

-   对于二维离散型随机变量，$p_{ij}=p_{i\cdot}\cdot p_{\cdot j}$。

-   对于二维连续型随机变量，$f(x,y)=f_X(x)\cdot f_Y(y)$。

-   对于二维随机变量，$F(x,y)=F_X(x)\cdot F_Y(y)$。（联合分布函数等于各自边缘函数乘积）

## 性质

若$X,Y$独立，则$f(X)$与$g(Y)$也相互独立。

若对所有$x_1,x_2,\cdots,x_n$有$F(x_1,x_2,\cdots,x_n)=F_{X_1}(x_1)F_{X_2}(x_2)\cdots F_{X_n}(x_n)$，则$X_1,X_2,\cdots,X_n$相互独立。

若$X_1,X_2,\cdots,X_n$相互独立，其中任意$k$个随机变量也相互独立。

若$X_1,X_2,\cdots,X_n$相互独立，则其各自的函数$g_1(X_1)g_2(X_2)\cdots g_n(X_n)$也相互独立。

## 独立同分布运算

若$XY$相互独立，则：

1.  若$X\sim B(n,p)$，$Y\sim B(m,p)$，则$X+Y\sim B(n+m,p)$。

2.  若$X\sim P(\lambda_1)$，$Y\sim P(\lambda_2)$，则$X+Y\sim P(\lambda_1+\lambda_2)$。

3.  若$X\sim N(\mu_1,\sigma_1^2)$，$Y\sim N(\mu_2,\sigma_2^2)$，则$X+Y\sim N(\mu_1+\mu_2,\sigma_1^2+\sigma_2^2)$，$X-Y\sim N(\mu_1-\mu_2,\sigma_1^2+\sigma_2^2)$。

# 二维随机变量函数分布

[**定义：**]{style="color: violet"}设$X,Y$为随机变量，$g(x,y)$为二元函数，则以随机变量$X,Y$作为变量的函数$U=g(X,Y)$也是随机变量，称为**随机变量$X,Y$的函数**。

## 离散型

对于(离散型，离散型)随机变量函数分布也是离散型。

**例题：**将两封信投入3个信箱，设$X_1,X_2$分别表示第一个和第二个信箱投进的信的数量。

(1)$(X_1,X_2)$的联合分布，边缘分布并判断其独立性。

(2)在条件$X_2=1$下，$X_1$的条件分布。

(3)随机变量$Y_1=X_1+X_2$和$Y_2=X_1-X_2$的分布。

(1)解：因为该题目是二维离散型随机变量，所以分析：

                0     1     2    $X_1$边缘
  ----------- ----- ----- ----- -----------
       0       1/9   2/9   1/9      4/9
       1       2/9   2/9    0       4/9
       2       1/9    0     0       1/9
   $X_2$边缘   4/9   4/9   1/9       1

从而联合分布就是表格最中心的部分，边缘分布就是两边。

如$p_{11}=\dfrac{1}{9}\neq p_{1\cdot}p_{\cdot1}=\dfrac{4}{9}\dfrac{4}{9}=\dfrac{16}{81}$。所以$X_1X_2$不独立。

(2)解：$P\{X_1=0|X_2=1\}=\dfrac{P\{X_1=0,X_2=1\}}{P\{X_2=1\}}=\dfrac{p_{01}}{p_{\cdot1}}=\dfrac{2/9}{4/9}=\dfrac{1}{2}$。

$P\{X_1=1|X_2=1\}=\dfrac{P\{X_1=1,X_2=1\}}{P\{X_2=1\}}=\dfrac{p_{11}}{p_{\cdot1}}=\dfrac{2/9}{4/9}=\dfrac{1}{2}$。

$P\{X_1=2|X_2=1\}=\dfrac{P\{X_1=2,X_2=1\}}{P\{X_2=1\}}=\dfrac{p_{21}}{p_{\cdot1}}=\dfrac{0}{4/9}=0$。

(3)解：根据表格，$Y_1=X_1+X_2$的可能取值为0，1，2。

即$Y_1$的概率分布为$Y_1\sim\left(\begin{array}{ccc}
    0 & 1 & 2 \\
    \dfrac{1}{9} & \dfrac{4}{9} & \dfrac{4}{9}
\end{array}\right)$。

$Y_2=X_1-X_2$的可能取值为-2，-1，0，1，2.

$Y_2$的概率分布为$Y_2\sim\left(\begin{array}{ccccc}
    -2 & -1 & 0 & 1 & 2 \\
    \dfrac{1}{9} & \dfrac{2}{9} & \dfrac{1}{3} & \dfrac{2}{9} & \dfrac{1}{9}
\end{array}\right)$。

## 连续型

对于(连续型，连续型)随机变量函数分布也是连续型。可以采用分布函数法和卷积公式。

设$(X,Y)$的概率密度为$f(x,y)$，$Z=g(x,y)$，则$Z$的分布函数为$F_Z(z)=P(Z\leqslant z)=P(g(X,Y)\leqslant z)=\iint\limits_{g(x,y)\leqslant z}f(x,y)\,\textrm{d}x\textrm{d}y$，若$Z$仍然为联系型随机变量，则$Z$的概率密度为$f_Z(z)=F_Z'(z)$。

### 和的分布

[**定理：**]{style="color: aqua"}设$(X,Y)\sim f(x,y)$，则$Z=X+Y$的概率密度为$f_Z(z)=\int_{-\infty}^{+\infty}f(x,z-x)\,\textrm{d}x=\int_{-\infty}^{+\infty}f(z-y,y)\,\textrm{d}y$。

证明：利用定义法$F_Z(z)=P\{Z\leqslant z\}=P\{X+Y\leqslant z\}=\iint\limits_Df(x,y)\,\textrm{d}x\textrm{d}y$，$D=x+y\leqslant z$。

$=\int_{-\infty}^{+\infty}\textrm{d}x\int_{-\infty}^{z-x}f(x,y)\,\textrm{d}y$。又$f_Z(z)=F_Z'(z)$，$=(\int_{-\infty}^{+\infty}\textrm{d}x\int_{-\infty}^{z-x}f(x,y)\,\textrm{d}y)'_z$。

$=\int_{-\infty}^{+\infty}(\int_{-\infty}^{z-x}f(x,y)\,\textrm{d}y)'_z\textrm{d}x=\int_{-\infty}^{+\infty}f(x,z-x)\,\textrm{d}x$

### 差的分布

[**定理：**]{style="color: aqua"}设$(X,Y)\sim f(x,y)$，则$Z=X-Y$的概率密度为$f_Z(z)=\int_{-\infty}^{+\infty}f(x,x-z)\,\textrm{d}x=\int_{-\infty}^{+\infty}f(z+y,y)\,\textrm{d}y$。

### 积的分布

[**定理：**]{style="color: aqua"}设$(X,Y)\sim f(x,y)$，则$Z=XY$的概率密度为$f_Z(z)=\displaystyle{\int_{-\infty}^{+\infty}}\dfrac{1}{\vert x\vert}$\
$f\left(x,\dfrac{z}{x}\right)\,\textrm{d}x=\displaystyle{\int_{-\infty}^{+\infty}}\dfrac{1}{\vert y\vert}f\left(\dfrac{z}{y},y\right)\,\textrm{d}y$。

### 商的分布

[**定理：**]{style="color: aqua"}设$(X,Y)\sim f(x,y)$，则$Z=\dfrac{X}{Y}$的概率密度为$f_Z(z)=\displaystyle{\int_{-\infty}^{+\infty}}\vert y\vert f(yz,z)$\
$\,\textrm{d}y$。

这里不积$y$只积$x$，因为$x=zy$，所以积分简单从而只积$x$。

### 最值的分布

需要根据最值的定义得到$XY$的概率分布。设$(X,Y)$的联合分布函数为$F(x,y)$，$XY$的分布函数分别为$F_X(x)$和$F_Y(y)$，则$Z=\max(X,Y)$的分布函数为$F_{max}(z)=P\{\max(X,Y)\leqslant z\}=P\{X\leqslant z,Y\leqslant z\}=F(z,z)$，$Z=\min(X,Y)$的分布函数为$F_{min}(z)=P\{\min(X,Y)\leqslant z\}=P\{(X\leqslant z)\cup(Y\leqslant z)\}=P\{X\leqslant z\}+P\{Y\leqslant z\}-P\{X\leqslant z,Y\leqslant z\}=F_X(z)+F_Y(z)-F(z,z)$。

如$P\{\min(X,Y)\geqslant 1\}=P\{X\geqslant1,Y\geqslant1\}=P\{X\geqslant1\}P\{Y\geqslant1\}$。

### 卷积公式

积谁不换谁，换完求偏导。

当$XY$相互独立时，对于联合概率密度就能变成边缘概率密度的乘积，得到卷积公式[**定义：**]{style="color: violet"}

$f_Z(z)=\int_{-\infty}^{+\infty}f_X(x)f_Y(z-x)\,\textrm{d}x=\int_{-\infty}^{+\infty}f_X(z-y)f_Y(y)\,\textrm{d}y$。

$f_Z(z)=\int_{-\infty}^{+\infty}f_X(x)f_Y(x-z)\,\textrm{d}y=\int_{-\infty}^{+\infty}f_X(y+z)f_Y(y)\,\textrm{d}x$。

$f_Z(z)=\displaystyle{\int_{-\infty}^{+\infty}}\dfrac{1}{\vert x\vert}f_X(x)f_Y\left(\dfrac{z}{x}\right)\,\textrm{d}x=\displaystyle{\int_{-\infty}^{+\infty}}\dfrac{1}{\vert y\vert}f_X\left(\dfrac{z}{y}\right)f_Y(y)\,\textrm{d}y$。

$f_Z(z)=\int_{-\infty}^{+\infty}f_X(zy)f_Y(y)\,\textrm{d}y$。

**例题：**设随机变量$X,Y$相互独立，其概率密度分别为

$f_X(x)=\left\{\begin{array}{ll}
    e^{-x}, & x>0 \\
    0, & \text{其他} 
\end{array}\right.$，$f_Y(y)=\left\{\begin{array}{ll}
    2y, & 0<y<1 \\
    0, & \text{其他} 
\end{array}\right.$，

(1)求$(X,Y)$概率密度。

(2)求$Z=X+Y$的概率密度。

(1)解：因为$X,Y$相互独立，所以$f(X,Y)=f_X(x)\cdot f_Y(y)$。

$\therefore f(X,Y)=\left\{\begin{array}{ll}
    2e^{-x}y, & x>0\cap0<y<1 \\
    0, & \text{其他} 
\end{array}\right.$。

(2)解：

第一种方法是分布函数法，即使用定义来解决随机变量函数分布。

$F_Z(z)=P\{Z\leqslant z\}=P\{X+Y\leqslant z\}$。$XY$的联合分布图形是一个高为1长无穷的长方形。利用直线$x=x_0$与定义区间与$y\leqslant -x+z$对$z$进行范围讨论。

若$z<0$，$X+Y\leqslant z$不可能，即$D$与$y\leqslant-x+z$交集为空，所以$F_Z(z)=0$。

若$0\leqslant z<1$，则$y\leqslant -x+z$与区间相交于$(0,z)$和$(z,0)$，利用直线$x=x_0$对区间求积分$xy$上下限，$F_Z(z)=\int_0^z\textrm{d}x\int_0^{z-x}2e^{-x}y\,\textrm{d}y=z^2-2z-2e^{-z}+2$。

若$z>1$，则$y\leqslant -x+z$与区间交集是一个梯形，若先积$y$后积$x$，积分区间要分为两个部分来计算，所以改变积分顺序，先积$y$再积$x$，用$y=y_0$来计算积分上下限得到$F_Z(z)=\int_0^1\textrm{d}y\int_0^{z-y}2e^{-x}y\,\textrm{d}x=1-2e^{-z}$。

$\therefore f_Z(z)=F_Z'(z)=\left\{\begin{array}{ll}
    2z+2e^{-z}-2, & 0<z<1 \\
    2e^{-z}, & z>1 \\
    0, & \textbf{其他}
\end{array}\right.$。（等号在哪里无所谓）

第二种方法是卷积公式法。$f_Z(z)=\int_{-\infty}^{+\infty}f(x,z-x)\,\textrm{d}x=\int_{-\infty}^{+\infty}f_X(x)f_Y(z-x)\,\textrm{d}x$，现在已知$f_X(x)$，所以只用求$f_Y(z-x)$。

$\therefore f_Y(z-x)=\left\{\begin{array}{ll}
    2(z-x), & 0<z-x<1 \\
    0, & \textbf{其他}
\end{array}\right.$。

$f_X(x)f_Y(z-x)=\left\{\begin{array}{ll}
    2e^{-x}(z-x), & 0<x<z<x+1 \\
    0, & \text{其他}
\end{array}\right.$，所得的区域是梯形。

当$z<0$，则$z=z_0$与图形区间无交集，所以$f_Z(z)=0$。

当$0<z<1$时，$f_Z(z)=\int_0^z2e^{-x}(z-x)\,\textrm{d}x=2z+2e^{-z}-2$。

当$z>1$时，$f_Z(z)=\int_{z-1}^z2e^{-x}(z-x)\,\textrm{d}x=2e^{-z}$。

**例题：**设二维随机变量$(X,Y)$在矩形区域$D=\{(x,y)|0\leqslant x\leqslant 2,0\leqslant y\leqslant 1\}$上服从均匀分布，求边长为$X$和$Y$的矩形面积$Z$的概率密度。

解：$(X,Y)$在矩形区域$D$服从均匀分布，$\therefore f(x,y)=\left\{\begin{array}{ll}
    \dfrac{1}{2}, & (x,y)\in D \\
    0, & \text{其他}
\end{array}\right.$。

根据区间：$0\leqslant x\leqslant2$，$0\leqslant\dfrac{z}{x}=y\leqslant1$，$0\leqslant z\leqslant x\leqslant2$，所以区域就是底2高2的下三角。

又$Z=XY\sim f_Z(z)=\displaystyle{\int_{-\infty}^{+\infty}\dfrac{1}{\vert x\vert}f\left(x,\dfrac{z}{x}\right)\,\textrm{d}x}$，且$f\left(x,\dfrac{z}{x}\right)=\dfrac{1}{2}$。

当$0<z<2$时，$f_Z(z)=\displaystyle{\int_z^2}\dfrac{1}{x}\dfrac{1}{2}\,\textrm{d}x=\dfrac{1}{2}(\ln2-\ln z)$。

即$f_Z(z)=\left\{\begin{array}{ll}
    \dfrac{1}{2}(\ln2-\ln z), & 0<z<2 \\
    0, & \text{其他}
\end{array}\right.$。

## 混合型

对于(离散型，连续型)随机变量函数分布是连续型。可以采用全概率公式。

即使用全集分解思想解决，若$A$是离散型随机变量，$B$是连续型随机变量，则$P(B)=P(B\Omega)=P(BA_1\cup BA_2\cup\cdots)=P(BA_1)+P(BA_2)\cdots=P(A_1)P(B|A_1)+P(A_2)P(B|A_2)+\cdots$。这就是全概率公式。

设$X$的分布律为$P\{X=x_i\}=P_i$，$Y$为连续型随机变量，$Z=g(X,Y)$，则$Z$的分布函数为$F_Z(z)=P\{Z\leqslant z\}=P\{g(X,Y)\leqslant z\}=\sum\limits_iP\{X=x_i\}P\{g(X,Y)\leqslant z|X=x_i\}=\sum\limits_iP_iP\{g(x_i,Y)\leqslant z\}$。

**例题：**设随机变量$X$与$Y$相互独立，其中$X$概率分布为$\left(\begin{array}{cc}
    1 & 2 \\
    0.3 & 0.7
\end{array}\right)$，而$Y$的概率密度为$f(y)$，求随机变量$U=X+Y$的概率密度$g(u)$。

解：$G(u)=P\{U\leqslant u\}=P\{X+Y\leqslant u\}$。

$=P\{X+Y\leqslant u,\Omega\}=P\{X+Y\leqslant u,\{X=1\}\cup\{X=2\}\}=P\{(X+Y\leqslant u,X=1)\cup(X+Y\leqslant u,X=2)\}=P\{X+Y\leqslant u,X=1\}+P\{X+Y\leqslant u,X=2\}=P(X=1)P\{X+Y\leqslant u|X=1\}+P(X=2)P\{X+Y\leqslant u|X=2\}=0.3P\{Y\leqslant u-1|X=1\}+0.7P\{Y\leqslant u-2|X=2\}$，又$XY$相互独立，所以$X$的条件不影响$Y$的概率，$=P\{Y\leqslant u-1\}+P\{Y\leqslant u-2\}=0.3F_Y(u-1)+0.7F_Y(u-2)$。

$g(u)=G'(u)=0.3f_Y(u-1)\cdot1+0.7f_Y(u-2)\cdot1$。
