---
author:
- Didnelpsun
title: 矩阵
---

矩阵本质是一个表格。

# 矩阵定义

[**定义：**]{style="color: violet"}$m\times n$矩阵是由$m\times n$个数$a_{ij}$（元素）排成的$m$行$n$列的数表。

元素是实数的矩阵称为**实矩阵**，元素是复数的矩阵是**复矩阵**。

行数列数都为$n$的就是**$n$阶矩阵**或**方阵**，记为$A_n$。

行矩阵或行向量[**定义：**]{style="color: violet"}只有一行的矩阵$A=(a_1a_2\cdots a_n)$。

列矩阵或列向量[**定义：**]{style="color: violet"}只有一列的矩阵$B=
\left(\begin{array}{c} 
    b_1 \\
    b_2 \\
    \cdots \\
    b_m
\end{array}\right)$。

同型矩阵[**定义：**]{style="color: violet"}两个矩阵行数、列数相等。

相等矩阵[**定义：**]{style="color: violet"}是同型矩阵，且对应元素相等的矩阵。记为$A=B$。

零矩阵[**定义：**]{style="color: violet"}元素都是零的矩阵，记为$O$，但是不同型的零矩阵不相等。

::: multicols
2

对角矩阵或对角阵[**定义：**]{style="color: violet"}从左上角到右下角的直线（对角线）以外的元素都是0的矩阵，记为$\varLambda=\textrm{diag}(\lambda_1,\lambda_2,\cdots,\lambda_n)$。

$\varLambda=\left(
        \begin{array}{cccc}
            \lambda_1 & 0 & \cdots & 0 \\
            0 & \lambda_2 & \cdots & 0 \\
            \vdots & \vdots & \vdots & \vdots \\
            0 & 0 & \cdots & \lambda_n
        \end{array}
    \right)$

单位矩阵或单位阵[**定义：**]{style="color: violet"}$\lambda_1=\lambda_2=\cdots=\lambda_n=1$的对角矩阵，记为$E$。这种线性变换叫做恒等变换，$AE=A$。

$E=\left(
        \begin{array}{cccc}
            1 & 0 & \cdots & 0 \\
            0 & 1 & \cdots & 0 \\
            \vdots & \vdots & \vdots & \vdots \\
            0 & 0 & \cdots & 1
        \end{array}
    \right)$
:::

# 矩阵运算

## 矩阵加法减法

设与两个矩阵都是同型矩阵$m\times n$，$A=(a_{ij})$和$B=(b_{ij})$，则其加法就是$A+B$。

$A+B=\left(
    \begin{array}{cccc}
        a_{11}+b_{11} & a_{12}+b_{12} & \cdots & a_{1n}+b_{1n} \\
        a_{21}+b_{21} & a_{22}+b_{22} & \cdots & a_{2n}+b_{2n} \\
        \vdots & \vdots & \vdots & \vdots \\
        a_{m1}+b_{m1} & a_{m2}+b_{m2} & \cdots & a_{m+n}+b_{m+n}
    \end{array}
\right)$

-   $A+B=B+A$。

-   $(A+B)+C=A+(B+C)$。

若$-A=(-a_{ij})$，则$-A$是$A$的负矩阵，$A+(-A)=O$。

从而矩阵的减法为$A-B=A+(-B)$。

## 数乘矩阵

数$\lambda$与矩阵$A$的乘积记为$\lambda A$或$A\lambda$，规定：

$\lambda A=A\lambda=\left(
    \begin{array}{cccc}
        \lambda a_{11} & \lambda a_{12} & \cdots & \lambda a_{1n} \\
        \lambda a_{21} & \lambda a_{22} & \cdots & \lambda a_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        \lambda a_{m1} & \lambda a_{m2} & \cdots & \lambda a_{mn}
    \end{array}
\right)$

假设$A$、$B$都是$m\times n$的矩阵，$\lambda$、$\mu$为数：

-   $(\lambda\mu)A=\lambda(\mu A)$。

-   $(\lambda+\mu)A=\lambda A+\mu A$。

-   $\lambda(A+B)=\lambda A+\lambda B$。

矩阵加法与数乘矩阵都是矩阵的线性运算。

## 矩阵相乘

设$A=(a_{ij})$是一个$m\times s$的矩阵，$B=(b_{ij})$是一个$s\times n$的矩阵，那么$A\times B=AB=C_{m\times n}=(c_{ij})$。即：$c_{ij}=a_{i1}b_{1j}+a_{i2}b_{2j}+\cdots+a_{is}b_{sj}=\sum\limits_{k=1}^sa_{ik}b_{kj}\,\text{（}i=1,2,\cdots,m;j=1,2,\cdots,n\text{）}$。

即前一个矩阵的行乘后一个矩阵的列就得到当前元素的值。

所以按此定义一个$1\times s$行矩阵与$s\times 1$列矩阵的乘积就是一个1阶方针即一个数：

$(a_{i1},a_{i2},\cdots,a_{is})\left(
    \begin{array}{c}
        b_{1j} \\
        b_{2j} \\
        \cdots \\
        b_{sj}
    \end{array}
\right)=a_{i1}b_{1j}+a_{i2}b_{2j}+\cdots+a_{is}b_{sj}=\sum\limits_{k=1}^sa_{ik}b_{kj}=c_{ij}$。

从而$AB=C$的$c_{ij}$就是$A$的第$i$行与$B$的$j$列的乘积。

当$A$左边乘$P$为$PA$，称为**左乘**$P$，若右边乘$P$为$AP$，则称为**右乘**$P$。

[注意：]{style="color: orange"}只有左矩阵的列数等于右矩阵的行数才能相乘。

只有$AB$都是方阵的时候才能$AB$与$BA$。

矩阵的左乘与右乘不一定相等，即$AB\neq BA$。

[**定义：**]{style="color: violet"}若方阵$AB$乘积满足$AB=BA$，则表示其是**可交换**的。

$A\neq O$，$B\neq O$，但是不能推出$AB\neq O$或$BA\neq O$。

$AB=O$不能推出$A=O$或$B=O$。

$A(X-Y)=O$当$A\neq O$也不能推出$X=Y$。

-   $(AB)C=A(BC)$。

-   $\lambda(AB)=(\lambda A)B=A(\lambda B)$。

-   $A(B+C)=AB+AC$。

-   $(B+C)A=BA+CA$。

-   $EA=AE=A$。

$\lambda E$称为**纯量阵**，$(\lambda E_n)A_n=\lambda A_n=A_n(\lambda E_n)$。

若$A_{m\times s}$，$B_{s\times n}=(\beta_1,\cdots,\beta_s)$，其中$\beta$为$n$行的列矩阵，则：

$AB=A(\beta_1,\cdots,\beta_s)=(A\beta_1,\cdots,A\beta_n)$。

## 矩阵幂

只有方阵才能连乘，从而只有方阵才有幂。

若$A$是$n$阶方阵，所以：

$A^1=A\text{，}A^2=A^1A^1\text{，}\cdots\text{，}A^{k+1}=A^kA^1$

-   $A^kA^l=A^{k+l}$。

-   $(A^k)^l=A^{kl}$。

因为矩阵乘法一般不满足交换率，所以$(AB)^k\neq A^kB^k$。只有$AB$可交换时才相等。

若$A\neq 0$不能推出$A^k\neq 0$，如：

$A=\left(
    \begin{array}{cc}
        0 & 2 \\
        0 & 0
    \end{array}
\right)\neq 0$。$A^2=\left(
    \begin{array}{cc}
        0 & 2 \\
        0 & 0
    \end{array}
\right)\left(
    \begin{array}{cc}
        0 & 2 \\
        0 & 0
    \end{array}
\right)=\left(
    \begin{array}{cc}
        0 & 0 \\
        0 & 0
    \end{array}
\right)=O$。

$A=\left(
    \begin{array}{ccc}
        0 & 1 & 1 \\
        0 & 0 & 1 \\
        0 & 0 & 0
    \end{array}
\right)$，$A^3=O$。

矩阵幂可以同普通多项式进行处理。

如$f(x)=a_nx^n+\cdots+a_1x+n$，对于$A$就是$f(A)=a_nA^n+\cdots+a_1A+a_nE$。

$f(A)=A^2-A-6E=(A+2E)(A-3E)$。

## 矩阵转置

把矩阵$A$的行换成同序数的列就得到一个新矩阵，就是$A$的转置矩阵$A^T$。若$A$为$m\times n$，则$A^T$为$n\times m$。

-   $(A^T)^T=A$。

-   $(A+B)^T=A^T+B^T$。

-   $(\lambda A)^T=\lambda A^T$。

-   $(AB)^T=B^TA^T$。

-   若$m=n$，$\vert A\vert=\vert A^T\vert$。

对称矩阵或对称阵[**定义：**]{style="color: violet"}矩阵$A$是方阵，且元素以对角线为对称轴对应相等，$A=A^T$。

反对称矩阵[**定义：**]{style="color: violet"}矩阵$A$是方阵，且满足$-A=A^T$。即$\left\{\begin{array}{l}
    a_{ij}=-a_{ji},i\neq j \\
    a_{ii}=0
\end{array}\right.$。

正交矩阵[**定义：**]{style="color: violet"}矩阵$A$是方阵，且满足$A^TA=E$。

## 方阵行列式

由$n$阶方阵$A$的元素所构成的行列式称为矩阵$A$的行列式，记为$\textrm{det}\,A$或$\vert A\vert$。

-   $\vert A^T\vert=\vert A\vert$。

-   $\vert A^{-1}\vert=\dfrac{1}{\vert A\vert}$。

-   $\vert\lambda A\vert=\lambda^n\vert A\vert$。

-   $\vert AB\vert=\vert A\vert\cdot\vert B\vert=\vert BA\vert$。

一般而言：$\vert A+B\vert\neq\vert A\vert+\vert B\vert$，$\vert A\vert\neq O\nRightarrow\vert A\vert\neq0$，$A\neq B\nRightarrow\vert A\vert\neq\vert B\vert$。

## 伴随矩阵

伴随矩阵或伴随阵[**定义：**]{style="color: violet"}行列式$\vert A\vert$各个元素的代数余子式$A_{ij}$转置构成的矩阵。

$A^*=\left(
    \begin{array}{cccc}
        A_{11} & A_{21} & \cdots & A_{n1} \\
        A_{12} & A_{22} & \cdots & A_{n2} \\
        \vdots & \vdots & \ddots & \vdots \\
        A_{1n} & A_{2n} & \cdots & A_{nn}
    \end{array}
\right)$

-   任何方阵都有伴随矩阵，其中$AA^*=A^*A=\vert A\vert E$。

-   $A^*=\vert A\vert A^{-1}$，$A^{-1}=\dfrac{1}{\vert A\vert}A^*$，$A=\vert A\vert(A^*)^{-1}$。

-   $\vert A^*\vert=\vert A\vert^{n-1}$，$(kA)(kA)^*=\vert kA\vert E$，$A^T(A^T)^*=\vert A^T\vert E$，$A^{-1}(A^{-1})^*=\vert A^{-1}\vert E$，$A^*(A^*)^*=\vert A^*\vert E$。

-   $(A^T)^*=(A^*)^T$，$(A^{-1})^*=(A^*)^{-1}$，$(AB)^*=B^*A^*$，$(A^*)^*=\vert A\vert^{n-2}A$。

**例题：**假设$A$为$n$阶方阵，求$\vert A^*\vert$与$(A^*)^*$。

解：$\because AA^*=A^*A=\vert A\vert E$，$\therefore A^*(A^*)^*=\vert A^*\vert E$。

$(A^*)^{-1}A^*(A^*)^*=(A^*)^*=(A^*)^{-1}\vert A^*\vert E$，又$AA^*=\vert A\vert E$，$\vert AA^*\vert=\vert\vert A\vert E\vert$，

$\therefore\vert A\vert\vert A^*\vert=\vert A\vert^n\vert E\vert$，$\therefore\vert A^*\vert=\vert A\vert^{n-1}$。

又$AA^*=\vert A\vert E$，$\therefore A^*=\vert A\vert A^{-1}$，$(A^*)^{-1}=(\vert A\vert A^{-1})^{-1}=\dfrac{1}{\vert A\vert}A$。

$\because(A^*)^*=(A^*)^{-1}\vert A^*\vert E$，$\therefore=\dfrac{1}{\vert A\vert}A\vert A^*\vert=\dfrac{1}{\vert A\vert}A\vert A\vert^{n-1}=\vert A\vert^{n-2}A$。

**例题：**假设$A$为$n$阶方阵，求$(kA)^*$。

解：根据$AA^*=\vert A\vert E$，$\therefore (kA)(kA)^*=\vert kA\vert E$，推出$(kA)^*=\vert kA\vert(kA)^{-1}$。

$=k^n\vert A\vert\dfrac{1}{k}A^{-1}=k^{n-1}\vert A\vert A^{-1}=k^{n-1}A^*$。

## 分块矩阵

在行列式的时候提到了分块行列式，分块行列式计算时要求对应的零行列式必须是行列数相等的，而对于分块矩阵而言则不要求，且不一定要零矩阵。

对于行列数较多的矩阵常使用**分块法**，将大矩阵化为小矩阵。将矩阵用横纵线分为多个小矩阵，每个矩阵成为矩阵的**子块**，以子块为元素的矩阵就是**分块矩阵**。

### 分块矩阵计算

分块矩阵的计算法则与普通矩阵计算类似。

[**定理：**]{style="color: aqua"}若$AB$矩阵行列数相同，采用相同的分块法，则

$A=\left(
    \begin{array}{ccc}
        A_{11} & \cdots & A_{1r} \\
        \vdots & & \vdots \\
        A_{s1} & \cdots & A_{sr}
    \end{array}
\right)\text{，}B=\left(
    \begin{array}{ccc}
        B_{11} & \cdots & B_{1r} \\
        \vdots & & \vdots \\
        B_{s1} & \cdots & B_{sr}
    \end{array}
\right)$

$A+B=\left(
    \begin{array}{ccc}
        A_{11}+B_{11} & \cdots & A_{1r}+B_{1r} \\
        \vdots & & \vdots \\
        A_{s1}+B_{s1} & \cdots & A_{sr}+B_{sr}
    \end{array}
\right)\text{。}$

[**定理：**]{style="color: aqua"}设$A=\left(
    \begin{array}{ccc}
        A_{11} & \cdots & A_{1r} \\
        \vdots & & \vdots \\
        A_{s1} & \cdots & A_{sr}
    \end{array}
\right)$，$\lambda$为数，则$\lambda A=\left(
    \begin{array}{ccc}
        \lambda A_{11} & \cdots & \lambda A_{1r} \\
        \vdots & & \vdots \\
        \lambda A_{s1} & \cdots & \lambda A_{sr}
    \end{array}
\right)$。

[**定理：**]{style="color: aqua"}若$A_{m\times l}$，$B_{l\times n}$，采用相同的分块法，则

$A=\left(
    \begin{array}{ccc}
        A_{11} & \cdots & A_{1t} \\
        \vdots & & \vdots \\
        A_{s1} & \cdots & A_{st}
    \end{array}
\right)\text{，}B=\left(
    \begin{array}{ccc}
        B_{11} & \cdots & B_{1t} \\
        \vdots & & \vdots \\
        B_{t1} & \cdots & B_{sr}
    \end{array}
\right)$

$AB=\left(
    \begin{array}{ccc}
        C_{11} & \cdots & C_{1r} \\
        \vdots & & \vdots \\
        C_{s1} & \cdots & C_{sr}
    \end{array}
\right)\text{，}C_{ij}=\sum\limits_{k=1}^tA_{ik}B_{kj}\text{。}$

[**定理：**]{style="color: aqua"}设$A=\left(
    \begin{array}{ccc}
        A_{11} & \cdots & A_{1r} \\
        \vdots & & \vdots \\
        A_{s1} & \cdots & A_{sr}
    \end{array}
\right)$，则$A^T=\left(
    \begin{array}{ccc}
        A_{11}^T & \cdots & A_{s1}^T \\
        \vdots & & \vdots \\
        A_{1r}^T & \cdots & A_{sr}^T
    \end{array}
\right)$。

[**定理：**]{style="color: aqua"}设$A$为$n$阶方阵，$A$的分块矩阵只有对角线上才有非零子块且都是方阵，其余子块都是零矩阵，即$A=\left(
    \begin{array}{cccc}
        A_1 & & & O \\
         & A_2 & \\
         & & \ddots & \\
        O & & & A_s
    \end{array}
\right)$，称为**分块对角矩阵**。$\vert A\vert=\vert A_1\vert\vert A_2\vert\cdots\vert A_s\vert$。

若$\vert A_i\vert\neq0$，则$\vert A\vert\neq0$，且$A^{-1}=\left(
    \begin{array}{cccc}
        A_1^{-1} & & & O \\
         & A_2^{-1} & \\
         & & \ddots & \\
        O & & & A_s^{-1}
    \end{array}
\right)$。

### 按行按列分块

对于$m\times n$的矩阵$A$，其$n$列称为$A$的$n$个列向量，若第$j$列记为$a_j=\left(
    \begin{array}{c}
        a_{1j} \\
        a_{2j} \\
        \vdots \\
        a_{mj}
    \end{array}
\right)$，则$A$可以按列分块为$A=(a_1,a_2,\cdots,a_n)$。

其$m$行称为$A$的$m$个行向量，若第$i$行记为$a_i^T=(a_{i1},a_{i2},\cdots,a_{in})$，则$A$可以按行分块为$A=\left(\begin{array}{c}
    a_1^T \\
    a_2^T \\
    \vdots \\
    a_{m}^T
\end{array}\right)$。

若对于$A_{m\times s}$与$B_{s\times n}$的乘积矩阵$AB=C=(c_{ij})_{m\times n}$，若将$A$按行分为$m$块，$B$按列分为$n$块，则有：

$AB=\left(
    \begin{array}{c}
        a_1^T \\
        a_2^T \\
        \vdots \\
        a_{m}^T
    \end{array}
\right)(b_1,b_2,\cdots,b_n)$

$=\left(
    \begin{array}{cccc}
        a_1^Tb_1 & a_1^Tb_2 & \cdots & a_1^Tb_n \\
        a_2^Tb_1 & a_2^Tb_2 & \cdots & a_2^Tb_n \\
        \vdots & \vdots & \ddots & \vdots \\
        a_{m}^Tb_1 & a_{m}^Tb_2 & \cdots & a_{m}^Tb_n
    \end{array}
\right)=(c_{ij})_{m\times n}\text{。}$

其中：$c_{ij}=a_i^Tb_j=(a_{i1},a_{i2},\cdots,a_{is})\left(\begin{array}{c}
    b_{1j} \\
    b_{2j} \\
    \vdots \\
    b_{sj}
\end{array}\right)=\sum\limits_{k=1}^s=a_{ik}b_{kj}\text{。}$

[**定理：**]{style="color: aqua"}$A=O$的充要条件是$A^TA=O$。

证明：$\because A=O$，$\therefore A^T=O$，$A^TA=O$。

设$A=(a_{ij})_{m\times n}$，将$A$按列分块为$A=(a_1,a_2,\cdots,a_n)$，则

$A^TA=\left(
    \begin{array}{c}
        a_1^T \\
        a_2^T \\
        \vdots \\
        a_{m}^T
    \end{array}
\right)(a_1,a_2,\cdots,a_n)=\left(
    \begin{array}{cccc}
        a_1^Ta_1 & a_1^Ta_2 & \cdots & a_1^Ta_n \\
        a_2^Ta_1 & a_2^Ta_2 & \cdots & a_2^Ta_n \\
        \vdots & \vdots & \ddots & \vdots \\
        a_{m}^Ta_1 & a_{m}^Ta_2 & \cdots & a_{m}^Ta_n
    \end{array}
\right)\text{。}$

所以$A^TA$的元为$a^T_ia_j$，又$\because A^TA=O$，$\therefore a^T_ia_j=0$（$i,j=1,2,\cdots n$）。

$\therefore a^T_ja_j=0$（$j=1,2,\cdots n$），对角线元素全部为0。

且$a^T_ja_j=\left(
    \begin{array}{cccc}
        a_1^Ta_1 & & & \\
         & a_2^Ta_2 & & \\
         & & \ddots & \\
         & & & a_{m}^Ta_n
    \end{array}
\right)=(a_{1j},a_{2j},\cdots,a_{mj})\left(\begin{array}{c}
    a_{1j} \\
    a_{2j} \\
    \vdots \\
    a_{mj}
\end{array}\right)$

$=a_{1j}^2+a_{2j}^2+\cdots+a_{mj}^2=0$，所以$a_{1j}=a_{2j}=\cdots+a_{mj}=0$。

$\therefore A=O$。

# 逆矩阵

## 逆矩阵定义

逆矩阵就是类似矩阵的除运算。

[**定义：**]{style="color: violet"}逆矩阵类比倒数，若对于$n$阶方阵$A$，有一个$n$阶方阵$B$，使得$AB=BA=E$，则$A$可逆，$B$是$A$的逆矩阵也称为逆阵，且逆矩阵唯一，记为$B=A^{-1}$。

[**定理：**]{style="color: aqua"}若方阵$A$可逆，则$\vert A\vert\neq 0$。

证明：若$A$可逆，则$AA^{-1}=E$，所以$\vert A\vert\cdot\vert A^{-1}\vert=\vert E\vert=1$，$\vert A\vert\neq 0$。

可以类比普通数字，若$a$有一个倒数$\dfrac{1}{a}$，则$a\neq 0$，否则无法倒。

[**定理：**]{style="color: aqua"}若$\vert A\vert\neq 0$，则$A$可逆，且$A^{-1}=\dfrac{1}{\vert A\vert}A^*$。

证明：$\because AA^*=A^*A=\vert A\vert E$，又$\vert A\vert\neq 0$，$A\dfrac{1}{\vert A\vert}A^*=\dfrac{1}{\vert A\vert}A^*A=E$。

按逆矩阵定义，当$A$可逆，与$A^{-1}=\dfrac{1}{\vert A\vert}A^*$。

当$\vert A\vert=0$时，$A$为**奇异矩阵**，否则是**非奇异矩阵**。

[**定理：**]{style="color: aqua"}矩阵是可逆矩阵的必要条件是非奇异矩阵。

[**定理：**]{style="color: aqua"}若$AB=E$或$BA=E$，则$B=A^{-1}$。

## 逆矩阵性质

-   若$A$可逆，则$(A^{-1})^{-1}=A$。

-   若$A$可逆，数$\lambda\neq0$，则$(\lambda A)^{-1}=\dfrac{1}{\lambda}A^{-1}$。

-   若$AB$为同阶矩阵且都可逆，则$(AB)^{-1}=B^{-1}A^{-1}$。

-   若$A$可逆，则$(A^T)^{-1}=(A^{-1})^T$。

-   若$A$可逆，则$\vert A^{-1}\vert=\vert A\vert^{-1}$。

-   若$A$可逆，$\lambda\mu$为整数时，$A^\lambda A^\mu=A^{\lambda+\mu}$，$(A^\lambda)^\mu=A^{\lambda\mu}$。

若$A$、$B$可逆，则$A+B$不一定可逆，且$(A+B)^{-1}\neq A^{-1}+B^{-1}$。

## 求逆矩阵

### 伴随矩阵

根据伴随矩阵的定义，即求出矩阵所代表行列式的各行元素的代数余子式，然后按列进行排列。

只能求四阶以下的矩阵，过高阶的矩阵很难求出。

1.  求出$\vert A\vert$，判断是否为0。

2.  写出$A^*$。

3.  计算$A^{-1}=\dfrac{1}{\vert A\vert}A^*$。

### 初等变换

可以利用初等变换来求逆矩阵。

# 矩阵初等变换

可以使用矩阵初等变换来实现求逆矩阵。且初等变换还可以用来求线性方程组的解。

## 初等变换

矩阵的三种初等行变换，互换、倍乘、倍加：

1.  对换两行（对换$ij$两行，记为$r_i\leftrightarrow r_j$）。

2.  以数$k\neq0$乘某一行中的所有元（第$i$行乘$k$，记为$r_i\times k$），对角线元素全部为0。

3.  把某一行所有元的$k$倍加到另一行对应元上（第$j$行的$k$倍加上第$i$行上，记为$r_i+kr_j$）。

把对应的行换为列就得到初等列变换，将$r$改为$c$。其逆变换也是一种初等变换。初等行变换和初等列变换都是**初等变换**。

[**定义：**]{style="color: violet"}若$A$经过有限次行变换得到$B$，则称$AB$行等价，记为$A\overset{r}{\sim}B$；若$A$经过有限次列变换得到$B$，则称$AB$行等价，记为$A\overset{c}{\sim}B$；若$A$经过有限次初等变换得到$B$，则称$AB$行等价，记为$A\sim B$。

矩阵之间的等价关系：

1.  反身性：$A\sim A$。

2.  对称性：若$A\sim B$，则$B\sim A$。

3.  传递性：若$A\sim B$，$B\sim C$，则$A\sim C$。

若是解方程组，则使用初等行变换解不会发生改变，若使用初等列变换则会改变解。

## 阶梯型矩阵

将方程式用增广矩阵表示，然后通过初等行变换就可以对方程式进行消元。得到如下类型的矩阵结果，类似三角行列式，如：

::: multicols
2

$\left(
    \begin{array}{@{} c c c c c @{}}
        \multicolumn{1}{: c}{1} & 2 & -1 &  3 &  4 \\
      \cdashline{1-1}
      0 & \multicolumn{1}{: c}{1} &  3 & -2 & -1 \\
      \cdashline{2-5}
      0 & 0 &  0 &  0 &  0 \\
      0 & 0 &  0 &  0 &  0
    \end{array}
    \right)$

竖线区分零元素与非零元素，每行的竖线右方第一个元素，称为该非零行的**首非零元**。
:::

行阶梯形矩阵[**定义：**]{style="color: violet"}非零行在零行的上面，非零行的首非零元素所在列在上一行首非零元素所在列的右边的非零矩阵。

行最简形矩阵[**定义：**]{style="color: violet"}非零行的首非零元素为1，首非零元所在列其他的元全部为0的行阶梯矩阵。

对于任何矩阵都能通过初等列变换变为行阶梯形矩阵和行最简形矩阵，再通过列变换可以变为**标准形**：左上角是一个单位矩阵，其他元全部是0。

## 初等变换性质

[**定理：**]{style="color: aqua"}设$AB$都是$m\times n$矩阵，初等变换与矩阵乘积关系：

1.  $A\overset{r}{\sim}B$的充要条件是存在$m$阶可逆矩阵$P$，使得$PA=B$。

2.  $A\overset{c}{\sim}B$的充要条件是存在$n$阶可逆矩阵$Q$，使得$AQ=B$。

3.  $A\sim B$的充要条件是存在$m$阶可逆矩阵$P$和$n$阶可逆矩阵$Q$，使得$PAQ=B$。

初等变换具有如下性质：

-   设$A$是一个$m\times n$矩阵，对$A$进行一次初等行变换，相当于在$A$左乘对应$m$阶初等矩阵；对$A$进行一次列变换，相当于在$A$右乘对应$n$阶初等矩阵。

-   方阵$A$可逆的充分必要条件是存在有限个初等矩阵$P_i$使得$A=\prod\limits_{i=1}^nP_i$。

-   可逆方阵$A$一定可以通过有限次初等变换化为同阶单位矩阵$E$。

-   方阵$A$可逆的充要条件是$A\overset{r}{\sim}E$。（即$A$方阵所代表的线性方程组能通过初等计算得到最后的解）

对于$A_{m\times n}$进行初等变换：

1.  第$ij$行对换：$E_m(ij)A$，第$ij$列变换：$AE_n(ij)$。

2.  数$k$乘第$i$行：$E_m(i(k))A$，数$k$乘第$i$列：$AE_n(i(k))$。

3.  数$k$乘第$j$行加到$i$行：$E_m(ij(k))A$，数$k$乘第$j$列加到$i$列：$AE_n(ij(k))$。

已知$A$经过无数次初等变换就能变成单位矩阵，即通过乘无数个初等矩阵就可以变成单位矩阵，那么这些初等矩阵是什么呢？

例如$A=\left(\begin{array}{cc}
    1 & 2 \\
    2 & 3
\end{array}\right)$要变成$\left(\begin{array}{cc}
    1 & 2 \\
    0 & -1
\end{array}\right)$，就需要将第一排的数据乘-2加到第二排。

即按照初等矩阵的表示方法就是$E_{21}(-2)$，然后这个初等矩阵就是对单位矩阵进行同样变换。

即$E_{21}(-2)$就是将初等矩阵第一排的数据乘-2加到第二排，得到$E_{21}(-2)=\left(\begin{array}{cc}
    1 & 0 \\
    -2 & 1
\end{array}\right)$，而行变换$\left(\begin{array}{cc}
    1 & 0 \\
    -2 & 1
\end{array}\right)\left(\begin{array}{cc}
    1 & 2 \\
    2 & 3
\end{array}\right)=\left(\begin{array}{cc}
    1 & 2 \\
    0 & -1
\end{array}\right)$，果然就得到目标结果。

从而对一个矩阵进行初等行变换就是左乘一个进行同样行变换的初等矩阵，列变换同理。

## 初等矩阵性质

初等矩阵[**定义：**]{style="color: violet"}由单位矩阵$E$经过一次初等变换得到的矩阵。所以初等矩阵都是方阵。

-   初等矩阵的转置也是初等矩阵。

-   对初等矩阵进行行或列变换，$\vert E_{ij}\vert=-1$，对其求逆：$E_{ij}^{-1}=E_{ij}$。

-   对初等矩阵$i$行乘$k$，$\vert E_i(k)\vert=k$，对其求逆：$E_i(k)^{-1}=E_i\left(\dfrac{1}{k}\right)$。

-   对初等矩阵第$j$行乘$k$加到$i$行，$\vert E_{ij}(k)\vert=1$，对其求逆：$E_{ij}(k)^{-1}=E_{ij}(-k)$。

## 初等行变换求逆

若该矩阵$A$是可逆矩阵，就将$AX=B$的增广矩阵$(A,B)$化为最简形矩阵，从而得到方程解。

$\because P_i\cdots P_2P_1A=E$，$P_i\cdots P_2P_1E=A^{-1}$。

$\left[A\vdots B\right]\overset{r}{\sim}\left[E\vdots A^{-1}\right]$，$\left[\begin{array}{c}
    A \\
    B
\end{array}\right]\overset{c}{\sim}\left[\begin{array}{c}
    E \\
    A^{-1}
\end{array}\right]$。

**例题：**求解矩阵方程$AX=B$，$A=\left(\begin{array}{ccc}
    2 & 1 & -3 \\
    1 & 2 & -2 \\
    -1 & 3 & 2
\end{array}\right)$，$B=\left(\begin{array}{cc}
    1 & -1 \\
    2 & 0 \\
    -2 & 5
\end{array}\right)$。

解：因为$AX=B$，所以左乘$A^{-1}$：$A^{-1}AX=EX=A^{-1}B$，增广矩阵行变换：

$(A,B)=\left(\begin{array}{ccccc}
    2 & 1 & -3 & 1 & -1 \\
    1 & 2 & -2 & 2 & 0 \\
    -1 & 3 & 2 & -2 & 5
\end{array}\right)\sim\left(\begin{array}{ccccc}
    1 & 2 & -2 & 2 & 0 \\
    0 & -3 & 1 & -3 & -1 \\
    0 & 5 & 0 & 0 & 5
\end{array}\right)$

$\sim\left(\begin{array}{ccccc}
    1 & 2 & -2 & 2 & 0 \\
    0 & 1 & 0 & 0 & 1 \\
    0 & 0 & 1 & -3 & 2
\end{array}\right)\sim\left(\begin{array}{ccccc}
    1 & 0 & 0 & -4 & 2 \\
    0 & 1 & 0 & 0 & 1 \\
    0 & 0 & 1 & -3 & 2
\end{array}\right)$，从而$X=\left(\begin{array}{cc}
    -4 & 2 \\
    0 & 1 \\
    -3 & 2
\end{array}\right)$。

# 矩阵秩

## 定义

秩的本质就是组成矩阵的线性无关的向量个数。

若秩等于矩阵行数就是满秩，否则就是降秩。

## 性质

$r(kA)=r(A)$。

$r(AB)\leqslant\min\{r(A),r(B)\}$。当且仅当$AB$满秩等号成立。

$r(A+B)\leqslant r(A|B)\leqslant r(A)+r(B)$。

$r(A^*)=\left\{\begin{array}{l}
    n, r(A)=n \\
    1, r(A)=n-1 \\
    0, r(A)<n-1
\end{array}\right.$。

$AB=O$，$r(A)+r(B)\leqslant A$的列数。

# 等价矩阵

## 定义

[**定义：**]{style="color: violet"}若有两个同型的$m\times n$的矩阵$AB$，满足$B=QAP$（$Q$为$m\times m$阶可逆矩阵，$P$为$n\times n$阶可逆矩阵），则$AB$等价。

## 性质

-   矩阵$A$和$A$等价（反身性）。

-   矩阵$A$和$B$等价，那么$B$和$A$也等价（等价性）。

-   矩阵$A$和$B$等价，矩阵$B$和$C$等价,那么$A$和$C$等价（传递性）。

-   矩阵$A$和$B$等价，那么$\vert A\vert=k\vert B\vert$。（$k$为非零常数）。

-   具有行等价关系的矩阵所对应的线性方程组有相同的解。

## 判定

[**定理：**]{style="color: aqua"}若$AB$同型且秩相等，则其等价。
