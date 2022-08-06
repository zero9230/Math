---
author:
- Didnelpsun
title: 行列式
---

高数研究连续的问题，而代数研究离散的问题。

行列式本质是研究线性方程组的问题。行列式本质是一个数，必须是一个长宽相等的形式。

# 行列式概念

## 低阶行列式

若对于一个一阶行列式，就是$\vert a_11\vert$来表示，这个就是一个数。

若要解一个二元一次方程组：

$\begin{cases}
    a_1x+b_1y=c_1 (1) \\
    a_2x+b_2y=c_2 (2) 
\end{cases}$

则利用$(1)\times b_2-(2)\times b_1=(a_1b_2-a_2b_1)x=c_1b_2-c_2b_1$。

$(1)\times a_2-(2)\times a_1=(a_2b_1-a_1b_2)y=c_1a_2-c_2a_1$。

根据系数形式可以得到一个二阶行列式：

$\left|\begin{array}{cc} 
    a & b \\
    c & d
\end{array}\right| 
=ad-bc$。

而二阶行列式的几何意义是指由两个二维向量组成的，结果为这两个向量为邻边的平行四边形的面积。行列式的一行或一列就是一个向量。

同理解三元一次方程组可得三阶行列式：

$\left|\begin{array}{ccc} 
    a_{11} & a_{12} & a_{13} \\
    a_{21} & a_{22} & a_{23} \\
    a_{31} & a_{32} & a_{33}
\end{array}\right| 
=a_{11}a_{22}a_{33}+a_{12}a_{23}a_{31}+a_{13}a_{21}a_{32}-a_{13}a_{22}a_{31}-a_{11}a_{23}a_{32}+a_{12}a_{21}a_{33}$。

三阶行列式的几何意义就是由三个向量为邻边所构成的平行六面体的体积。

行列式是一个数，是不同行不同列元素乘积的代数和。

横排为**行**，竖排为**列**，数$a_{ij}$为**元素**或**元**，第一个下标$i$为**行标**，第二个下标$j$为**列标**。

对角线法则[**定义：**]{style="color: violet"}二阶三阶行列式的值就是所有左对角线的值减去所有右对角线的值。

## 排列、逆序、逆序数

由$1,2,\cdots,n$任意组成的有序数组称为一个$n$阶排列（**全排列**），通常用$j_1j_2\cdots j_n$表示$n$阶排列。如9
5 4 7就是一个4阶排列。

一个排列中，若一个大的数排在一个小的数的前面，就称为这两个数构成一个**逆序**。如9
5 4 7的9和4就构成一个逆序。

[**定义：**]{style="color: violet"}一个排列的逆序的总数称为这个排列的逆序数，用$\tau(j_1j_2\cdots j_n)$表示排列$j_1j_2\cdots j_n$的逆序数。如9
5 4 7有逆序9-5，9-4，9-7，5-4四个逆序，逆序数为4。

若一个排列的逆序数是偶数，则这个排列是**偶排列**，否则称为**奇排列**。如9
5 4 7是偶排列。

若是1 2 $\cdots$
n按序排列，称为这个排列为自然排列，逆序数为0，是偶排列。

[**定义：**]{style="color: violet"}将任意两个元素对调，其他元素不动就是对换，若这两个元素相邻则是相邻对换。

[**定理：**]{style="color: aqua"}一个排列中任意两个元素对换，排列奇偶性变化。

[**定理：**]{style="color: aqua"}奇排列对换成标准排列（一般为自然排列）的对换次数为奇数，偶排列的对换次数为偶数。

## n阶行列式

$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right| 
=\sum\limits_{j_1j_2\cdots j_n}(-1)^{\tau(j_1j_2\cdots j_n)}a_{1j_1}a_{2j_2}\cdots a_{nj_n}$。

即在$n$行每一行都取一个不同于之前取的列的数相乘，把所有的乘积相加起来，其每个项的正负号由其列号序列的逆序数决定。一共有$n!$个项相加减。

从几何意义来看就是由$n$个$n$维向量：

$\alpha_1=[a_{11},a_{12},\cdots,a_{1n}]$，$\alpha_2=[a_{21},a_{22},\cdots,a_{2n}]$，$\cdots$，$\alpha_n=[a_{n1},a_{n2},\cdots,a_{nn}]$为邻边的$n$维图形体积。

从而行列式的值$D$，若$D\neq0$则行列式的三个向量称为线性无关，体积就不是0，否则线性相关，即两条线重叠，体积为0。

## 特殊行列式

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

上三角行列式：包括主对角线的右上部分元素不全为0，左下部分元素全为0。

下三角行列式：包括主对角线的左下部分元素不全为0，右上部分元素全为0。

对角行列式：省略号处的元素不全为0，其他主对角线外的元素全为0。

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

可以从第$n$行开始向上相邻对换$n-1$次到达第$1$层，依此类推，反下三角可以对换成上三角行列式，对换次数为$(n-1),(n-2),\cdots,1$一共$\dfrac{n(n-1)}{2}$次，反上三角行列式也同理。

### 范德蒙德行列式

::: multicols
2

$\left|\begin{array}{cccc} 
        1 & 1 & \cdots & 1 \\
        a_1 & a_2  & \cdots & a_n \\
        \cdots & \cdots & \vdots & \cdots \\
        a_1^{n-1} & a_2^{n-1} & \cdots & a_n^{n-1} \\
    \end{array}\right|$

范德蒙德行列式：元素连乘，结果为$\prod\limits_{1\leqslant j<i\leqslant n}(a_i-a_j)$。
若一个四阶范德蒙德行列式的结果为$(a_4-a_1)(a_4-a_2)(a_4-a_3)(a_3-a_1)(a_3-a_2)(a_2-a_1)$。
:::

若一个范德蒙德行列式不等于0，则其每个元素$a_1a_2\cdots a_n$两两不等。

### 分块行列式

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

# 行列式性质

拉普拉斯法则[**定义：**]{style="color: violet"}$A_{n\times n}$，$B_{n\times n}$，则$\vert AB\vert=\vert A\vert\cdot\vert B\vert$。

若对于行列式$A$，将$a_{ij}$和$a_{ji}$的元素互换位置得到$A^T$，则其就是$A$的转置行列式。

[**定理：**]{style="color: aqua"}转置行列式与其行列式相等，即$\vert A\vert=\vert A^T\vert$。

[**定理：**]{style="color: aqua"}对调行列式的任意两行或两列，行列式变号。

[**定理：**]{style="color: aqua"}若行列式中有两行或两列元素完全相同，则此行列式等于0。

[**定理：**]{style="color: aqua"}行列式中如果有两行或两列元素成比例，则此行列式等于0。

[**定理：**]{style="color: aqua"}行列式的某一行或某一列中所有的元素都乘以同一个数$k$，则等于用$k$乘此行列式。行列式中某一行或一列的所有元素的公因子可以提到行列式记号外面。

即$\left|\begin{array}{ccccc} 
    a_{11} & \cdots & ka_{1i} & \cdots & a_{1n} \\
    a_{21} & \cdots & ka_{2i} & \cdots & a_{2n} \\
    \vdots & \cdots & \vdots & \ddots & \vdots \\
    a_{n1} & \cdots & ka_{ni} & \cdots & a_{nn}
\end{array}\right| 
=k\left|\begin{array}{ccccc} 
    a_{11} & \cdots & a_{1i} & \cdots & a_{1n} \\
    a_{21} & \cdots & a_{2i} & \cdots & a_{2n} \\
    \vdots & \cdots & \vdots & \ddots & \vdots \\
    a_{n1} & \cdots & a_{ni} & \cdots & a_{nn}
\end{array}\right|$。

[**定理：**]{style="color: aqua"}某一行列的元素是两数之和$\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    \vdots & \vdots & \cdots & \vdots \\
    a_{i1}+a_{j1} & a_{i2}+a_{j2} & \cdots & a_{in}+a_{jn} \\
    \vdots & \vdots & \cdots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|$，

则$=\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    \vdots & \vdots & \cdots & \vdots \\
    a_{i1} & a_{i2} & \cdots & a_{in}\\
    \vdots & \vdots & \cdots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|+
\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    \vdots & \vdots & \cdots & \vdots \\
    a_{j1} & a_{j2} & \cdots & a_{jn} \\
    \vdots & \vdots & \cdots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|$

[**定理：**]{style="color: aqua"}把行列式的某一行或某一列的个元素乘以同一个数然后加到另一行或一列对应元素上去，行列式不变。

# 行列式展开

## 余子式

$D=\left|\begin{array}{cccc} 
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
\end{array}\right|$

[**定义：**]{style="color: violet"}$\forall a_{ij}$，$D$中划去$i$行，$j$列余下元素而成的$n-1$阶行列式记为$M_{ij}$，其就是$a_{ij}$的余子式。

余子式$a_{ij}$只与$ij$即位置有关，与$a_{ij}$大小无关。

## 代数余子式

令$A_{ij}=(-1)^{i+j}M_{ij}$，其就是$a_{ij}$的**代数余子式**。

[**定理：**]{style="color: aqua"}若一个$n$阶行列式，若其中第$i$行所有元素除$(i,j)$元$a_{ij}$外都是零，则行列式值$D=a_{ij}A_{ij}$。

## 展开公式

[**定义：**]{style="color: violet"}行列式等于其任一行或列的各元素与对应的代数余子式乘积之和。即$D=a_{i1}A_{i1}+\cdots+a_{in}A_{in}$或$D=a_{1j}A_{1j}+\cdots+a_{nj}A_{nj}$。

[**定理：**]{style="color: aqua"}若元素与不对应的代数余子式乘积之和必然为0。即$a_{i1}A_{k1}+\cdots+a_{in}A_{kn}=0$。
