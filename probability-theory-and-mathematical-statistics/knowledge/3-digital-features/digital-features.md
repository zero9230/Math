---
author:
- Didnelpsun
title: 随机变量数字特征
---

有时候研究随机变量，其是没有具体的概率分布的，而对于这种类型我们只用研究其数学特征就可以了。

# 一维随机变量数字特征

## 数学期望

### 概念

设$X$是随机变量，$Y$是$X$的函数，$Y=g(X)$。

[**定义：**]{style="color: violet"}若$X$是离散型随机变量，其分布列为$p_i=P\{X=x_i\}$（$i=1,2,\cdots$），若级数$\sum\limits_{i=1}^\infty x_ip_i$绝对收敛，则称随机变量$X$的数学期望存在，并将级数和$\sum\limits_{i=1}^\infty x_ip_i$称为随机变量$X$的**数学期望**，记为$E(X)$或$EX$，即$EX=\sum\limits_{i=1}^\infty x_ip_i$，否则$X$数学期望不存在。（数学期望实际上是一种加权的合理平均值）

若级数$\sum\limits_{i=1}^\infty g(x_i)p_i$也绝对收敛，则称$Y=g(X)$的数学期望$E[g(X)]$存在，且$E[g(X)]=\sum\limits_{i=1}^\infty g(x_i)p_i$，否则$g(X)$的数学期望不存在。

[**定义：**]{style="color: violet"}若$X$是连续型随机变量，其概率密度为$f(x)$。若积分$\int_{-\infty}^{+\infty}xf(x)\,\textrm{d}x$绝对收敛，则称$X$的数学期望存在，且$EX=\int_{-\infty}^{+\infty}xf(x)\,\textrm{d}x$，否则$X$的数学期望不存在。

若积分$\int_{-\infty}^{+\infty}g(x)f(x)\,\textrm{d}x$绝对收敛，则称$g(X)$的数学期望存在，$E[g(X)]=\int_{-\infty}^{+\infty}g(x)f(x)\,\textrm{d}x$，否则$g(X)$的数学期望不存在。

### 性质

-   对任意常数$a_i$和随机变量$X_i$（$i=1,2,\cdots,n$）有$E\left(\sum\limits_{i=1}^na_iX_i\right)=\sum\limits_{i=1}^na_iEX_i$，其中$Ec=c$，$E(aX+c)=aEX+c$，$E(X\pm Y)=EX\pm EY$。

-   若$XY$相互独立，则$E(XY)=EX\cdot EY$，$E[g_1(X),g_2(Y)]=E[g_1(X)]\cdot E[g_2(Y)]$，一般若$X_1,X_2,\cdots,X_n$相互独立，则$E\left(\prod\limits_{i=1}^nX_i\right)=\prod\limits_{i=1}^nEX_i$，$E\left[\prod\limits_{i=1}^ng_i(X_i)\right]=\prod\limits_{i=1}^nE[g_i(X_i)]$。

## 方差标准差

### 概念

[**定义：**]{style="color: violet"}设$X$是随机变量，若$E[(X-EX)^2]$存在，则称$E[(X-EX)^2]$为$X$的**方差**，记为$D(X)$或$DX$，即$DX=E[(X-EX)^2]=E(X^2)-(EX)^2=EX^2-E^2X$。称$\sqrt{DX}$为$X$的**标准差**或**均方差**，记为$\sigma(X)$，称随机变量$X^*=\dfrac{X-EX}{\sqrt{DX}}$为$X$的**标准化随机变量**，此时$EX^*=0$，$DX^*=1$。

当$X$为离散型随机变量时$D(X)=\sum\limits_{i=1}^\infty[x_i-E(X)]^2p_i$，当$X$为连续型随机变量时$D(X)=\int_{-\infty}^{+\infty}[x-E(X)]^2f(x)\,\textrm{d}x$。

### 性质

-   $DX\geqslant0$，$E(X^2)=DX+(EX)^2\geqslant(EX)^2$。

-   $Dc=0$。

-   $D(aX+b)=a^2DX$。

-   $D(X\pm Y)=DX+DY\pm2Cov(X,Y)=DX+DY\pm2E[(X-EX)(Y-EY)]$。

-   若$XY$相互独立，则$D(aX\pm bY)=a^2DX+b^2DY$，一般若$X_1,X_2,\cdots,X_n$相互独立，$g_i(x)$为关于$x$的连续函数，则$D\left(\sum\limits_{i=1}^na_iX_i\right)=\sum\limits_{i=1}^na_i^2DX_i$，$D\left[\sum\limits_{i=1}^ng_i(X_i)\right]=\sum\limits_{i=1}^nD[g_i(X_i)]$。

## 切比雪夫不等式

[**定义：**]{style="color: violet"}若随机变量$X$的方差$DX$存在，则对任意$\epsilon>0$，有$P\{\vert X-EX\vert\leqslant\epsilon\}\leqslant\dfrac{DX}{\epsilon^2}$或$P\{\vert X-EX\vert<\epsilon\}\geqslant1-\dfrac{DX}{\epsilon^2}$。

$P\{\vert X-EX\vert\geqslant\epsilon\}$即代表变量与期望的差距大于某个值的概率，$DX$就是方差，$DX$越小证明波动越小，波动在$\epsilon$外的概率就越小，反之同理，而$\epsilon$越小，则$\dfrac{DX}{\epsilon^2}$越大，则代表$X$靠近期望$EX$的概率越大，反之同理。

证明：若$X$是连续型随机变量，令$\vert X-EX\vert\geqslant\epsilon=D$，则$P\{\vert X-EX\vert\geqslant\epsilon\}=\int\limits_Df(x)\,\textrm{d}x$，又该区间上$\vert X-EX\vert\geqslant\epsilon$，$\therefore\dfrac{(X-EX)^2}{\epsilon^2}\geqslant 1$。

$\displaystyle{\int\limits_Df(x)\,\textrm{d}x\leqslant\int\limits_D\dfrac{(X-EX)^2}{\epsilon^2}f(x)\,\textrm{d}x\leqslant\int_{-\infty}^{+\infty}\dfrac{(X-EX)^2}{\epsilon^2}f(x)\,\textrm{d}x}$

$=\displaystyle{\dfrac{1}{\epsilon^2}\int_{-\infty}^{+\infty}(X-EX)^2f(x)\,\textrm{d}x}=\dfrac{DX}{\epsilon^2}$。

可以用于估算随机变量在某范围中取值的概率，也可以证明某些收敛性问题（如数学统计章节中的一致性）。

**例题：**设$XY$为随机变量，数学期望都是2，方差分别为1和4，相关系数为0.5，尝试估计估计概率$P\{\vert X-Y\vert\geqslant6\}$。

解：令$Z=X-Y$，$\therefore EZ=E(X-Y)=EX-EY=2-2=0$，所以$P\{\vert X-Y\vert\geqslant6\}=P\{\vert X-Y-0\vert\geqslant6\}=P\{\vert Z-EZ\vert\geqslant6\}\leqslant\dfrac{DZ}{6^2}=\dfrac{3}{36}=\dfrac{1}{2}$。

## 常用分布数字特征

::: center
  分布                        分布列$p_i$或概率密度$f(x)$                                                              期望                    方差
  --------------------------- ------------------------------------------------------------------------------- ---------------------- ------------------------
  0-1分布$B(1,p)$             $P\{X=k\}=p^k(1-p)^{1-k}$，$k=0,1$                                                       $p$                   $p(1-p)$
  二项分布$B(n,p)$            $P\{X=k\}=C_n^kp^k(1-p)^{n-k}$，$k=0,\cdots,n$                                           $np$                 $np(1-p)$
  泊松分布$P(\lambda)$        $P\{X=k\}=\dfrac{\lambda^k}{k!}e^{-\lambda}$，$k=0,\cdots$                            $\lambda$               $\lambda$
  几何分布$G(p)$              $P\{X=k\}=(1-p)^{k-1}$，$p,k=1,\cdots$                                              $\dfrac{1}{p}$        $\dfrac{1-p}{p^2}$
  正态分布$N(\mu,\sigma^2)$   $f(x)=\dfrac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$，$x\in R$           $\mu$                 $\sigma^2$
  均匀分布$U(a,b)$            $f(x)=\dfrac{1}{b-a}$，$a<x<b$                                                     $\dfrac{a+b}{2}$     $\dfrac{(b-a)^2}{12}$
  指数分布$E(\lambda)$        $f(x)=\lambda e^{-\lambda x}$，$x>0$                                             $\dfrac{1}{\lambda}$   $\dfrac{1}{\lambda^2}$
:::

# 二维随机变量数字特征

## 数学期望

[**定义：**]{style="color: violet"}若$XY$为随机变量，$g(X,Y)$为$XY$的函数，如果$(X,Y)$为离散型随机变量，其联合分布为$p_{ij}=P\{X=x_i,Y=y_i\}$（$i,j=1,2,\cdots$），若级数$\sum\limits_i\sum\limits_jg(x_i,y_j)p_{ij}$绝对收敛，则$E[g(X,Y)]=\sum\limits_i\sum\limits_jg(x_i,y_j)p_{ij}$；如果$(X,Y)$为连续型随机变量，其概率密度为$f(x,y)$，若积分$\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}g(x,y)f(x,y)\,\textrm{d}x\textrm{d}y$绝对收敛，则定义$E[g(X,Y)]=\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}g(x,y)f(x,y)\,\textrm{d}x\textrm{d}y$。

## 协方差相关系数

### 概念

[**定义：**]{style="color: violet"}若随机变量$XY$的方差存在且$DX>0$，$DY>0$，则称$E[(X-EX)(Y-EY)]$为随机变量$X$与$Y$的**协方差**，记为$Cov(X,Y)$，即$Cov(X,Y)=E[(X-EX)(Y-EY)]=E(XY-XEY-YEX+EXEY)=E(XY)-EX\cdot EY$。

其中$E(XY)=\left\{\begin{array}{l}
    \sum\limits_i\sum\limits_jx_iy_jP\{X=x_i,Y=y_j\} \\
    \int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}xyf(x,y)\,\textrm{d}x\textrm{d}y
\end{array}\right.$。

从定义来看，方差$DX$就是自己的协方差$Cov(X,X)$。

协方差也可以标准化，已知$X^*=\dfrac{X-EX}{\sqrt{DX}}$，$Y^*=\dfrac{Y-EY}{\sqrt{DY}}$，则$Cov(X^*,Y^*)\\=Cov(\dfrac{X-EX}{\sqrt{DX}},\dfrac{Y-EY}{\sqrt{DY}})=\dfrac{Cov(X-EX,Y-EY)}{\sqrt{DX}\sqrt{DY}}\\=\dfrac{Cov(X,Y)-Cov(X,EY)-Cov(EX,Y)+Cov(EX,EY)}{\sqrt{DX}\sqrt{DY}}=\dfrac{Cov(X,Y)}{\sqrt{DXDY}}$。

[**定义：**]{style="color: violet"}$\rho_{XY}=\dfrac{Cov(X,Y)}{\sqrt{DX}\sqrt{DY}}$为随机变量$XY$的**相关系数**。若$\rho_{XY}=0$，则$XY$不相干，否则相关。

相关系数是描述随机变量$XY$之间的线性关系，绝对值越靠近1则越线性相关。相关系数为0不代表没有其之间没有关系，也可能存在非线性关系。

### 性质

-   对称性：$Cov(X,Y)=Cov(Y,X)$，$\rho_{XY}=\rho_{YX}$，$Cov(X,X)=DX$，$\rho_{XX}=1$。

-   线性性：$Cov(X,c)=0$，$Cov(aX+b,Y)=aCov(X,Y)$，$Cov(X_1+X_2,Y)=Cov(X_1,Y)+Cov(X_2,Y)$。一般$Cov\left(\sum\limits_{i=1}^na_iX_i,Y\right)=\sum\limits_{i=1}^nCov(X_i,Y)$。

-   若$XY$相互独立，则$Cov(X,Y)=0$。$D(\sum X)=\sum DX$。

-   $D(X\pm Y)=DX+DY\pm2Cov(X,Y)$。

-   相关系数有界性：$\vert\rho_{XY}\vert\leqslant1$。

-   线性关系下的相关系数：若$Y=aX+b$，则$\rho_{XY}=\left\{\begin{array}{ll}
            1, & a>0 \\
            -1, & a<0
        \end{array}\right.$。

**例题：**设随机变量$XY$的概率分布分别为：

::: center
  $X$   0     1
  ----- ----- -----
  $P$   1/3   2/3

  $Y$   -1    0     1
  ----- ----- ----- -----
  $P$   1/3   1/3   1/3
:::

且$P\{X^2=Y^2\}=1$。

(1)求随机变量$(X,Y)$的概率分布。

(2)求$Z=XY$的概率分布。

(3)求$XY$的相关系数$\rho_{XY}$。

(1)解：根据已知的题目条件可以知道对应的边缘概率分布：

::: center
             -1     0     1    $X$边缘
  --------- ----- ----- ----- ---------
      0                          1/3
      1                          2/3
   $Y$边缘   1/3   1/3   1/3      1
:::

又$P\{X^2=Y^2\}=1$，所以$P\{X^2\neq Y^2\}=0$，所以$X=\pm Y$，解得：

::: center
             -1     0     1    $X$边缘
  --------- ----- ----- ----- ---------
      0       0    1/3    0      1/3
      1      1/3    0    1/3     2/3
   $Y$边缘   1/3   1/3   1/3      1
:::

(2)解：$Z=XY$的可能取值为-1，0，1。所以根据表格：

$P\{Z=-1\}=P\{X=1,Y=-1\}=\dfrac{1}{3}$。

$P\{Z=1\}=P\{X=1,Y=1\}=\dfrac{1}{3}$。

$P\{Z=0\}=1-P\{Z=1\}-P\{Z=-1\}=\dfrac{1}{3}$。

(3)解：$\rho=\dfrac{Cov(X,Y)}{\sqrt{DX}\sqrt{DY}}=\dfrac{EXY-EXEY}{\sqrt{DX}\sqrt{DY}}=0$。

# 独立性与相关性

相关性是线性相关性。

-   独立则一定不相关，但是不相关不一定独立。

-   如果相关则一定不独立。

-   如果$(X,Y)$服从二维正态分布，则$XY$独立与$XY$不相关是充要条件。

## 分布判断独立性

都是通过分布情况判断独立性：

-   $F(x,y)=F_X(x)\cdot F_Y(y)$。

-   $f(x,y)=f_X(x)\cdot f_Y(y)$。

-   $P\{X=x_i,Y=y_j\}=P\{X=x_i\}\cdot P\{Y=y_j\}$。

## 数字特征判断相关性

通过相关系数$\rho_{XY}$来判断是否存在线性相关性。

$\rho_{XY}=0\Leftrightarrow Cov(X,Y)=0\Leftrightarrow E(XY)=EX\cdot EY\Leftrightarrow D(X\pm Y)=DX+DY$。

## 基本判别流程

当讨论随机变量$XY$的相关性独立性时：

1.  计算$Cov(X,Y)=E(XY)-EXEY$判断是否为0。

2.  当$Cov(X,Y)\neq0$时则$XY$相关不独立。

3.  当$Cov(X,Y)=0$时则$XY$不相关。

4.  若$P(XY)=P(X)P(Y)$则$XY$不相关但独立，否则不相关不独立。

**例题：**设随机变量$X$的概率密度为$f(x)=\dfrac{1}{2}e^{-\vert x\vert}$，$x\in(-\infty,+\infty)$。证明$X$与$\vert X\vert$不相关且不独立。

解：$Cov(X,Y)=EXY-EXEY=EX\vert X\vert-EXE\vert X\vert$。

其中$EX=\displaystyle{\int_{-\infty}^{+\infty}}x\cdot\dfrac{1}{2}e^{-\vert x\vert}\,\textrm{d}x=0$，$EXY=\displaystyle{\int_{-\infty}^{+\infty}}x\cdot\dfrac{1}{2}e^{-\vert x\vert}\vert x\vert\,\textrm{d}x=0$。

$\therefore\rho_{XY}=0$，从而$XY$不相关。

令$X\leqslant a$，则$P\{X\leqslant a\}$。而$P\{\vert X\vert\leqslant a\}=P\{-a\leqslant X\leqslant a\}<P\{X\leqslant a\}$。

$\therefore P\{X\leqslant a,\vert X\vert\leqslant a\}=P\{\vert X\vert\leqslant a\}$，又$P\{X\leqslant a\}<1$。

$\therefore P\{X\leqslant a,\vert X\vert\leqslant a\}\neq P\{\vert X\vert\leqslant a\}\cdot P\{\vert X\vert\leqslant a\}$，所以不独立。
