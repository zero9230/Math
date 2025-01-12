---
author:
- Didnelpsun
title: 相似
---

特征值往往与前面的内容进行混合考察。

# 特征值与特征向量

## 迹

**例题：**已知$A$是3阶方阵，特征值为1，2，3，求$\vert A\vert$的元素$a_{11},a_{22},a_{33}$的代数余子式$A_{11},A_{22},A_{33}$的和$\sum\limits_{i=1}^3A_{ii}$。

解：首先代数余子式的和$A_{11},A_{22},A_{33}$一般在行列式展开定理中使用，但是这里给出的不是一行或一列的代数余子式，而是主对角线上的代数余子式，这就无法使用代数余子式来表达行列式的值了。

而另一个提到代数余子式的地方就是伴随矩阵$A^*$，所求的正好是伴随矩阵的迹$tr(A^*)=A_{11}+A_{22}+A_{33}$。

又根据特征值性质，特征值的和为矩阵的迹，特征值的积为矩阵行列式的值，所以$tr(A^*)=A_{11}+A_{22}+A_{33}=\lambda_1^*+\lambda_2^*+\lambda_3^*$

$=\sum\limits_{i=1}^3\dfrac{\vert A\vert}{\lambda_i}=\sum\limits_{i=1}^3\dfrac{\lambda_1\lambda_2\lambda_3}{\lambda_i}=\lambda_2\lambda_3+\lambda_1\lambda_3+\lambda_1\lambda_2=2+3+6=11$。

## 逆矩阵

通过相关式子将逆矩阵转换为原矩阵。同一个向量的逆矩阵的特征值是原矩阵的特征值的倒数。

**例题：**已知$\overrightarrow{\alpha}=(a,1,1)^T$是矩阵$A=\left[\begin{array}{ccc}
    -1 & 2 & 2 \\
    2 & a & -2 \\
    2 & -2 & -1
\end{array}\right]$的逆矩阵的特征向量，则求$\overrightarrow{\alpha}$在矩阵$A$中对应的特征值。

解：由于$\overrightarrow{\alpha}$是$A^{-1}$的特征向量，所以令此时的特征值为$\lambda_0$，则定义$\lambda_0\overrightarrow{\alpha}=A^{-1}\overrightarrow{\alpha}$，$\lambda_0A\overrightarrow{\alpha}=\overrightarrow{\alpha}$。

即$\lambda_0\left[\begin{array}{ccc}
    -1 & 2 & 2 \\
    2 & a & -2 \\
    2 & -2 & -1
\end{array}\right]\left[\begin{array}{c}
    a \\
    1 \\
    1 \\
\end{array}\right]=\left[\begin{array}{c}
    a \\
    1 \\
    1 \\
\end{array}\right]$，即$\lambda_0\left[\begin{array}{ccc}
    -a & 2 & 2 \\
    2a & a & -2 \\
    2a & -2 & -1
\end{array}\right]=\left[\begin{array}{c}
    a \\
    1 \\
    1 \\
\end{array}\right]$。

即根据矩阵代表的是方程组，得到$\lambda_0(4-a)=a$，$\lambda_0(3a-2)=1$，$\lambda_0(2a-3)=1$。

又$\lambda_0\neq0$，$3a-2=2a-3$，$a=-1$，则$\lambda_0=-\dfrac{1}{5}$。

所以矩阵$A$对应的特征值为$-5$。

## 抽象型

题目只会给对应的式子，来求对应的特征向量或特征值。需要记住特征值的关系式然后与给出的式子上靠拢，不会很复杂。

**例题：**已知$A$为三阶矩阵，且矩阵$A$各行元素之和均为5，则求$A$必然存在的特征向量。

解：由于是抽象型，所以没有实际的数据，就不能求出固定的特征值，$\lambda\xi=A\xi$。

又矩阵$A$各行元素之和均为5，所以转换为方程组：

$\left\{\begin{array}{l}
    A_{11}+A_{12}+A_{13}=5 \\
    A_{21}+A_{22}+A_{23}=5 \\
    A_{31}+A_{32}+A_{33}=5
\end{array}\right.$，转为矩阵：$\left[\begin{array}{ccc}
    A_{11} & A_{12} & A_{13} \\
    A_{21} & A_{22} & A_{23} \\
    A_{31} & A_{32} & A_{33}
\end{array}\right]\left[\begin{array}{c}
    1 \\
    1 \\
    1 \\
\end{array}\right]=5\left[\begin{array}{c}
    1 \\
    1 \\
    1 \\
\end{array}\right]$。

即$\xi=(1,1,1)^T$。

## 可逆矩阵

使用可逆矩阵相似对角化的性质。若$A\sim B$，则$P^{-1}AP=B$。$B$为纯量阵。且$B$的迹为$A$的特征值。$P$为特征向量。

**例题：**已知$P^{-1}AP=\left[\begin{array}{ccc}
    1 \\
     & 1 \\
     & & -1
\end{array}\right]$，$P=(\alpha_1,\alpha_2,\alpha_3)$可逆，求$A$关于特征值$\lambda=1$的特征向量。

解：根据$P^{-1}AP=\Lambda$，所以$P$为特征向量，$1,1,-1$为特征值。

所以$A$关于$\lambda=1$的特征向量为$\alpha_1$或$\alpha_2$。而某一特征值的全部特征向量构成特征向量子空间，所以$\lambda=1$的特征向量为$k_1\alpha_1+k_2\alpha_2$。

## 实对称矩阵

实对称矩阵的不同特征值的特征向量相互正交（$B^TA=0$）。

**例题：**已知$A$为三阶实对称矩阵，特征值为$1,3，-2$，其中$\alpha_1=(1,2,-2)^T$，$\alpha_2=(4,-1,a)^T$分别属于特征值$\lambda=1$，$\lambda=3$的特征向量。求$A$属于特征值$\lambda=-2$的特征向量。

解：令$A$属于特征值$\lambda=-2$的特征向量为$(x_1,x_2,x_3)^T$。

根据实对称矩阵的正交性质。

$\alpha_1^T\alpha_2=4-2-2a=0$，$\alpha_2^T\alpha_3=4x_1-x_2+ax_3=0$，$\alpha_3^T\alpha_1=x_1+2x_2-2x_3=0$。

$a=1$，$4x_1-x_2+x_3=0$，$x_1+2x_2-2x_3=0$，解得基础解系$(0,1,1)^T$,$\alpha_3=(0,k,k)^T$（$k\neq0$）。

# 相似理论

## 判断相似对角化

可以使用相似对角化的四个条件，但是最基本的使用还是$A$有$n$个无关的特征向量$\xi$。

## 反求参数

常用方法：

-   若$A\sim B$，则$\vert A\vert=\vert B\vert$，$r(A)=r(B)$，$tr(A)=tr(B)$，$\lambda_A=\lambda_B$，通过等式计算参数。

-   若$\xi$是$A$属于特征值$\lambda$的特征向量，则有$A\xi=\lambda\xi$，建立若干等式或方程组来计算参数。

-   若$\lambda$是$A$的特征值，则与$\vert\lambda E-A\vert=0$，通过该等式计算参数。

**例题：**已知$A=\left(\begin{array}{ccc}
    2 & 0 & 0 \\
    0 & 0 & 1 \\
    0 & 1 & x
\end{array}\right)$，$B=\left(\begin{array}{ccc}
    2 \\
     & y \\
     & & -1
\end{array}\right)$，且$A\sim B$，求参数。

首先可以利用迹相等，则$2+0+x=2+y-1$，行列式值相等，则$-2=-2y$，解得$x=0$，$y=1$。

## 反求矩阵

若有可逆矩阵$P$，使得$P^{-1}AP=\Lambda$，则：

-   $A=P\Lambda P^{-1}$。

-   $A^k=P\Lambda^kP^{-1}$。

-   $f(A)=Pf(\Lambda)P^{-1}$。

**例题：**已知$A=\left(\begin{array}{ccc}
    2 & x & 1 \\
    0 & 3 & 0 \\
    3 & -6 & 0
\end{array}\right)$相似于对角矩阵，求$A^{100}$。

解：首先$A\sim\Lambda$，所以$A$能相似对角化。

$\vert\lambda E-A\lambda=\left|\begin{array}{ccc}
    \lambda-2 & -x & -1 \\
    0 & \lambda-3 & 0 \\
    -3 & 6 & \lambda
\end{array}\right|=(\lambda-3)^2(\lambda+1)=0$。$\lambda_1=\lambda_2=3$，$\lambda_3=-1$。

所以对于$\lambda_1=\lambda_2=3$时，需要$s=2$，从而$r(A)=1$，对应成比例。

代入3：$(3E-A)x=0$，$\left(\begin{array}{ccc}
    1 & -x & -1 \\
    0 & 0 & 0 \\
    -3 & 6 & 3
\end{array}\right)=0$，所以$\dfrac{-1}{3}=\dfrac{-x}{6}$，$x=2$。

解得$\xi_1=(1,0,1)^T$，$\xi_2=(2,1,0)^T$，$\xi_3=(1,0,-3)^T$。

令$P=(\xi_1,\xi_2,\xi_3)$，所以$A=P\Lambda P^{-1}$，$A^{100}=P\Lambda^{100}P^{-1}$。

## 相似性

-   定义法：若存在可逆矩阵$P$，使得$P^{-1}AP=B$，则$A\sim B$。

-   性质：若$A\sim B$，则$r(A)=r(B)$，$\vert A\vert=\vert B\vert$，$tr(A)=tr(B)$，$\lambda_A=\lambda_B$。

-   传递性：$A\sim\Lambda$，$\Lambda\sim B$，则$A\sim B$。

**例题：**已知矩阵$A=\left[\begin{array}{ccc}
    3 & 1 & 2 \\
    0 & 2 & a \\
    0 & 0 & 3
\end{array}\right]$和对角矩阵相似，求$a$。

解：由于$A$是对角矩阵，所以特征值为其迹$\lambda=(3,2,3)$。特征值有二重根。

已知$A\sim\Lambda$，$\lambda=3$有两个线性无关的特征向量。即$(3E-A)x=0$有两个线性无关的解。即$r(3E-A)=1$。

$3E-A=\left[\begin{array}{ccc}
    0 & -1 & -2 \\
    0 & 1 & -a \\
    0 & 0 & 0
\end{array}\right]=\left[\begin{array}{ccc}
    0 & -1 & -2 \\
    0 & 0 & -a-2 \\
    0 & 0 & 0
\end{array}\right]$，$\therefore a=-2$。

## 抽象型

**例题：**设$A$是三阶矩阵，$\alpha_1,\alpha_2,\alpha_3$是三维线性无关的列向量，且$A\alpha_1=\alpha_2+\alpha_3$，$A\alpha_2=\alpha_1+\alpha_3$，$A\alpha_3=\alpha_1+\alpha_2$，求$A$相似的矩阵。

解：$A\sim\Lambda$，则$P^{-1}AP=\Lambda$。

$A(\alpha_1,\alpha_2,\alpha_3)=(\alpha_2+\alpha_3,\alpha_1+\alpha_3,\alpha_1+\alpha_2)=(\alpha_1,\alpha_2,\alpha_3)\left[\begin{array}{ccc}
    0 & 1 & 1 \\
    1 & 0 & 1 \\
    1 & 1 & 0
\end{array}\right]$。

记$P=(\alpha_1,\alpha_2,\alpha_3)$，$B=\left[\begin{array}{ccc}
    0 & 1 & 1 \\
    1 & 0 & 1 \\
    1 & 1 & 0
\end{array}\right]$。

又$\alpha_1,\alpha_2,\alpha_3$是三维线性无关的列向量，$\therefore\vert\alpha_1,\alpha_2,\alpha_3\vert\neq0$，所以$P$可逆。

$\therefore AP=PB$，$P^{-1}AP=B$，$A\sim B$。

## 正交相似

**例题：**已知$A$是三阶实对称矩阵，若正交矩阵$Q$使得$Q^{-1}AQ=\left[\begin{array}{ccc}
    3 & 0 & 0 \\
    0 & 3 & 0 \\
    0 & 0 & 6
\end{array}\right]$，如果$\alpha_1=(1,0,-1)^T$和$\alpha_2=(0,1,1)^T$是矩阵$A$属于特征值$\lambda=3$的特征向量，求$Q$。

解：首先由正交矩阵就可以知道各特征值正交。令$\alpha_3=(x_1,x_2,x_3)^T$。对应的$\lambda_3=6$。

$\alpha_3^T\alpha_1=x_1-x_3=0$，$\alpha_3^T\alpha_2=x_2+x_3=0$，求$\lambda_3$的特征值，则不如令$x_3=1$，则解得$\alpha_3=(1,-1,1)^T$。

这样$Q=\left[\begin{array}{ccc}
    1 & 0 & 1 \\
    0 & 1 & -1 \\
    -1 & 1 & 1
\end{array}\right]$，还需要将$Q$正交单位化。可知$\alpha_3$根据正交规律求出来，一定是正交的，而$\alpha_1^T\alpha_2=-1\neq0$所以需要正交。

令$\beta_1=\alpha_1=(1,0,-1)^T$，$\beta_2=\alpha_2-\dfrac{<\alpha_2,\beta_1>}{<\beta_1,\beta_1>}\beta_1=(0,1,1)^T+\dfrac{1}{2}(1,0,-1)^T=(\dfrac{1}{2},1,\dfrac{1}{2})^T$。

最后对整个$Q$进行单位化：$\gamma_1=\dfrac{1}{\sqrt{2}}(1,0,-1)^T$，$\gamma_2=\dfrac{1}{\sqrt{6}}(1,2,1)^T$，$\gamma_3=\dfrac{1}{\sqrt{3}}(1,-1,1)^T$。
