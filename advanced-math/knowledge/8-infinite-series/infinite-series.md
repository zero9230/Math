---
author:
- Didnelpsun
title: 无穷级数
---

# 常数项级数

## 概念

级数的经典悖论为芝诺悖论。

### 基本概念

[**定义：**]{style="color: violet"}给定义一个无穷数列$u_1,u_2,\cdots,u_n,\cdots$，将其各项用加号连起来的得到的记号$\sum\limits_{n=1}^\infty u_n$，即$\sum\limits_{n=1}^\infty u_n=u_1+u_2+\cdots+u_n+\cdots$叫做**无穷级数**，简称**级数**，其中$u_n$称为该级数的**通项**。

若$u_n$是常数而不是函数，则$\sum\limits_{n=1}^\infty u_n$就被称为**常数项无穷级数**，简称**常数项级数**。

$S_n=u_1+u_2+\cdots+u_n$称为级数的**部分和**，$\{S_n\}$是级数的**部分和数量**。

[**定义：**]{style="color: violet"}若$\lim\limits_{n\to\infty}S_n=S$，则$\sum\limits_{n=1}^\infty u_n$**收敛**，并称$S$为该收敛级数$\sum\limits_{n=1}^\infty u_n$的**和**；若$\lim\limits_{n\to\infty}S_n$不存在或为$\pm\infty$，则$\sum\limits_{n=1}^\infty u_n$**发散**。

研究$\sum\limits_{n=1}^\infty u_n$收敛还是发散，就是研究级数$\sum\limits_{n=1}^\infty u_n$的敛散性。

在级数$\sum\limits_{n=1}^\infty u_n$去掉前$m$项，得$\sum\limits_{n=m+1}^\infty u_n=u_{m+1}+u_{m+2}+\cdots$，称为级数$\sum\limits_{n=1}^\infty u_n$的**$m$项后余项**

### 性质

1.  线性性质：若级数$\sum\limits_{n=1}^\infty u_n$，$\sum\limits_{n=1}^\infty v_n$均收敛，且其和分别为$S$，$T$，则任给常数$a,b$，有$\sum\limits_{n=1}^\infty(au_n+bv_n)$也收敛，且其和为$aS+bT$，即$\sum\limits_{n=1}^\infty(au_n+bv_n)=a\sum\limits_{n=1}^\infty u_n+b\sum\limits_{n=1}^\infty v_n$。

2.  若级数$\sum\limits_{n=1}^\infty u_n$收敛，则其任意$m$项后余项$\sum\limits_{n=m+1}^\infty u_n$也收敛；若存在$m$项后余项$\sum\limits_{n=m+1}^\infty u_n$收敛，则$\sum\limits_{n=1}^\infty u_n$也收敛。

3.  级数收敛必要条件：若级数$\sum\limits_{n=1}^\infty u_n$收敛，则$\lim\limits_{n\to\infty}u_n=0$。

证明性质三：$u_n=S_n-S_{n-1}$，所以$\lim\limits_{n\to\infty}=\lim\limits_{n\to\infty}(S_n-S_{n-1})=\lim\limits_{n\to\infty}S_n-\lim\limits_{n\to\infty}S_{n-1}=S-S=0$。极限为0不一定收敛。

## 级数敛散性判别

### 正项级数

#### 概念

[**定义：**]{style="color: violet"}若通项$u_n\geqslant0$，$n=1,2,\cdots$，则$\sum\limits_{n=1}^\infty u_n$为**正项级数**。

#### 收敛原则

[**定理：**]{style="color: aqua"}正项级数$\sum\limits_{n=1}^\infty u_n$收敛的充要条件是其部分和数列$\{S_n\}$有界。（某一函数在固定区间内变化率是有界的，则变化范围是有界的）

证明：必要性：由于$u_n\geqslant0$，$\therefore S_n=u_1+u_2+\cdots+u_n\geqslant0$，且$S_1\leqslant S_2\leqslant\cdots\leqslant S_n\leqslant\cdots$，$\{S_n\}$单调不减且下界为0。当$\sum\limits_{n=1}^\infty u_n$收敛时，$\lim\limits_{n\to\infty}S_n$存在，则$\{S_n\}$必有上界。有上界下界则$\{S_n\}$有界。（某一函数在固定区间内变化率是有界的，则变化范围是有界的）

充分性：由于$\{S_n\}$单调不减，所以根据单调有界准则，$\{S_n\}$收敛，即$\lim\limits_{n\to\infty}S_n$存在，于是$\sum\limits_{n=1}^\infty u_n$收敛。

基本就是使用放缩法判断是否有界。

[**定理：**]{style="color: aqua"}等比级数（几何级数）：$\sum\limits_{n=1}^\infty\dfrac{1}aq^{n-1}\left\{\begin{array}{l}
    \vert q\vert<1, \text{收敛} \\
    \vert q\vert\geqslant 1, \text{发散}
\end{array}\right.$。

**例题：**判断级数$\sum\limits_{n=1}^\infty\dfrac{1}{\sqrt{n}}$的敛散性。

解：$S_n=1+\dfrac{1}{\sqrt{2}}+\dfrac{1}{\sqrt{3}}+\cdots+\dfrac{1}{\sqrt{n}}>n\dfrac{1}{\sqrt{n}}=\sqrt{n}$，当$n\to\infty$时$\sqrt{n}\to\infty$，无上界所以发散。

#### 比较判别法

[**定理：**]{style="color: aqua"}给出两个正项级数$\sum\limits_{n=1}^\infty u_n$，$\sum\limits_{n=1}^\infty v_n$，若从某项开始有$u_n\leqslant v_n$成立，则：若$\sum\limits_{n=1}^\infty v_n$收敛，则$\sum\limits_{n=1}^\infty u_n$也收敛；若$\sum\limits_{n=1}^\infty u_n$发散，则$\sum\limits_{n=1}^\infty v_n$也发散。

即大的收敛小的也收敛，小的发散大的也发散。

**例题：**判断调和级数$\sum\limits_{n=1}^\infty\dfrac{1}{n}$的敛散性。

解：$\because x>0$，$x>\ln(1+x)$，$\therefore\dfrac{1}{n}>\ln\left(1+\dfrac{1}{n}\right)$。

又对于$\ln\left(1+\dfrac{1}{n}\right)=\ln\dfrac{n+1}{n}=\ln(n+1)-\ln n$。

$S_n=\ln\dfrac{2}{1}+\ln\dfrac{3}{2}+\cdots+\ln\dfrac{n+1}{n}=\ln2-\ln1+\ln3-\ln2+\cdots+\ln(n+1)-\ln n=\ln(n+1)$。当$\ln(n+1)$在$n\to\infty$时，$S_n\to\infty$。

所以$\sum\limits_{n=1}^\infty\ln\left(1+\dfrac{1}{n}\right)$发散，则$\sum\limits_{n=1}^\infty\dfrac{1}{n}$也发散。

[**定理：**]{style="color: aqua"}$p$级数：$\sum\limits_{n=1}^\infty\dfrac{1}{n^p}\left\{\begin{array}{l}
    p>1, \text{收敛} \\
    p\leqslant1, \text{发散}
\end{array}\right.$。

#### 比较判别法极限性质

是比较判别法的推论，利用极限的阶数来比较。

给出两个正项级数$\sum\limits_{n=1}^\infty u_n$，$\sum\limits_{n=1}^\infty v_n$，$v_n\neq0$，且$\lim\limits_{n\to\infty}\dfrac{u_n}{v_n}=A$：

1.  若$A=0$，则当$\sum\limits_{n=1}^\infty v_n$收敛时，$\sum\limits_{n=1}^\infty u_n$也收敛。

2.  当$A=+\infty$，当$\sum\limits_{n=1}^\infty v_n$发散时，$\sum\limits_{n=1}^\infty u_n$也发散。

3.  若$0<A<+\infty$，则$\sum\limits_{n=1}^\infty v_n$与$\sum\limits_{n=1}^\infty u_n$具有相同敛散性。

**例题：**判断$\sum\limits_{n=1}^\infty\left(\dfrac{1}{n}-\sin\dfrac{1}{n}\right)$敛散性。

解：令$\dfrac{1}{n}=x$，$n\to\infty$所以$x\to0^+$。当$x\to0^+$，$x-\sin x\sim\dfrac{1}{6}x^3$。

$\therefore\lim\limits_{n\to\infty}\dfrac{\dfrac{1}{n}-\sin\dfrac{1}{n}}{\dfrac{1}{n^3}}=\dfrac{1}{6}\neq0$，所以$\dfrac{1}{n}-\sin\dfrac{1}{n}$与$\dfrac{1}{n^3}$具有相同敛散性。

根据$p$级数定理，$p=3>1$，所以$\sum\limits_{n=1}^\infty\left(\dfrac{1}{n}-\sin\dfrac{1}{n}\right)$收敛。

#### 比值判别法

也称为达朗贝尔判别法。根据自己的通项的商进行比较。

[**定理：**]{style="color: aqua"}给出一正项级数$\sum\limits_{n=1}^\infty u_n$，若$\lim\limits_{n\to\infty}\dfrac{u_{n+1}}{u_n}=\rho$，则：若$\rho<1$，则$\sum\limits_{n=1}^\infty u_n$收敛；若$\rho>1$，则$\sum\limits_{n=1}^\infty u_n$发散。

[注意：]{style="color: orange"}$\rho=1$时无法根据此判断$\sum\limits_{n=1}^\infty u_n$敛散性，如$\sum\limits_{n=1}^\infty\dfrac{1}{n}$发散，但$\sum\limits_{n=1}^\infty\dfrac{1}{n^2}$收敛。

适用于含有$a^n$，$n!$，$n^n$的通项。

**例题：**判断级数$\sum\limits_{n=1}^\infty\dfrac{\vert a\vert^nn!}{n^n}$的敛散性，其中$a$为非零常数。

解：记$u_n=\dfrac{\vert a\vert^nn!}{n^n}$，$\lim\limits_{n\to\infty}\dfrac{u_{n+1}}{u_n}=\vert a\vert\lim\limits_{n\to\infty}\left(\dfrac{n}{n+1}\right)^n=\vert a\vert e^{\lim\limits_{n\to\infty}n\ln\frac{n}{n+1}}=\vert a\vert e^{\lim\limits_{n\to\infty}n(\frac{n}{n+1}-1)}=\vert a\vert e^{\lim\limits_{n\to\infty}(\frac{-n}{n+1}-1)}=\vert a\vert e^{-1}=\dfrac{\vert a\vert}{e}$。

若$0<\vert a\vert<e$，所以收敛；若$\vert a\vert>e$，所以发散；若$\vert a\vert=e$，则回代得到比值$e\left(\dfrac{n}{n+1}\right)^n=\dfrac{e}{(1+\dfrac{1}{n})^n}\to1^+$，且$u_1=e$，$\therefore u_n>u_1>0$，所以发散。

#### 根值判别法

也称为柯西判别法。

[**定理：**]{style="color: aqua"}给出正项级数$\sum\limits_{n=1}^\infty u_n$，若$\lim\limits_{n\to\infty}\sqrt[n]{u_n}=\rho$，则若$\rho<1$，则$\sum\limits_{n=1}^\infty u_n$收敛；若$\rho>1$，则$\sum\limits_{n=1}^\infty u_n$发散。

适用于含有$a^n$，$n^n$的通项。

同理$\rho=1$也会失效。

**例题：**判断级数$\sum\limits_{n=1}^\infty\left(n\sin\dfrac{1}{n}\right)^{n^3}$的敛散性。

解：记$u=\left(n\sin\dfrac{1}{n}\right)^{n^3}$，则$\lim\limits_{n\to\infty}\sqrt[n]{u_n}=\lim\limits_{n\to\infty}\left(n\sin\dfrac{1}{n}\right)^{n^2}=e^{\lim\limits_{n\to\infty}n^(n\sin\frac{1}{n}-1)}=e^{\lim\limits_{n\to\infty}\dfrac{\sin\frac{1}{n}-\frac{1}{n}}{\frac{1}{n^3}}}=e^{-\frac{1}{6}}<1$，所以收敛。

### 交错级数

#### 概念

[**定义：**]{style="color: violet"}若级数各项**正负相间**出现，则这样的级数是**交错级数**，一般写为$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n=u_1-u_2+u_3-u_4+\cdots+(-1)^{n-1}u_n+\cdots$，其中$u_n>0$。

#### 莱布尼兹判别法

[**定义：**]{style="color: violet"}给出一交错级数$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n$，$u_n>0$，$n=1,2,\cdots$，若$\{u_n\}$**单调不增**$u_n\geqslant u_{n+1}$且$\lim\limits_{n\to\infty}=0$，则该级数收敛。

**例题：**判断交错调和级数$\sum\limits_{n=1}^\infty(-1)^{n-1}\dfrac{1}{n}$的敛散性。

解：$\because\lim\limits_{n\to\infty}u_n=\lim\limits_{n\to\infty}\dfrac{1}{n}=0$。

且$\dfrac{1}{n}>\dfrac{1}{n+1}$，所以级数收敛。

**例题：**判断级数$\sum\limits_{n=1}^\infty\sin(\pi\sqrt{n^2+a^2})$的敛散性，其中$a$为非零常数。

解：$\because\sin(\alpha+n\pi)=(-1)^n\sin\alpha$。$\therefore\sin(\pi\sqrt{n^2+a^2})=$

$\sin(\pi\sqrt{n^2+a^2-n\pi+n\pi})=(-1)^n\sin\left(\dfrac{a^2\pi}{\sqrt{n^2+a^2}+n}\right)$。

记$u_n=\sin\left(\dfrac{a^2\pi}{\sqrt{n^2+a^2}+n}\right)$，又$n\to\infty$时$\dfrac{a^2\pi}{\sqrt{n^2+a^2}+n}\to0^+$且单调不增，$\sin x$在$x\to0^+$时也是单调函数，所以$\lim\limits_{n\to\infty}u_n=0$且单调不增。

所以收敛。

**例题：**判断级数$\sum\limits_{n=1}^\infty(-1)^n\dfrac{\ln(1+n)}{1+n})$的敛散性。

解：$\lim\limits_{n\to\infty}u_n=\lim\limits_{n\to\infty}\dfrac{\ln(1+n)}{1+n}=\lim\limits_{x\to+\infty}\dfrac{\ln(1+x)}{1+x}=\lim\limits_{x\to+\infty}\dfrac{1}{1+x}=0$。

对$\dfrac{\ln(1+n)}{1+n})$进行比较有些麻烦，所以令$f(x)=\dfrac{\ln(1+x)}{1+x})$。

$f'(x)=\dfrac{1-\ln(1+x)}{(1+x)^2}$，当$x\to+\infty$时，$f'(x)<0$，$\{u_n\}$单调减少，所以收敛。

### 任意项级数

#### 概念

[**定义：**]{style="color: violet"}若级数$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n$各项可为正可为负，可为零，则这种级数就是**任意项级数**。

给任意项级数每一项加上绝对值$\sum\limits_{n=1}^\infty(-1)^{n-1}\vert u_n\vert$，就得到了正项级数，称为原级数的**绝对值级数**。

#### 绝对收敛

[**定义：**]{style="color: violet"}设$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n$为任意项级数，若$\sum\limits_{n=1}^\infty(-1)^{n-1}\vert u_n\vert$收敛，则称$\sum\limits_{n=1}^\infty$\
$(-1)^{n-1}u_n$**绝对收敛**。

#### 条件收敛

[**定义：**]{style="color: violet"}设$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n$为任意项级数，若$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n$收敛，但$\sum\limits_{n=1}^\infty(-1)^{n-1}$\
$\vert u_n\vert$发散，则称$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n$**条件收敛**。

[**定理：**]{style="color: aqua"}若$\sum\limits_{n=1}^\infty(-1)^{n-1}\vert u_n\vert$收敛，则$\sum\limits_{n=1}^\infty(-1)^{n-1}u_n$必收敛。（绝对收敛则收敛）

[**定理：**]{style="color: aqua"}收敛级数的项任意加括号后所得的新级数仍收敛，且其和不变。

[**定理：**]{style="color: aqua"}若原级数绝对收敛，不论将其项如何排列，则所得的新级数也收敛，且其和不变。（绝对收敛的级数具有可交换性）

**例题：**若级数$\sum\limits_{n=1}^\infty u_n$收敛，则下面级数必收敛的是()。

$A.\sum\limits_{n=1}^\infty(-1)\dfrac{u_n}{n}$$B.\sum\limits_{n=1}^\infty u_n^2$$C.\sum\limits_{n=1}^\infty(u_{2n-1}-u_{2n})$$D.\sum\limits_{n=1}^\infty(u_n+u_{n+1})$

解：对于$A$，取$u_n=(-1)^n\dfrac{1}{\ln n}$，则原来$\dfrac{u_n}{n}=(-1)^n\dfrac{1}{\ln n}$收敛，但是乘上$(-1)^n$就不一定收敛，得到$\dfrac{1}{n\ln n}$。

[**定理：**]{style="color: aqua"}广义$p$级数：$\sum\limits_{n=2}^\infty\dfrac{1}{n(\ln n)^p}\left\{\begin{array}{l}
    p>1, \text{收敛} \\
    p\leqslant1, \text{发散}
\end{array}\right.$。（$n=1$无意义，从$n=2$开始不影响其敛散性）

所以$A$发散。

对于$B$，取$u_n=(-1)^n\dfrac{1}{\sqrt{n}}$，则$u_n^2=\dfrac{1}{n}$，调和级数不收敛。

对于$C$，取$u_n=(-1)^{n-1}\dfrac{1}{n}$，则得到$u_{2n-1}-u_{2n}=\dfrac{1}{n}$，调和级数不收敛。

对于$D$，由于$u_n$收敛，则$u_{n+1}$也收敛，所以相加也收敛，选$D$。

[**定理：**]{style="color: aqua"}若$u_n^2$收敛，则$\dfrac{u_n}{n}$绝对收敛。

证明：因为不等式$\vert a\vert\vert b\vert\leqslant\dfrac{\vert a\vert^2+\vert b\vert^2}{2}$，$\therefore0\leqslant\vert u_n\dfrac{1}{n}\vert\leqslant\dfrac{u_n^2+\dfrac{1}{n^2}}{2}$。

且$u_n^2$收敛，则$\dfrac{u_n^2+\dfrac{1}{n^2}}{2}$也收敛，根据性质得证。

# 幂级数

## 概念

### 定义

[**定义：**]{style="color: violet"}设函数列$\{u_n(x)\}$定义在区间$I$上，称$u_1(x)+u_2(x)+\cdots+u_n(x)+\cdots$为定义在区间$I$上的**函数项级数**，记为$\sum\limits_{n=1}^\infty u_n(x)$，当$x$取确定的值$x_0$时，$\sum\limits_{n=1}^\infty$成为常数项级数$\lim\limits_{n=1}^\infty u_n(x_0)$。

[**定义：**]{style="color: violet"}若$\sum\limits_{n=1}^\infty u_0(x)$的一般项$u_0(x)$为$n$次幂函数，则称$\sum\limits_{n=1}^\infty u_0(x)$为**幂级数**，是一种常用的函数项级数，一般形式为$\sum\limits_{n=0}^\infty a_n(x-x_0)^n=a_0+a_1(x-x_0)+a_2(x-x_0)^2+\cdots+a_n(x-x_0)^n+\cdots$，其标准形式为$\sum\limits_{n=0}^\infty a_nx^n=a_0+a_1x+a_2x^2+\cdots+a_nx^x+\cdots$，其中$a_n$（$n=0,1,2,\cdot$）为**幂级数的系数**。

幂级数也称为泰勒级数，与泰勒展开式一样的结构。

[**定义：**]{style="color: violet"}若给定$x_0\in I$，有$\sum\limits_{n=1}^\infty u_0(x)$收敛，则称点$x_0$为幂级数$\sum\limits_{n=1}^\infty u_0(x)$的**收敛点**；若给定$x_0\in I$，有$\sum\limits_{n=1}^\infty u_0(x)$发散，则点$x_0$为幂级数$\sum\limits_{n=1}^\infty u_0(x)$的**发散点**。

### 阿贝尔定理

[**定义：**]{style="color: violet"}当幂级数$\sum\limits_{n=0}^\infty a_nx^n$在点$x=x_1$（$x_1\neq0$）处收敛时，对于满足$\vert x\vert<\vert x_1\vert$的一切$x$，幂级数**绝对收敛**；当幂级数$\sum\limits_{n=0}^\infty a_nx^n$在$x=x_2$（$x_2\neq0$）处发散时，对于满足$\vert x\vert>\vert x_2\vert$的一切$x$，幂级数**发散**。

所以一定存在一个点$R$，在$\vert x\vert<\vert R\vert$中绝对收敛，在$\vert x\vert>\vert R\vert$中发散，$R$称为**收敛半径**。对于点$\pm R$需要代入幂级数变成常数项级数进行计算，判别其敛散性。

### 收敛域

[**定义：**]{style="color: violet"}函数项级数$\sum\limits_{n=1}^\infty u_0(x)$的所有收敛点的集合就是其**收敛域**。

#### 具体型

收敛域的求法：

1.  若$\lim\limits_{n\to\infty}\left\vert\dfrac{a_{n+1}}{a_n}\right\vert=\rho$，则$\sum\limits_{n=0}^\infty a_nx^n$收敛半径$R$的表达式为$\left\{\begin{array}{ll}
            \dfrac{1}{\rho}, & \rho\neq0 \\
            +\infty, & \rho=0 \\
            0, & \rho=+\infty
        \end{array}\right.$。

2.  开区间$(-R,R)$为幂级数$\sum\limits_{n=0}^\infty a_nx^n$的收敛区间。

3.  代入$R$判断该点的敛散性，最后组合得到收敛域。

但是这种方法有一点不方便，如若只知道$a_n$和$a_{n+2}$的关系则求$\rho=\dfrac{1}{R}$比较麻烦。

收敛域的统一求法：

1.  取绝对值$\vert u_0(x)\vert\geqslant0$，从而可以使用正项级数的判别法。

2.  根据比值判别法或根值判别法，求$\lim\limits_{n\to\infty}\dfrac{\vert u_{n+1}(x)\vert}{\vert u_n(x)\vert}=\rho$或$\lim\limits_{n\to\infty}\sqrt[n]{\vert u_n(x)\vert}=\rho$，令其小于1，得到收敛区间$x\in(a,b)$。

3.  单独讨论$x=a$，$x=b$处的敛散性，得到收敛域。

**例题：**求幂级数$\sum\limits_{n=1}^\infty\dfrac{x^n}{n}$的收敛域。

解：令$\vert u_n(x)\vert=\left\vert\dfrac{x^n}{n}\right\vert$。由于含有$x^n$，所以使用比值判别法。

$\therefore\lim\limits_{n\to\infty}\dfrac{\vert u_{n+1}(x)\vert}{\vert u_n(x)\vert}=\lim\limits_{x\to\infty}\dfrac{\vert x^{n+1}\vert}{n+1}\dfrac{n}{\vert x^n\vert}=\lim\limits_{n\to\infty}\dfrac{n}{n+1}\vert x\vert=\vert x\vert$。

令其小于1，即$\vert x\vert<1$，$-1<x<1$。

当$x=-1$时，$\sum\limits_{n=1}^\infty(-1)^\dfrac{1}{n}$收敛。当$x=1$，$\sum\limits_{n=1}^\infty\dfrac{1}{n}$发散。

所以$x$收敛域为$[-1,1)$。

#### 抽象型

[**定理：**]{style="color: aqua"}根据阿贝尔定理，已知$\lim\limits_{n=0}^\infty a_0(x-x_0)^n$在某点$x_1$（$x_1\neq x_0$）的敛散性，确定该幂级数的收敛半径可分为三种情况：

1.  若在$x_1$处收敛，则收敛半径$R\geqslant\vert x_1-x_0\vert$。

2.  若在$x_1$处发散，则收敛半径$R\leqslant\vert x_1-x_0\vert$。

3.  [注意：]{style="color: orange"}若在$x_1$处条件收敛，则$R=\vert x_1-x_0\vert$。

[**定理：**]{style="color: aqua"}已知$\sum a_n(x-x_1)^n$的敛散性，讨论$\sum b_n(x-x_2)^m$的敛散性：

1.  $(x-x_1)^n$与$(x-x_2)^m$的转换一般通过初等变形来完成，包括平移收敛区间；提出或乘以因式$(x-x_0)^k$等。

2.  $a_n$与$b_n$的转换一般通过微积分变形来完成，包括对级数逐项求导；对级数逐项积分等。

3.  以下三种情况，级数收敛半径不变，收敛域要具体代入点讨论：

    1.  对级数提出或乘以因式$(x-x_0)^k$或进行平移等，收敛半径不变。

    2.  对级数逐项求导，收敛半径不变，收敛域可能缩小。

    3.  对级数逐项积分，收敛半径不变，收敛域可能扩大。

**例题：**设$\sum\limits_{n=1}^\infty a_n(x+1)^n$在点$x=1$处条件收敛，则幂级数$\sum\limits_{n=1}^\infty na_n(x-1)^n$在点$x=2$处()。

$A.$绝对收敛$B.$条件收敛$C.$发散$D.$敛散性不确定

解：$\sum\limits_{n=1}^\infty a_n(x+1)^n=\sum\limits_{n=1}^\infty a_n(x-(-1))^n$，所以$x_0=-1$。

又$x=1$处条件收敛，所以$R=1-(-1)=2$。从而$\sum\limits_{n=1}^\infty a_n(x+1)^n$的收敛区间为$(-3,1)$。

$\sum\limits_{n=1}^\infty a_n(x+1)^n$要转换为$\sum\limits_{n=1}^\infty na_n(x-1)^n$，则首先中心点要从-1移动到1，$a_n(x+1)^n\to a_n(x-1)^n$，由于平移不改变收敛半径，所以$a_n(x-1)^n$收敛区间为$(1,3)$。

然后要将$a_n(x-1)^n$变为$na_n(x-1)^n$，需要进行求导得到$na_n(x-1)^{n-1}$，求导收敛半径不变，所以收敛区间依然为$(1,3)$。最后还要乘上$(x-1)$得到$na_n(x-1)^n$就是所求，收敛区间依然为$(1,3)$。

而在$x=2$在收敛区间内，必然绝对收敛，所以选$A$。

## 幂级数求和函数

### 概念

[**定义：**]{style="color: violet"}在收敛域上，记$S(x)=\sum\limits_{n=1}^\infty u_n(x)$，并称$S(x)$为$\sum\limits_{n=1}^\infty u_n(x)$的**和函数**。

### 运算法则

若幂级数$\sum\limits_{n=0}^\infty a_nx^n$与$\sum\limits_{n=0}^\infty b_nx^n$的收敛半径分别为$R_a$和$R_b$（$R_a\neq R_b$），则：

-   $k\sum\limits_{n=0}^\infty a_nx^n=\sum\limits_{n=0}^\infty ka_nx^n$，$\vert x\vert<R$，$k$为常数。

-   $\sum\limits_{n=0}^\infty a_nx^n\pm\sum\limits_{n=0}^\infty b_nx^n=\sum\limits_{n=0}^\infty (a_n\pm b_n)x^n$，$\vert x\vert<R=\min\{R_a,R_b\}$。

实际运算中，可能运算法则要求的起始$n$值不同，$a_nb_n$不为不包含$x$的常数，$x^n$的幂次不同，恒等变形方法如下：

1.  通项，下标一起变化：$\sum\limits_{n=k}^\infty a_nx^n=\sum\limits_{n=k+l}^\infty a_{n-l}x^{n-l}$，其中$l$为整数。

2.  只变下标，只变通项：$\sum\limits_{n=0}^\infty a_nx^n=a_kx^k+a_{k+1}x^{k+1}+\cdots+a_{k+l-1}x^{k+l-1}+\sum\limits_{n=k+l}^\infty a_nx^n$。

3.  只变通项，不变下标：$\sum\limits_{n=0}^\infty a_nx^n=x^l\sum\limits_{n=0}^\infty a_nx^{n-l}$。

如$\sum\limits_{n=0}^\infty a_nx^{2n}+\sum\limits_{n=0}^\infty b_{n+1}x^{2n+2}=\sum\limits_{n=0}^\infty a_nx^{2n}+\sum\limits_{n=1}^\infty b_nx^{2n}=a_0+\sum\limits_{n=1}^\infty a_nx^{2n}+\sum\limits_{n=1}^\infty b_nx^{2n}=a_0+\sum\limits_{n=0}^\infty(a_n+b_n)x^{2n}$。

### 性质

收敛域的扩大和缩小在于其端点是否通过求导或积分变得可取了。

-   幂级数$\sum\limits_{n=0}^\infty a_nx^n$的和函数$S(n)$在其收敛区间$I$上连续，且如果幂级数在收敛区间的端点$x=\pm R$处收敛，则和函数$S(x)$在$(-R,R]$或$[-R,R)$上连续。

-   幂级数$\sum\limits_{n=0}^\infty a_nx^n$的和函数$S(x)$在其收敛域$I$上可积，且有逐项积分公式$\int_0^xS(t)\,\textrm{d}t=\int_0^x(\sum\limits_{n=0}^\infty a_nt^n)\,\textrm{d}t=\sum\limits_{n=0}^\infty a_n\int_0^xt^n\,\textrm{d}t=\sum\limits_{n=0}^\infty\dfrac{a_n}{n+1}x^{n+1}$（$x\in I$），逐项积分后得到的幂级数和原级数有相同收敛半径，但是收敛域可能扩大。

-   幂级数$\sum\limits_{n=0}^\infty a_nx^n$的和函数$S(x)$在其收敛区间$(-R,R)$内可到，且有逐项求导公式$S'(x)=(\sum\limits_{n=0}^\infty a_nx^n)'=\sum\limits_{n=0}^\infty(a_nx^n)'=\sum\limits_{n=1}^\infty na_nx^{n-1}$（$\vert x\vert<R$），逐项求导后得到的幂级数和原级数有相同收敛半径，但是收敛域可能缩小。

### 重要展开式

$x$的取值指其幂指数的收敛域。第七个幂函数问题较复杂，收敛区间与$\alpha$取值有关。

1.  $e^x=\sum\limits_{n=0}^\infty\dfrac{x^n}{n!}=1+x+\dfrac{x^2}{2!}+\dfrac{x^n}{n!}+\cdots$，$-\infty<x<+\infty$。

2.  $\dfrac{1}{1+x}=\sum\limits_{n=0}^\infty(-1)^nx^n=1-x+x^2-x^3+\cdots+(-1)^nx^n+\cdots$，$-1<x<1$。

3.  $\dfrac{1}{1-x}=\sum\limits_{n=0}^\infty x^n=1+x+x^2+\cdots+x^n+\cdots$，$-1<x<1$。

4.  $\ln(1+x)=\sum\limits_{n=0}^\infty(-1)^{n-1}\dfrac{x^n}{n}=x-\dfrac{x^2}{2}+\dfrac{x^3}{3}+\cdots+(-1)^{n-1}\dfrac{x^n}{n}+\cdots$，$-1<x\leqslant1$。

5.  $\sin x=\sum\limits_{n=0}^\infty(-1)^n\dfrac{x^{2x+1}}{(2n+1)!}=x-\dfrac{x^3}{3!}+\dfrac{x^5}{5!}+(-1)^n\dfrac{x^{2n+1}}{(2n+1)!}+\cdots$，$-\infty<x<+\infty$。

6.  $\cos x=\sum\limits_{n=0}^\infty(-1)^n\dfrac{x^{2n}}{(2n)!}=1-\dfrac{x^2}{2!}+\dfrac{x^4}{4!}+(-1)^n\dfrac{x^{2n}}{(2n)!}+\cdots$，$-\infty<x<+\infty$。

7.  $(1+x)^\alpha=1+\alpha x+\dfrac{\alpha(\alpha-1)}{2!}x^2+\cdots+\dfrac{a(a-1)\cdots(a-n+1)}{n!}x^n+\cdots$，$\left\{\begin{array}{l}
            x\in(-1,1),\text{当}\alpha\leqslant-1 \\
            x\in(-1,1],\text{当}-1<\alpha<0 \\
            x\in[-1,1],\text{当}\alpha>0
        \end{array}\right.$。

## 函数展开为幂级数

### 概念

[**定义：**]{style="color: violet"}若函数$f(x)$在$x=x_0$处存在任意阶导数，则称$f(x_0)+f'(x_0)(x-x_0)+\dfrac{f''(x_0)}{2!}(x-x_0)^2+\cdots+\dfrac{f^{(n)}(x_0)}{n!}(x-x_0)^n+\cdots$为函数$f(x)$在$x_0$处的**泰勒级数**，则$f(x)=\sum\limits_{n=0}^\infty\dfrac{f^{(n)}(x_0)}{n!}(x-x_0)^n$。

当$x_0=0$时，称$f(0)+f'(0)x+\dfrac{f''(0)}{2!}x^2+\cdots+\dfrac{f^{(n)}(0)}{n!}x^n+\cdots$为函数$f(x)$的**麦克劳林级数**，若收敛，则$f(x)=\sum\limits_{n=0}^\infty\dfrac{f^{(n)}(0)}{n!}x^n$。

都是函数展开成幂级数。

### 求法

#### 直接法

逐个计算$a_n=\dfrac{f^{(n)}(x_0)}{n!}$并代入，但是一般很麻烦。

#### 间接法

利用已知的七个幂级数展开式，通过变量代换、四则运算、逐项求导、逐项积分和待定系数等得到。

**例题：**求函数$f(x)=\arctan x$在$x=0$处的幂级数展开。

解：$f'(x)=(\arctan x)'=\dfrac{1}{1+x^2}=\dfrac{1}{1-(-x^2)}=\sum\limits_{n=0}^\infty(-1)^nx^{2n}$，$\vert-x^2\vert<1$。

已经求得求导后的函数的幂级数展开，所以求原函数的幂级数展开只需要积分，利用先导后积公式：$f(x)=f(0)+\int_0^xf'(t)\,\textrm{d}t=\int_0^x\sum\limits_{n=0}^\infty(-1)^nt^{2n}\,\textrm{d}t=\sum\limits_{n=0}^\infty(-1)^n\dfrac{t^{2n+1}}{2n+1}\bigg|_0^x=\sum\limits_{n=0}^\infty(-1)^n\dfrac{x^{2n+1}}{2n+1}$。

求导的级数要求$\vert x\vert<1$，代入$x=\pm1$到最后结果得到两个交错级数，所以收敛域其实为$[-1,1]$（可以不写）。

# 傅里叶级数

## \* 三角级数

[**定义：**]{style="color: violet"}将正弦函数$A_n\sin(n\omega t+\varphi_n)$按三角公式变形得到$A_n\sin\varphi_n\cos n\omega t+A_n\cos\varphi_n\sin n\omega t$，令$\dfrac{a_0}{2}=A_0$，$a_n=A\sin\varphi_n$，$b_n=A_n\cos\varphi_n$，$\omega=\dfrac{\pi}{l}$，则$\dfrac{a_0}{2}+\sum\limits_{n=1}^\infty\left(a_n\cos\dfrac{n\pi t}{l}+b_n\sin\dfrac{n\pi t}{l}\right)$。这个级数就是**三角级数**。

## 函数展开为傅里叶级数

[**定义：**]{style="color: violet"}设$f(x)$在$[-l,l]$上连续或只有有限个第一类间断点，且至多只有有限个真正的极值点，则$f(x)$的傅里叶级数处处收敛，记起和函数为$S(x)$，有$S(x)=\dfrac{a_0}{2}+\sum\limits_{n=1}^\infty\left(a_n\cos\dfrac{n\pi}{l}x+b_n\sin\dfrac{n\pi}{l}x\right)$。

$\displaystyle{a_n=\dfrac{1}{l}\int_{-l}^lf(x)\cos\dfrac{n\pi}{l}x\,\textrm{d}x}$，$\displaystyle{b_n=\dfrac{1}{l}\int_{-l}^lf(x)\sin\dfrac{n\pi}{l}x\,\textrm{d}x}$，$n=1,2,\cdots$。

其中三角函数也可以展开为幂级数，所以最后都能通过幂级数展开。

**例题：**将$f(x)=1-x^2$（$-\pi\leqslant x\leqslant\pi$）展开为傅里叶级数。

解：$S(x)=\dfrac{a_0}{2}+\sum\limits_{n=1}^\infty\left(a_n\cos\dfrac{n\pi}{l}x+b_n\sin\dfrac{n\pi}{l}x\right)$。

其中$a_0=\dfrac{1}{\pi}\int\limits_{-\pi}^\pi(1-x^2)\,\textrm{d}x=\dfrac{2}{\pi}\int\limits_0^\pi(1-x^2)\,\textrm{d}x=2-\dfrac{2}{3}\pi^2$。

$a_n=\dfrac{1}{\pi}\int\limits_{-\pi}^\pi(1-x^2)\cos nx\,\textrm{d}x=\dfrac{2}{\pi}(\int\limits_0^\pi\cos nx\,\textrm{d}x-\int\limits_0^\pi x^2\cos nx\,\textrm{d}x)=\dfrac{4}{n^2}(-1)^{n+1}$。

$b_n=\dfrac{1}{\pi}\int\limits_{-\pi}^\pi(1-x^2)\sin nx\,\textrm{d}x=0$（奇函数乘偶函数为奇函数，且上下限对称）

$f(x)\sim S(x)=1-\dfrac{\pi^2}{3}+\sum\limits_{n=1}^\infty\dfrac{4}{n^2}(-1)^{n+1}\cos nx$。

[**定义：**]{style="color: violet"}当$f(x)$是偶函数，则$\sin$被消去，$f(x)\sim S(x)=\dfrac{a_0}{2}+\sum\limits_{n=1}^\infty a_n\cos\dfrac{n\pi}{l}x$，称为**余弦级数**。

[**定义：**]{style="color: violet"}当$f(x)$是奇函数，则$\cos$被消去，$f(x)\sim S(x)=\dfrac{a_0}{2}+\sum\limits_{n=1}^\infty b_n\sin\dfrac{n\pi}{l}x$，称为**正弦级数**。

若$f(x)$因为定义区间不对称导致无奇偶性，则补充定义域，使其称为奇偶函数。

迪利克雷定理[**定义：**]{style="color: violet"}$f(x)\sim S(x)=\left\{\begin{array}{ll}
    f(x), & x\text{为连续点} \\
    \dfrac{f(x-0)+f(x+0)}{2}, & x\text{为间断点} \\
    \dfrac{f(-l+0)+f(l-0)}{2}, & x=\pm l
\end{array}\right.$
