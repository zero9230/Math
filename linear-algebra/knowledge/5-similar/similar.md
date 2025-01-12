---
author:
- Didnelpsun
title: 相似
---

主要包括特征值与特征向量，相似矩阵，对角矩阵。

这里的矩阵都是指方阵。

# 特征值与特征向量

## 定义

设$A$是$n$阶矩阵，$\lambda$是一个数，若存在$n$维非零列向量$\xi\neq0$，使得$A\xi=\lambda\xi$，则$\lambda$是$A$的特征值，$\xi$是$A$的对应于特征值$\lambda$的特征向量。

## 性质

### 特征值性质

设$A=(a_{ij})_{n\times n}$，$\lambda_i$（$i=1,2,\cdots,n$）是$A$的特征值，则：

-   $\sum\limits_{i=1}^n\lambda_i=\sum\limits_{i=1}^n=tr(A)$。主对角线元素和即矩阵的迹。

-   $\prod\limits_{i=1}^n\lambda_i=\vert A\vert$。

### 特征向量性质

-   $k$重特征值$\lambda$至多只有$k$个线性无关的特征向量。

-   若$\xi_1$和$\xi_2$是$A$的属于不同特征值$\lambda_1$和$\lambda_2$的特征向量，则$\xi_1$和$\xi_2$线性无关。

-   若$\xi_1$和$\xi_2$是$A$的属于同特征值$\lambda$的特征向量，则$k_1\xi_1+k_2\xi_2$（$k_1k_2$不同时为0）仍是$A$的属于特征值$\lambda$的特征向量。

证明性质二：利用定义法，首先$A\xi_1=\lambda_1\xi_1$，$A\xi_2=\lambda_2\xi_2$。

要证明两个特征向量线性无关，则证明$k_1\xi_1+k_2\xi_2=0$时$k_1=k_2=0$。

$Ak_1\xi_1+Ak_2\xi_2=k_1\lambda_1\xi_1+k_2\lambda_1\xi_2=0$。又$k_1\xi_1+k_2\xi_2=\lambda_1k_1\xi_1+\lambda_1k_2\xi_2=0$，

两式相减：$k_2(\lambda_2-\lambda_1)\xi_2=0$，且$\lambda_1\neq\Lambda_2$，$\xi_2\neq0$，$\therefore k_2=0$。

代入$k_1\xi_1+k_2\xi_2=0$，即$k_1\xi_1=0$，又$\xi_1\neq0$，$\therefore k_1=0$。

### 特征值与特征向量

-   若特征值不相等，则特征向量线性无关。

-   若特征值相等，则特征向量可能线性相关也可能线性无关。

性质一是因为特征向量的性质而来。从几何来理解，特征向量表示的是矩阵变换中只有伸缩变换没有旋转变换的方向向量，特征值是这个方向的伸缩系数，一个方向当然只有一个伸缩系数。

## 运算

$\because\lambda\xi-A\xi=0$，$\therefore(\lambda E-A)\xi=0$，又$\xi\neq0$，$\therefore(\lambda E-A)x=0$有非零解。

从而$\lambda E-A$所表示的方阵线性相关，为降秩，从而$\vert\lambda E-A\vert=0$。

$\vert\lambda E-A\vert=0$也称为特征方程或是特征多项式，解出的$\lambda_i$就是特征值。

将$\lambda_i$代回原方程，根据极大线性无关组解出通解就是$\xi$。

### 具体型

[**定理：**]{style="color: aqua"}若矩阵$A$为对角线矩阵，则特征值为对角线上元素。

[**定理：**]{style="color: aqua"}若$n$阶矩阵$A$行或列对应成比例，即$r(A)=1$，则$\lambda_1=\lambda_2=\cdots=\lambda_{n-1}=0$，$\lambda_n=tr(A)$。

[注意：]{style="color: orange"}特征向量因为要求不为0，所以需要$k\neq0$。

[注意：]{style="color: orange"}得到多重特征值时要全部写出，$\lambda_1=\lambda_2=\cdots=\lambda_n=\lambda$。

**例题：**求$A=\left(\begin{array}{ccc}
    2 & -2 & 0 \\
    -2 & 1 & -2 \\
    0 & -2 & 0
\end{array}\right)$的特征值与特征向量。

$\vert\lambda E-A\vert=\left|\begin{array}{ccc}
    \lambda_2 & 2 & 0 \\
    2 & \lambda-1 & 2 \\
    0 & 2 & \Lambda
\end{array}\right|=(\lambda-2)(\lambda-1)\lambda-4\lambda-4(\lambda-2)=\lambda^3-3\lambda^2-6\lambda+8=(\lambda+2)(\lambda-1)(\lambda-4)=0$。

$\therefore\lambda_1=-2$，$\lambda_2=1$，$\lambda=4$。

当计算$\vert\lambda E-A\vert$时往往难点就是从多项式中解出$\lambda$，对于$f(\lambda)=a_k\lambda^k+\cdots+a_1\lambda+a_0=0$，可以使用试根法：

1.  若$a_0=0$，$\lambda=0$就是其根。

2.  若$a_k+\cdots+a_1+a_0=0$，$\lambda=1$就是其根。

3.  若$a_0+a_2+\cdots+a_{2k}=a_1+a_3\cdots+a_{2k-1}$，$\lambda=-1$就是其根。

4.  若$a_k=1$，且系数都是整数，则有理根是整数，且均为$a_0$的因子。

对于第四个，如$\lambda^3-4\lambda^2+3\lambda+2=0$，2的因子为$\pm1$和$\pm2$，分别代入得到一根为2。

### 抽象型

1.  利用定义，寻找$A\xi=\lambda\xi$，$\xi\neq0$，$\lambda$是$A$的特征值，$\xi$是$A$属于$\lambda$的特征向量。

2.  根据$\vert\lambda E-A\vert=0$计算出对应的$\lambda$值，再计算$\xi$的值。

     矩阵        $A$         $kA$         $A^k$         $f(A)$         $A^{-1}$              $A^*$            $P^{-1}AP$      $A^T$
  ---------- ----------- ------------ ------------- -------------- ---------------- ------------------------ ------------- -----------
    特征值    $\lambda$   $k\lambda$   $\lambda^k$   $f(\lambda)$   $\lambda^{-1}$   $\vert A\vert/\lambda$    $\lambda$    $\lambda$
   特征向量     $\xi$       $\xi$         $\xi$         $\xi$           $\xi$                $\xi$            $P^{-1}\xi$     无关

**例题：**设$A$为$n$阶矩阵，且$A^T=A$（此时$A$就是幂等矩阵）。

(1)求$A$的特征值可能的取值。

(2)证明$E+A$是可逆矩阵。

(1)解：$\because A^2=A$，$\therefore f(A)=A^2-A=0$，$f(\lambda)=\lambda^2-\lambda=0$，$\lambda_1=0$，$\lambda_2=1$。

值得注意的是这里求的$\lambda$是可能的取值，因为不同的矩阵特征值不同，只有通过$\vert\lambda E-A\vert=0$的值才是真实的特征值。

# 相似理论

特征值和特征向量应用于矩阵的相似。

## 矩阵相似

### 定义

[**定义：**]{style="color: violet"}设$A,B$是两个$n$阶方阵，若存在$n$阶可逆矩阵$P$，使得$P^{-1}AP=B$，则称$A$相似于$B$，记为$A\sim B$。

其实就是对矩阵进行初等变换。

### 性质

相似的性质：

1.  反身性：$A\sim A$。

2.  对称性：若$A\sim B$，则$B\sim A$。

3.  传递性：若$A\sim B$，$B\sim C$，则$A\sim C$。

相似与其他部分的关系。

-   若$A\sim B$，$r(A)=r(B)$，$\vert A\vert=\vert B\vert$，$\vert\lambda E-A\vert=\vert\lambda E-B\vert$，$tr(A)=tr(B)$，$AB$具有相同的特征值。但是反之不能推出。

-   若$A\sim B$，$A^m\sim B^m$，$f(A)\sim f(B)$。

-   若$A\sim B$，且$A$可逆，则$A^{-1}\sim B^{-1}$，$f(A^{-1})\sim f(B^{-1})$。

-   若$A\sim B$，$A^T\sim B^T$，$A^*\sim B^*$。

## 可逆矩阵相似对角化

### 定义

[**定义：**]{style="color: violet"}设$n$阶矩阵$A$，若存在$n$阶可逆矩阵$P$，使得$P^{-1}AP=\Lambda$，其中$\Lambda$为对角矩阵（纯量阵，即对角线元素不全为0，其他元素全为0），则称$A$可**相似对角化**，记为$A\sim\Lambda$，称$\Lambda$是$A$的**相似标准形**。

为什么要选择$\Lambda$？，因为对角矩阵计算非常简单，只需要对对角线元素进行运算就可以了。

### 对角化条件

$\because P^{-1}AP=\Lambda$，$AP=P\Lambda$，将$P$拆解为列向量组合：

$A(\xi_1,\xi_2,\cdots,\xi_n)=(\xi_1,\xi_2,\cdots,\xi_n)\left(\begin{array}{cccc}
    \lambda_1 \\
     & \lambda_2 \\
     & & \ddots \\
     & & & \lambda_n
\end{array}\right)$

$(A\xi_1,A\xi_2,\cdots,A\xi_n)=(\lambda_1\xi_1,\lambda_2\xi_2,\cdots,\lambda_n\xi_n)$，$A\xi_i=\lambda_i\xi_i$，$i=1,2,\cdots,n$。

由于$P$可逆，从而$\xi$线性无关，$\xi\neq0$，$\xi$为特征向量，$\lambda$是特征值。

$A\sim\Lambda$的充要条件是：$A$有$n$个线性无关的特征向量；$A$对应每个$k_i$重特征值都有$k_i$个线性无关的特征向量。

$A\sim\Lambda$的充分条件是：$n$解矩阵$A$有$n$个不同的特征值；$A$为实对称方阵。（$A$可相似对角化不能反推这两个结论）

**例题：**判断$A=\left(\begin{array}{ccc}
    1 & -2 & 1 \\
    2 & -4 & 2 \\
    1 & -2 & 1
\end{array}\right)$是否可以相似对角化。

解：因为$A$，对应行成比例，所以$\lambda_1=\lambda_2=0$，$\lambda_3=1-4+1=-2$。

有两个不同的特征值，无法判断有多少个不同的特征向量，将特征值代回到$(\lambda E-A)x=0$。首先代入0：

$(0E-A)x=0$，$Ax=0$，$\left(\begin{array}{ccc}
    1 & -2 & 1 \\
    2 & -4 & 2 \\
    1 & -2 & 1
\end{array}\right)=\left(\begin{array}{ccc}
    1 & -2 & 1 \\
    0 & 0 & 0 \\
    0 & 0 & 0
\end{array}\right)$，$s=n-r=2$，所以有两个基础解系向量。

所以一共有三个线性无关的特征向量，从而可以相似对角化。

### 步骤

1.  求出$A$的所有特征值$\lambda$。

2.  求出$A$的所有$\lambda$的特征向量$\xi$。

3.  令$P=(\xi_1,\xi_2,\cdots,\xi_n)$，则$P^{-1}AP=\Lambda$。（$\xi$线性无关，$\vert P\vert\neq0$，$P$可逆）

**例题：**设$A=\left(\begin{array}{ccc}
    2 & 2 & -2 \\
    2 & 5 & -4 \\
    -2 & -4 & 5
\end{array}\right)$，求可逆矩阵$P$，使得$P^{-1}AP=\Lambda$。

解：$\vert\lambda E-A\vert=\left|\begin{array}{ccc}
    \lambda-2 & -2 & 2 \\
    2 & \lambda+5 & -4 \\
    -2 & -4 & \lambda+5
\end{array}\right|=0$，$(\lambda-1)^2(\lambda-10)=0$。

$\therefore\lambda_1=\lambda_2=1$，$\lambda_3=10$。

当$\lambda_1=\lambda_2=1$时，$(E-A)x=0$，$\left|\begin{array}{ccc}
    -1 & -2 & 3 \\
    2 & 6 & -4 \\
    -2 & -4 & 6
\end{array}\right|$，$\xi_1=(-2,1,0)^T$，$\xi_2=(2,0,1)^T$。同理代入$\lambda_3=10$，$(10E-A)x=0$，$\xi_3=(1,2,-2)^T$。

令$P=(\xi_1,\xi_2,\xi_3)=\left(\begin{array}{ccc}
    -2 & 2 & 1 \\
    1 & 0 & 2 \\
    0 & 1 & -2
\end{array}\right)$，使得$P^{-1}AP=\left(\begin{array}{ccc}
    1 \\
     & 1 \\
     & & 10
\end{array}\right)$。

## 实对称矩阵相似对角化

由相似对角化的充分条件可知，实对称矩阵必然可以相似对角化。

### 正交

[**定义：**]{style="color: violet"}若$\alpha=(a_1,a_2,\cdots,a_n)$，$\beta=(b_1,b_2,\cdots,b_n)$，则内积$(\alpha,\beta)=a_1b_1+a_2b_2+\cdots+a_nb_n$。

所以内积是一个数值。

单位化是保持向量方向不变，将其长度化为1。

正交化是指将线性无关向量系转化为正交系的过程。

### 施密特正交化

将一个线性无关向量组变为一个标准正交向量组。

对于线性无关向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$，令$\beta_1=\alpha_1$，$\beta_2=\alpha_2-\dfrac{<\alpha_2,\beta_1>}{<\beta_1,\beta_1>}\beta_1$，$\beta_3=\alpha_3-\dfrac{<\alpha_3,\beta_1>}{<\beta_1,\beta_1}\beta_1-\dfrac{<\alpha_3,\beta_2>}{<\beta_2,\beta_2>}\beta_2$，$\cdots$，$\beta_n=\alpha_n-\dfrac{<\alpha_n,\beta_1>}{<\beta_1,\beta_1>}\beta_1-\dfrac{<\alpha_n,\beta_2>}{<\beta_2,\beta_2>}\beta_2-\cdots-\dfrac{<\alpha_n,\beta_{n-1}}{<\beta_{n-1},\beta_{n-1}>}\beta_{n-1}$。其中$<n,n>$代表$n,n$的内积。

最后单位化：$\gamma_i=\dfrac{\beta_i}{\Vert\beta_i\Vert}$。

### 定义

[**定义：**]{style="color: violet"}$A^T=A$则$A$就是对称矩阵，若$A$的元素都是实数，则$A$是实对称矩阵。

-   $A$是实对称矩阵，则$A$的特征值是实数，特征向量是实向量。

-   $A$是实对称矩阵，则其属于不同特征值的特征向量相互正交（线性无关）。

-   $A$是实对称矩阵，必然相似于对角矩阵，必与$n$个线性无关的特征向量$\xi_1,\xi_2,\cdots,\xi_n$，即必有可逆矩阵$P=[\xi_1,\xi_2,\cdots,\xi_n]$使得$P^{-1}AP=\Lambda$，且存在正交矩阵$Q$，使得$Q^{-1}AQ=Q^TAQ=\Lambda$，所以$A$与$\Lambda$正交相似。（正交：$A^TA=E$）

证明性质二：已知实对称矩阵$A^T=A$。

令$Ax_1=\lambda_1x_1$，$Ax_2=\lambda_2x_2$，$\lambda_1\neq\lambda_2$。对于第一个式子左乘$x_2^T$：

$x_2^TAx_1=x_2^T\lambda_1x_1$，$x_2^TA^Tx_1=\lambda_1x_2^Tx_1$，$(Ax_2)^Tx_1=\lambda_1x_2^Tx_1$，代入$Ax_2=\lambda_2x_2$：

$(\lambda_2x_2)^Tx_1=\lambda_1x_2^Tx_1$，$\lambda_2x_2^Tx_1=\lambda_1x_2^Tx_1$，$(\lambda_2-\lambda_1)x_2^Tx_1=0$，$x_2^Tx_1=0$。

即$(x_2,x_1)=0$，从而$x_1$与$x_2$正交。

### 步骤

对于实对称矩阵，一定存在$P$，所以一般而言还会考求正交单位化的$Q$，步骤如下：

1.  求出$A$的所有特征值$\lambda$。

2.  求出$A$的所有$\lambda$的特征向量$\xi$。

3.  将$(\xi_1,\xi_2,\cdots,\xi_n)$正交化、单位化为$(\eta_1,\eta_2,\cdots,\eta_n)$。

4.  令$Q=(\eta_1,\eta_2,\cdots,\eta_n)$，则$Q^{-1}AQ=Q^TAQ=\Lambda$。

**例题：**设$A=\left(\begin{array}{ccc}
    2 & 2 & -2 \\
    2 & 5 & -4 \\
    -2 & -4 & 5
\end{array}\right)$，求正交矩阵$Q$，使得$Q^{-1}AQ=\Lambda$。

解：这个题基本上跟上面的例题一致，只是将可逆矩阵改成了正交矩阵。

所以得到三个特征向量：$\xi_1=(-2,1,0)^T$，$\xi_2=(2,0,1)^T$，$\xi_3=(1,2,-2)^T$。

实对称矩阵不同特征值的特征向量必然相互正交，从而$\xi_1\perp\xi_3$，$\xi_2\perp\xi_3$。

而$\xi_1$与$\xi_2$特征值相同从而不一定正交，$(\xi_1,\xi_2)=-4\neq0$，所以并不正交。

令$\eta_1=\xi_1=(-2,1,0)^T$，$\eta_2=\xi_2-\dfrac{(\xi_2,\eta_1)}{(\eta_1,\eta_1)}\eta_1=(2,0,1)^T-\dfrac{-4}{5}(-2,1,0)^T$。

$\therefore\eta_2=\left(\dfrac{2}{5},\dfrac{4}{5},1\right)^T$，取$\eta_2=(2,4,5)^T$，$\eta_1=(-2,1,0)^T$，$\eta_3=\xi_3=(1,2,-2)^T$。

单位化$\eta_1'=\dfrac{\sqrt{5}}{5}(-2,1,0)^T$，$\eta_2'=\dfrac{\sqrt{5}}{15}(2,4,5)^T$，$\eta_3'=\dfrac{1}{3}(1,2,-2)^T$。

令$Q=(\eta_1',\eta_2',\eta_3')$，使得$Q^{-1}AQ=Q^TAQ=\Lambda$。
