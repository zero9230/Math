---
author:
- Didnelpsun
title: 行列式
---

# 逆序

逆序一般只会考一个数列的逆序数，一般以自然数从小到大为标准次序。

对于逆序数的计算一般是数，假设一共有$n$项，则需要依次从$i$向后判断各项与当前项的大小，最后相加。

## 有穷排列

对于给出几个数字的有限排列，只需要直接计算即可。

**例题：**求2413的逆序数。

解：2的逆序有21一个。4的逆序与41、43两个。1无逆序数，所以一共逆序数为3。

## 无穷排列

**例题：**求$13\cdots(2n-1)(2n)(2n-2)\cdots2$的逆序数。

解：这个序列分为两个部分，第一个是前面的$13\cdots(2n-1)$部分，这个部分无逆序。

第二个部分是后面的$(2n)(2n-2)\cdots2$，这个序列是全部逆序的，所以考虑其第二个内部一共有$n$个数，从前往后依次有$n,(n-1),\cdots,1$个逆序，所以逆序数为$\dfrac{n(n-1)}{2}$。

然后是考虑第二个部分对于第一个部分的逆序。$2n-2$对$2n-1$产生一个逆序，到最后的2对前面的$3\cdots(2n-1)$都产生了逆序一共$n-1$个，所以一共$\dfrac{n(n-1)}{2}$个逆序。

所以最后一共加起来与$n(n-1)$个逆序。

# 因式项

需要求出带有某些因子的因式项，其实就是对顺序的排列组合，若已经给出某些因式，则因式项的其他因子就必须是其他数值。

且还要考虑因式项的正负号，即选择的值序列的逆序数。

**例题：**写出四阶行列式中含有$a_{11}a_{23}$的因式项。

解：因为是四阶行列式，且含有$a_{11}a_{23}$，所以余下来的$a_{3?}$和$a_{4?}$中的$?$只有2和4可选。

若是$a_{11}a_{23}a_{32}a_{44}$，则列坐标序列为$1324$，从而逆序数为1，所以该项为$-a_{11}a_{23}a_{32}a_{44}$。

若是$a_{11}a_{23}a_{34}a_{42}$，则列坐标序列为$1342$，从而逆序数为2，所以该项为$a_{11}a_{23}a_{34}a_{42}$。

$\therefore\,-a_{11}a_{23}a_{32}a_{44}+a_{11}a_{23}a_{34}a_{42}$。

# 行列式

包含直接计算行列式的值和已知行列式值计算参数值两种体型，基本上求解方式一致。

证明行列式值与计算行列式值的题型不同的是，其行列式的值是固定给出的，一方面虽然约束了解题思路，一方面也给出了解题的方向，需要结果与给定值"靠近"。

## 基本行列式与计算

### 主对角线行列式

$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
     & \ddots & \cdots & a_{2n} \\
     & & \ddots & \vdots  \\
     & & & a_{nn}
\end{array}\right|=
\left|\begin{array}{cccc} 
    a_{11} & & & \\
    a_{21} & \ddots & & \\
    \vdots & \cdots & \ddots &  \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|=
\left|\begin{array}{cccc} 
    a_{11} & & & \\
     & \ddots & & \\
     & & \ddots &  \\
     & & & a_{nn}
\end{array}\right|=a_{11}\cdots a_{nn}$

### 副对角线行列式

$\left|\begin{array}{cccc} 
    & & & a_{1n} \\
    & & \begin{turn}{80}$$\end{turn} & a_{2n} \\
    &  \begin{turn}{80}$$\end{turn} & \cdots & \vdots  \\
   a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|=
\left|\begin{array}{cccc} 
   a_{11} & a_{12} & \cdots & a_{1n} \\
   a_{21} & \cdots & \begin{turn}{80}$$\end{turn} & \\
   \vdots & \begin{turn}{80}$$\end{turn} & & \\
   a_{n1} & & &
\end{array}\right|=
\left|\begin{array}{cccc} 
    & & & a_{1n} \\
    & & \begin{turn}{80}$$\end{turn} & \\
    & \begin{turn}{80}$$\end{turn} & & \\
   a_{n1} & & &
\end{array}\right|=(-1)^{\frac{n(n-1)}{2}}a_{1n}\cdots a_{n1}$

### 范德蒙德行列式

$\left|\begin{array}{cccc} 
    1 & 1 & \cdots & 1 \\
    a_1 & a_2  & \cdots & a_n \\
    \cdots & \cdots & \vdots & \cdots \\
    a_1^{n-1} & a_2^{n-1} & \cdots & a_n^{n-1} \\
\end{array}\right|=\prod\limits_{1\leqslant j<i\leqslant n}(a_i-a_j)$

**例题：**求$\left|\begin{array}{cccc} 
    1 & 2 & 3 & 4 \\
    1 & 2^2  & 3^2 & 4^2 \\
    1 & 2^3  & 3^3 & 4^3 \\
    9 & 8 & 7 & 6
\end{array}\right|$。

解：这个式子非常像范德蒙德行列式，但是差一行1。所以我们要把最后一行变为同样值。可以观察得到第四行加最后一行为10，所以

$=\left|\begin{array}{cccc} 
    1 & 2 & 3 & 4 \\
    1 & 2^2  & 3^2 & 4^2 \\
    1 & 2^3  & 3^3 & 4^3 \\
    10 & 10 & 10 & 10
\end{array}\right|=10\times(-1)^3\left|\begin{array}{cccc} 
    1 & 1 & 1 & 1 \\
    1 & 2 & 3 & 4 \\
    1 & 2^2  & 3^2 & 4^2 \\
    1 & 2^3  & 3^3 & 4^3
\end{array}\right|=-10\times2\times3\times2=-120$。

### 分块行列式

也称为拉普拉斯展开式，设$A$为$m$阶矩阵，$B$为$n$阶矩阵：

$\left|\begin{array}{cc}
    A & O \\
    O & B
\end{array}\right|=
\left|\begin{array}{cc}
    A & * \\
    O & B
\end{array}\right|=
\left|\begin{array}{cc}
    A & O \\
    * & B
\end{array}\right|=\vert A\vert\cdot\vert B\vert$。

$\left|\begin{array}{cc}
    O & A \\
    B & O
\end{array}\right|=
\left|\begin{array}{cc}
    * & A \\
    B & O
\end{array}\right|=
\left|\begin{array}{cc}
    O & A \\
    B & *
\end{array}\right|=(-1)^{mn}\vert A\vert\cdot\vert B\vert$。

### 爪形行列式

$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & \ddots & & \\
    \vdots & & \ddots &  \\
    a_{n1} & & & a_{nn}
\end{array}\right|$，$\left|\begin{array}{cccc} 
    a_{11} & & & a_{1n} \\
    a_{21} & & \begin{turn}{80}$$\end{turn} & \\
    \vdots & \begin{turn}{80}$$\end{turn} & &  \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|$，$\left|\begin{array}{cccc} 
    a_{11} & & & a_{1n} \\
     & \ddots & & a_{2n} \\
     & & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|$，

$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
     & & \begin{turn}{80}$$\end{turn} & a_{2n} \\
     & \begin{turn}{80}$$\end{turn} & & \vdots \\
    a_{n1} & & & a_{nn}
\end{array}\right|$。低阶直接进行展开，高阶需要使用递推法。

### 异爪形行列式

每种爪形行列式都能变为三种异爪形行列式，如$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & \ddots & & \\
    \vdots & & \ddots &  \\
    a_{n1} & & & a_{nn}
\end{array}\right|$：

$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & \ddots & & \\
     & \ddots & \ddots &  \\
     & & \ddots & a_{nn}
\end{array}\right|$，$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & & \\
    a_{21} & \ddots & \ddots & \\
    \vdots & & \ddots & \ddots \\
    a_{n1} & & & a_{nn}
\end{array}\right|$，$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & & \\
    a_{21} & \ddots & \ddots & \\
     & \ddots & \ddots & \ddots \\
     & & \ddots & a_{nn}
\end{array}\right|$。

基本方法是用斜着的数消去平的数，从而让异爪形行列式变为三角行列式。

**例题：**计算$\left|\begin{array}{cccc} 
    1 & 1 & 1 & 1 \\
    1 & 2 & 0 & 0 \\
    1 & 0 & 3 & 0 \\
    1 & 0 & 0 & 4
\end{array}\right|$。

解：各行提取斜对角线数$=2\times3\times4\left|\begin{array}{cccc} 
    1 & 1 & 1 & 1 \\
    \dfrac{1}{2} & 0 & 0 & 0 \\
    \dfrac{1}{3} & 0 & 1 & 0 \\
    \dfrac{1}{4} & 0 & 0 & 1
\end{array}\right|=\left|\begin{array}{cccc} 
    -\dfrac{1}{12} & 0 & 0 & 0 \\
    \dfrac{1}{2} & 0 & 0 & 0 \\
    \dfrac{1}{3} & 0 & 1 & 0 \\
    \dfrac{1}{4} & 0 & 0 & 1
\end{array}\right|=-2$。

### 基本行列式计算

基本的计算方式是对角线法则计算与行列式展开两种方法。若符合基本特殊行列式的可以按照公式。

但是对于一般的高阶行列式而言计算方式如下：

-   通过行列式的对换让一行或一列只有一个元素不为0，进行行列式展开不断降阶，最后变成第三阶的时候使用对角线法则。

-   通过行列式的对换从上往下让行列式变成上三角行列式，对角线相乘就得到结果。

这两种方式可以混合使用，直接展开可以在有足够多的0的情况下使用或阶数较低的情况下使用。

**例题：**计算$\left|\begin{array}{cccccc} 
    a & b & 0 & \cdots & 0 & 0 \\
    0 & a & b & \cdots & 0 & 0 \\
    0 & 0 & a & \cdots & 0 & 0 \\
    \vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\
    0 & 0 & 0 & \cdots & a & b \\
    b & 0 & 0 & \cdots & 0 & a
\end{array}\right|$。

解：直接按第一列展开：

$=a(-1)^{1+1}\left|\begin{array}{ccccc} 
    a & b & \cdots & 0 & 0 \\
    0 & a & \cdots & 0 & 0 \\
    \vdots & \vdots & \ddots & \vdots & \vdots \\
    0 & 0 & \cdots & a & b \\
    0 & 0 & \cdots & 0 & a
\end{array}\right|+b\cdot(-1)^{n+1}\left|\begin{array}{ccccc} 
    b & 0 & \cdots & 0 & 0 \\
    a & b & \cdots & 0 & 0 \\
    \vdots & \vdots & \ddots & \vdots & \vdots \\
    0 & 0 & \cdots & b & 0 \\
    0 & 0 & \cdots & a & b \\
\end{array}\right|$

$=a\cdot a^{n-1}+(-1)^{n+1}b\cdot b^{n-1}=a^n+(-1)^{n+1}b^n$。

## 提取公因式

可以提取某一行或某一列的公因式。

**例题：**证明$\left|\begin{array}{ccc} 
    a^2 & ab & b^2 \\
    2a & a+b & 2b \\
    1 & 1 & 1
\end{array}\right|=(a-b)^3$。

证明：因为是证明题，而结果是$(a-b)$的变形，所以我们需要不断提取出$a-b$的形式。

$=-\left|\begin{array}{ccc} 
    1 & 1 & 1 \\
    2a & a+b & 2b \\
    a^2 & ab & b^2
\end{array}\right|
=-\left|\begin{array}{ccc} 
    0 & 0 & 1 \\
    a-b & a-b & 2b \\
    a(a-b) & b(a-b) & b^2
\end{array}\right|
=-(a-b)^2\left|\begin{array}{ccc} 
    0 & 0 & 1 \\
    1 & 1 & 2b \\
    a & b & b^2
\end{array}\right|$

$=-(a-b)^2\cdot1\cdot(-1)^{1+3}\left|\begin{array}{cc} 
    1 & 1 \\
    a & b
\end{array}\right|=-(a-b)^2(b-a)=(a-b)^3$。

**例题：**证明$\left|\begin{array}{cccc} 
    1 & 1 & 1 & 1 \\
    a & b & c & d \\
    a^2 & b^2 & c^2 & d^2 \\
    a^4 & b^4 & c^4 & d^4
\end{array}\right|=(a-b)(a-c)(a-d)(b-c)(b-d)(c-d)(a+b+c+d)$。

证明：这个形式看起来像范德蒙德行列式，但是根据后面的结果，发现这无法通过范德蒙德行列式的公式来计算，所以按照一般方法相减得到因子：

$=\left|\begin{array}{cccc} 
    1 & 1 & 1 & 1 \\
    0 & b-a & c-a & d-a \\
    a^2-a^2 & b^2-ab & c^2-ac & d^2-ad \\
    a^4-a^4 & b^4-a^2b^2 & c^4-a^2c^2 & d^4-a^2d^2
\end{array}\right|$

$=\left|\begin{array}{cccc} 
    1 & 1 & 1 & 1 \\
    0 & b-a & c-a & d-a \\
    0 & b(b-a) & c(c-a) & d(d-a) \\
    0 & b^2(b+a)(b-a) & c^2(c+a)(c-a) & d^2(d+a)(d-a)
\end{array}\right|$

$=(b-a)(c-a)(d-a)\left|\begin{array}{cccc} 
    1 & 1 & 1 & 1 \\
    0 & 1 & 1 & 1 \\
    0 & b & c & d \\
    0 & b^2(b+a) & c^2(c+a) & d^2(d+a)
\end{array}\right|$

$=(b-a)(c-a)(d-a)\cdot 1\cdot(-1)^{1+1}\left|\begin{array}{ccc}
    1 & 1 & 1 \\
    b & c & d \\
    b^2(b+a) & c^2(c+a) & d^2(d+a)
\end{array}\right|$

$=(b-a)(c-a)(d-a)\left|\begin{array}{ccc}
    1 & 1 & 1 \\
    0 & c-b & d-b \\
    0 & c(c^2+ac-ab-b^2) & d(d^2+ad-ab-b^2)
\end{array}\right|$

$=(b-a)(c-a)(d-a)\left|\begin{array}{ccc}
    1 & 1 & 1 \\
    0 & c-b & d-b \\
    0 & c(a+b+c)(c-b) & d(a+b+d)(d-b)
\end{array}\right|$

$=(b-a)(c-a)(d-a)\left|\begin{array}{cc}
    c-b & d-b \\
    c(a+b+c)(c-b) & d(a+b+d)(d-b)
\end{array}\right|$

$=(b-a)(c-a)(d-a)(c-b)(d-b)\left|\begin{array}{cc}
    1 & 1 \\
    c(a+b+c) & d(a+b+d)
\end{array}\right|$

$=(b-a)(c-a)(d-a)(c-b)(d-b)(c(a+b+c)-d(a+b+d))$

$=(b-a)(c-a)(d-a)(c-b)(d-b)(ca+cb+c^2-da-db-d^2)$

$=(b-a)(c-a)(d-a)(c-b)(d-b)(a(c-d)+b(c-d)+(c+d)(c-d))$

$=(b-a)(c-a)(d-a)(c-b)(d-b)(c-d)(a+b+c+d)$。

## 转换三角行列式

通过行变换或列变换将行列式转换三角行列式，然后就可以根据对角线乘积得到结果。

**例题：**计算$\left|\begin{array}{cccc} 
    1 & 2 & 3 & 4 \\
    1 & 3 & 4 & 1 \\
    1 & 4 & 1 & 2 \\
    1 & 1 & 2 & 3
\end{array}\right|$。

解：$=\left|\begin{array}{cccc} 
    1 & 2 & 3 & 4 \\
    0 & 1 & 1 & -3 \\
    0 & 1 & -3 & 1 \\
    0 & -1 & -1 & -1
\end{array}\right|
=\left|\begin{array}{cccc} 
    1 & 2 & 3 & 4 \\
    0 & 1 & 1 & -3 \\
    0 & 0 & -4 & 4 \\
    0 & 0 & 0 & -4
\end{array}\right|=16$。

## 成比例为0

当行列式行列变换后某一行或某一列与另一行或列成比例，则整个行列式值为0。

**例题：**计算$\left|\begin{array}{cccc} 
    2 & 1 & 4 & 1 \\
    3 & -1  & 2 & 1 \\
    1 & 2 & 3 & 2 \\
    5 & 0 & 6 & 2 \\
\end{array}\right|$。

解：$=\left|\begin{array}{cccc} 
    0 & -3 & -2 & -3 \\
    0 & -7  & -7 & -5 \\
    1 & 2 & 3 & 2 \\
    0 & -10 & -9 & -8 \\
\end{array}\right|=\left|\begin{array}{cccc} 
    1 & 2 & 3 & 2 \\
    0 & -3 & -2 & -3 \\
    0 & -7  & -7 & -5 \\
    0 & -10 & -9 & -8 \\
\end{array}\right|=\left|\begin{array}{cccc} 
    1 & 2 & 3 & 2 \\
    0 & 3 & 2 & 3 \\
    0 & 7  & 7 & 5 \\
    0 & -10 & -9 & -8 \\
\end{array}\right|$

$=3\left|\begin{array}{cccc} 
    1 & 2 & 3 & 2 \\
    0 & 1 & \dfrac{2}{3} & 1 \\
    0 & 7  & 7 & 5 \\
    0 & -10 & -9 & -8 \\
\end{array}\right|
=3\left|\begin{array}{cccc} 
    1 & 2 & 3 & 2 \\
    0 & 1 & \dfrac{2}{3} & 1 \\
    0 & 0  & \dfrac{7}{3} & -2 \\
    0 & 0  & -\dfrac{7}{3} & 2 \\
\end{array}\right|=0$。

## 拆项

若行列式某一行或一列是有两个值构成，则可以把其拆开，其他部分行列不变。

**例题：**证明$\left|\begin{array}{ccc}
    ax+by & ay+bz & az+bx \\
    ay+bz & az+bx & ax+by \\
    az+bx & ax+by & ay+bz
\end{array}\right|=(a^3+b^3)\left|\begin{array}{ccc}
    x & y & z \\
    y & z & x \\
    z & x & y
\end{array}\right|$。

证明：首先因为上下因式的系数是$ab$，所以无论怎么样减都无法消去多余的$xy$或$z$得到结果的行列式中只有单个因子的情况，所以只能拆项，从第一个项开始拆：

$=a\left|\begin{array}{ccc}
    x & ay+bz & az+bx \\
    y & az+bx & ax+by \\
    z & ax+by & ay+bz
\end{array}\right|+b\left|\begin{array}{ccc}
    y & ay+bz & az+bx \\
    z & az+bx & ax+by \\
    x & ax+by & ay+bz
\end{array}\right|$

$=a^2\left|\begin{array}{ccc}
    x & ay+bz & z \\
    y & az+bx & x \\
    z & ax+by & y
\end{array}\right|+b^2\left|\begin{array}{ccc}
    y & z & az+bx \\
    z & x & ax+by \\
    x & y & ay+bz
\end{array}\right|=a^3\left|\begin{array}{ccc}
    x & y & z \\
    y & z & x \\
    z & x & y
\end{array}\right|+b^3\left|\begin{array}{ccc}
    y & z & x \\
    z & x & y \\
    x & y & z
\end{array}\right|$

$=a^3\left|\begin{array}{ccc}
    x & y & z \\
    y & z & x \\
    z & x & y
\end{array}\right|+b^3\left|\begin{array}{ccc}
    x & y & z \\
    y & z & x \\
    z & x & y
\end{array}\right|=(a^3+b^3)\left|\begin{array}{ccc}
    x & y & z \\
    y & z & x \\
    z & x & y
\end{array}\right|$

## 行列乘积为定值

当行列式每一行或每一列相乘都为一个固定的值，可以把每行或每列的公因子提出来来简化计算。

**例题：**计算$\left|\begin{array}{ccc} 
    -ab & ac & ae \\
    bd & -cd & de \\
    bf & cf & -ef
\end{array}\right|$。

解：$=adf\left|\begin{array}{ccc} 
    -b & c & e \\
    b & -c & e \\
    b & c & -e
\end{array}\right|
=abcdef\left|\begin{array}{ccc} 
    -1 & 1 & 1 \\
    1 & -1 & 1 \\
    1 & 1 & -1
\end{array}\right|=4abcdef$。

## 行列加和为定值

当行列式每一行或每一列相加都为一个固定的值，可以把第二行开始的各行都加到第一行或列，再提取公因式，提出后第一行或第一列变为1，再依次对每行或每列进行消去，最终变成对角线行列式。

**例题：**计算$\left|\begin{array}{cccc} 
    x & a & \cdots & a \\
    a & x & \cdots & a \\
    \vdots & \vdots & \ddots & \vdots \\
    a & a & \cdots & x \\
\end{array}\right|$。

解：$=\left|\begin{array}{cccc} 
    x+(n-1)a & x+(n-1)a & \cdots & x+(n-1)a \\
    a & x & \cdots & a \\
    \vdots & \vdots & \ddots & \vdots \\
    a & a & \cdots & x \\
\end{array}\right|$

$=(x+(n-1)a)\left|\begin{array}{cccc} 
    1 & 1 & \cdots & 1 \\
    a & x & \cdots & a \\
    \vdots & \vdots & \ddots & \vdots \\
    a & a & \cdots & x \\
\end{array}\right|=(x+(n-1)a)\left|\begin{array}{cccc} 
    1 & 1 & \cdots & 1 \\
     & x-a & &  \\
     & & \ddots & \\
     & & & x-a \\
\end{array}\right|$

$=(x+(n-1)a)(x-a)^{n-1}$。

**例题：**计算$\left|\begin{array}{cccc} 
    1+a_1 & a_1 & \cdots & a_1 \\
    a_2 & 1+a_2 & \cdots & a_2 \\
    \vdots & \vdots & \ddots & \vdots \\
    a_n & a_n & \cdots & 1+a_n \\
\end{array}\right|$。

解：$=(1+a_1+a_2+\cdots+a_n)\left|\begin{array}{cccc} 
    1 & 1 & \cdots & 1 \\
    a_2 & 1+a_2 & \cdots & a_2 \\
    \vdots & \vdots & \ddots & \vdots \\
    a_n & a_n & \cdots & 1+a_n \\
\end{array}\right|$

$=(1+a_1+a_2+\cdots+a_n)\left|\begin{array}{cccc} 
    1 & 0 & \cdots & 0 \\
    a_2 & 1 & \cdots & 0 \\
    \vdots & \vdots & \ddots & \vdots \\
    a_n & 0 & \cdots & 1 \\
\end{array}\right|=(1+a_1+a_2+\cdots+a_n)$。

## 分块行列式

就是分块行列式的拓展，也称为拉普拉斯展开式，当行列式左下角和右上角的矩阵为零矩阵时可以只考虑对角线矩阵的乘积值。

**例题：**计算$\left|\begin{array}{cccc} 
    a_1 & 0 & 0 & b_1 \\
    0 & a_2 & b_2 & 0 \\
    0 & b_3 & a_3 & 0 \\
    b_4 & 0 & 0 & a_4
\end{array}\right|$。

$=-\left|\begin{array}{cccc} 
    a_1 & b_1 & 0 & 0  \\
    0 & 0 & a_2 & b_2 \\
    0 & 0 & b_3 & a_3 \\
    b_4 & a_4 & 0 & 0
\end{array}\right|=\left|\begin{array}{cccc} 
    a_1 & b_1 & 0 & 0  \\
    b_4 & a_4 & 0 & 0 \\
    0 & 0 & b_3 & a_3 \\
    0 & 0 & a_2 & b_2
\end{array}\right|=\left|\begin{array}{cc} 
    a_1 & b_1 \\
    b_4 & a_4
\end{array}\right|\left|\begin{array}{cc}
    b_3 & a_3 \\
    a_2 & b_2
\end{array}\right|=(a_1a_4-b_1b_4)(a_2a_3-b_2b_3)$。

## 递推法

当行列式一共有$n$项，很多时候都需要使用到递推法，递推法也一般与其他方法共同使用。

**例题：**计算$\left|\begin{array}{cccccc} 
    2 & -1 & 0 & \cdots & 0 & 0  \\
    -1 & 2 & -1 & \cdots & 0 & 0 \\
    0 & -1 & 2 & \cdots & 0 & 0 \\
    \vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\
    0 & 0 & 0 & \cdots & 2 & -1 \\
    0 & 0 & 0 & \cdots & -1 & 2
\end{array}\right|_{n\times n}$

解：这是一个爪形行列式，然而无法通过斜的数数据来消去平的数据，考虑将所有列都加到第一列：

$D_n=\left|\begin{array}{cccccc} 
    1 & -1 & 0 & \cdots & 0 & 0  \\
    0 & 2 & -1 & \cdots & 0 & 0 \\
    0 & -1 & 2 & \cdots & 0 & 0 \\
    \vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\
    0 & 0 & 0 & \cdots & 2 & -1 \\
    1 & 0 & 0 & \cdots & -1 & 2
\end{array}\right|=1\cdot(-1)^{1+1}\left|\begin{array}{ccccc} 
    2 & -1 & \cdots & 0 & 0 \\
    -1 & 2 & \cdots & 0 & 0 \\
    \vdots & \vdots & \ddots & \vdots & \vdots \\
    0 & 0 & \cdots & 2 & -1 \\
    0 & 0 & \cdots & -1 & 2
\end{array}\right|$

$+1\cdot(-1)^{n+1}\left|\begin{array}{cccccc} 
    -1 & 0 & \cdots & 0 & 0  \\
    2 & -1 & \cdots & 0 & 0 \\
    -1 & 2 & \ddots & 0 & 0 \\
    \vdots & \vdots & \cdots & \ddots & \vdots \\
    0 & 0 & \cdots & 2 & -1
\end{array}\right|=D_{n-1}+1\cdot(-1)^{n+1}(-1)^{n-1}$

$\therefore D_n=D_{n-1}+1$。这就是本题目的递推式。$D_n=D_1+n-1=2+n-1=1+n$。

[注意：]{style="color: orange"}对于爪形和异爪形行列式的递推时，只能从爪尖开始消（行列式展开），不能从爪根部消，否则就不能保证爪的形状。

**例题：**计算$\left|\begin{array}{ccccccc} 
    a & & & & & b \\
    & \ddots  & & & \begin{turn}{80}$$\end{turn} & \\
     & & a & b \\
     & & c & d \\
     & \begin{turn}{80}$$\end{turn} & & & \ddots \\
    c & & & & & d
\end{array}\right|_{2n\times 2n}$。

解：将其$2n$行不断与$2n-1\cdots2$行对换，再将其$2n$列不断与$2n-1\cdots2$列对换，一共对换$2(2n-2)$次，一定是一个偶数：

$=\left|\begin{array}{cccccccc} 
    a & b & 0 & & & \cdots & & 0 \\
    c & d & 0 & & & \cdots & & 0 \\
    0 & 0 & a & & & & & b \\
    \vdots & \vdots & \vdots & \ddots & & & \begin{turn}{80}$$\end{turn} & \\
    \vdots & \vdots & \vdots & & a & b \\
    \vdots & \vdots & \vdots & & c & d \\
    \vdots & \vdots & \vdots & \begin{turn}{80}$$\end{turn} & & & \ddots \\
    0 & 0 & c & & & & & d
\end{array}\right|_{2n\times 2n}$，根据分块行列式的计算方式：

$D_{2n}=D_2D_{2(n-1)}=(ad-bc)D_{2(n-1)}$，所以不断递推可以得到结果为$(ad-bc)^n$。

# 代数余子式

已知某一行或列展开就是每一行或列的元素乘对应的代数余子式，就可以得到整个矩阵的值。若是求某一行或某一列的代数余子式的值，将其系数代入矩阵求就可以了。

**例题：**设$D=\left|\begin{array}{cccc} 
    3 & 1 & -1 & 2 \\
    -5 & 1 & 3 & -4 \\
    2 & 0 & 1 & -1 \\
    1 & -5 & 3 &-3
\end{array}\right|$，$D$的$(i,j)$元的代数余子式设为$A_{ij}$，求$A_{31}+3A_{32}-2A_{33}+2A_{34}$。

解：$A_{31}+3A_{32}-2A_{33}+2A_{34}=\left|\begin{array}{cccc} 
    3 & 1 & -1 & 2 \\
    -5 & 1 & 3 & -4 \\
    1 & 3 & -2 & 2 \\
    1 & -5 & 3 &-3
\end{array}\right|
=\left|\begin{array}{cccc} 
    1 & 3 & -2 & 2 \\
    0 & 8 & -5 & 5 \\
    0 & 0 & 3 & -4 \\
    0 & 0 & 0 & 1
\end{array}\right|=24$。
