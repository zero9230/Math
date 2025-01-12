---
author:
- Didnelpsun
title: 二次型
---

# 二次型

## 定义

$n$元变量$x_1,x_2,\cdots,x_n$的二次齐次多项式：

$\begin{array}{cr}
    f(x_1,x_2,\cdots,x_n)= & a_{11}x_1^2+2a_{12}x_1x_2+\cdots+2a_{1n}x_1x_n \\
    & +a_{22}x_2^x+\cdots+2a_{2n}x_2x_n \\
    & \cdots \\
    & +a_{nn}x_n^2
\end{array}$

这就是**$n$元二次型**，简称**二次型**。

$\because x_ix_j=x_jx_i$，令$a_{ij}=a_{ji}$（$i,j=1,2,\cdots,n$），则$2a_{ij}x_ix_j=a_{ij}x_ix_j+a_{ji}x_jx_i$：

$f(x_1,x_2,\cdots,x_n)=a_{11}x_1^2+a_{12}x_1x_2+\cdots+a_{1n}x_1x_n+a_{21}x_2x_1+a_{22}x_2^2+a_{2n}x_2x_n+\cdots+a_{n1}x_nx_1+a_{n2}x_nx_2+\cdots+a_{nn}x_n^2$，这个式子就是完全展开式。

$f(x_1,x_2,\cdots,x_n)=\sum\limits_{i=1}^n\sum\limits_{j=1}^na_{ij}x_ix_j$，这个就是和式。

## 矩阵表示

二次型可以用矩阵来表示，即$f(x)=x^TAx$。其中$x$是列向量。

矩阵表示的重点就是找到中间的$A$，$A$是$f$的二次型矩阵。

方法是：$A$的主对角线元素$a_{ii}$是$x_i^2$的对应系数，$a_{ij}$与$a_{ji}$是混合项$x_ix_j$的系数的一半。

如一个二次型$f(x_1,x_2,x_3)=2x_1^2+5x_2^2+5x_3^2+4x_1x_2-4x_1x_3-8x_2x_3$

$=(x_1,x_2,x_3)\left(\begin{array}{ccc}
    2 & 2 & -2 \\
    2 & 5 & -4 \\
    -2 & -4 & 5
\end{array}\right)(x_1,x_2,x_3)^T$。

所以可以发现二次型矩阵就是一个对称矩阵，$A^T=A$，所以只要能写出二次型的就一定存在一个对称矩阵，就一定可以相似对角化。

# 标准形与规范形

[**定义：**]{style="color: violet"}若二次型中只含有平方项，没有混合项（交叉项，即所有交叉项的系数全部为0），形如$d_1x_1^2+d_2x_2^2+\cdots+d_nx_n^2$的二次型就是**标准形**。

[**定义：**]{style="color: violet"}若标准形中系数$d_i$仅为1，0，-1，即形如$x_1^2+\cdots+x_p^2-x_{p+1}^2-\cdots-x_{p+q}^2$的二次型称为**规范形**。

其实二次型的标准形与规范形就是相似理论中的可逆矩阵相似对角化与实对称矩阵相似对角化的方法。

## 合同变换

### 线性变换

对于$n$元二次型$f(x_1,x_2,\cdots,x_n)$，若令$\left\{\begin{array}{l}
    x_1=c_{11}y_1+c_{12}y_2+\cdots+c_{1n}y_n \\
    x_2=c_{21}y_1+c_{22}y_2+\cdots+c_{2n}y_n \\
    \cdots \\
    x_n=c_{n1}y_1+c_{n2}y_2+\cdots+c_{nn}y_n
\end{array}\right.$

记$x=(x_1,x_2,\cdots,x_n)$，$C=\left(\begin{array}{cccc}
    c_{11} & c_{12} & \cdots & c_{1n} \\
    c_{21} & c_{22} & \cdots & c_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    c_{n1} & c_{n2} & \cdots & c_{nn}
\end{array}\right)$，$y=(y_1,y_2,\cdots,y_n)$，则上式写为$x=Cy$称为$y_1,y_2,\cdots,y_n$到$x_1,x_2,\cdots,x_n$的**线性变换**。

若线性变换的系数矩阵$C$可逆，即$\vert C\vert\neq0$，则称为**可逆线性变换**。

若$f(x)=x^TAx$，令$x=Cy$，则$f(x)=(Cy)^TA(Cy)=y^T(C^TAC)y$，记$B=C^TAC$，则$f(x)=y^TBy=g(y)$，此时二次型$f(x)=x^TAx$通过线性变换$x=Cy$得到一个新二次型$g(y)=y^TBy$。即将二次型用$x$表示换成用$y$表示。

$x^TAx=y^TBy$这种改变表示方法的变换就是合同变换。

### 定义

[**定义：**]{style="color: violet"}二次型$f(x)$与$g(y)$的系数矩阵$A$与$B$满足$B=C^TAC$，这种关系就是**合同变换**。

设$AB$为$n$阶实对称矩阵，若存在可逆矩阵$C$，使得$C^TAC=B$，则称$AB$**合同**，记为$A\simeq B$，此时$f(x)$与$g(x)$为**合同二次型**。

若二次型$f(x)=x^TAx$合同与标准形$d_1x_1^2+d_2x_2^x+\cdots+d_nx_n^2$或合同于规范形$x_1^2+\cdots+x_p^2-x_{p+1}^2-\cdots-x_{p+q}^2$，则称$d_1x_1^2+d_2x_2^x+\cdots+d_nx_n^2$为$f(x)$的**合同标准形**或**合同规范形**。

### 性质

1.  反身性：$A\simeq A$。取$C=E$。

2.  对称性：$A\simeq B$，$B\simeq A$。$A\simeq B$则$C^TAC=B$，$(C^T)^{-1}C^TACC^{-1}=(C^T)^{-1}BC^{-1}$，$A=(C^{-1})^TAB^{-1}$。

3.  传递性：$A\simeq B$，$B\simeq C$，$A\simeq C$。

4.  $A\simeq B$，$r(A)=r(B)$。$C^TAC=B$，矩阵左右乘一个可逆矩阵，秩不变。

5.  $A\simeq B$，$A^T=A\Leftrightarrow B^T=B$。$B^T=B$，即$(C^TAC)^T=C^TAC$，$C^TA^TC=C^TAC$，$(C^T)^{-1}C^TA^TCC^{-1}=(C^T)^{-1}C^TACC^{-1}$，$A^T=A$。

6.  $A\simeq B$，$AB$可逆，则$A^{-1}\simeq B^{-1}$。

7.  $A\simeq B$，$A^T\simeq B^T$。

## 配方法

也称为拉格朗日配方法。配方法与前面的特征值、相似、正交理论无关，是通过配方找到一个可逆的合同矩阵。

任何二次型均可通过配方法（做可逆线性变换）化为标准形与规范形，即对于任何实对称矩阵$A$，必存在可逆矩阵$C$，使得$C^TAC=\Lambda$，其中：

$\Lambda=\left(\begin{array}{cccc}
    d_1 \\
     & d_2 \\
     & & \ddots \\
     & & & d_n
\end{array}\right)$或$\Lambda=\left(\begin{array}{ccccccccc}
    A \\
     & B \\
     & & C \\
\end{array}\right)$，$A=\left(\begin{array}{ccc}
    1 \\
     & \ddots \\
     & & 1 \\
\end{array}\right)$，$B=\left(\begin{array}{ccc}
    -1 \\
     & \ddots \\
     & & -1 \\
\end{array}\right)$，$C=\left(\begin{array}{ccc}
    0 \\
     & \ddots \\
     & & 0 \\
\end{array}\right)$。

一个二次型可以通过相似对角化来求矩阵$\lambda$和$\xi$来化成标准形或规范形，而也可以通过配方法来更简单得到。

配方法的核心：将某个变量的平方项与其混合项一次性配称一个完全平方。

**例题：**将$f(x_1,x_2,x_3)=x_1^2+2x_1x_2+2x_1x_3-x_2^2-2x_2x_3-x_3^2$化为标准形并求出作的可逆线性变换。

解：首先对$x_1$进行配方，因为有$x_1$因子的式子有$x_1^2+2x_1x_2+2x_1x_3$。

所以将$x_1,x_2,x_3$全部配在一起：$(x_1+x_2+x_3)^2=x_1^2+x_2^2+x_3^2+2x_1x_2+2x_1x_3+2x_2x_3$。

所以$f(x)=(x_1+x_2+x_3)^2-2x_2^2-4x_2x_3-2x_3^2$，然后继续配$x_2$。

因为还有$-2x_2^2-4x_2x_3$，所以配成$-2(x_2+x_3)^2$，正好全部配完了。

$\therefore f(x)=(x_1+x_2+x_3)^2-2(x_2+x_3)^2$。

[注意：]{style="color: orange"}$n$元要换成$n$个新变量，缺项要补项，系数为0。

令$y_1=x_1+x_2+x_3$，$y_2=x_2+x_3$，补$y_3=x_3$，$\therefore f=y_1^2-2y_2^2$。

$(y_1,y_2,y_3)^T=\left(\begin{array}{ccc}
    1 & 1 & 1 \\
    0 & 1 & 1 \\
    0 & 0 & 1
\end{array}\right)(x_1,x_2,x_3)^T$，此时是$y=Dx$，但是我们要求的是$x=Cy$，所以$C=D^{-1}$，所以$D^{-1}$才是作出的可逆线性变换。

所以得到的线性变换为$\left(\begin{array}{ccc}
    1 & -1 & 0 \\
    0 & 1 & -1 \\
    0 & 0 & 1
\end{array}\right)$。

这样方法还要重新求逆，比较麻烦。实际上我们要求的是$x=Cy$，即用$y$来表示$x$，从而直接将$y$来表示$x$就可以了。

首先$y_3=x_3$，所以$x_2=y_2-x_3=y_2-y_3$，$x_1=y_1-x_2-x_3=y_1-y_2+y_3-y_3=y_1-y_2$，综上$x_1=y_1-y_2$，$x_2=y_2-y_3$，$x_3=y_3$，也得到同样结果。

[注意：]{style="color: orange"}若二次型只有混合项没有平方项则需要二次代换创造平方项。

**例题：**将二次型$f(x_1,x_2,x_3)=x_1x_2+x_1x_3-x_2x_3$化为规范形，并求所用的可逆线性变换。

解：因为二次型中没有平方项式子，而如果进行配方一定会出现平方，就会产生冲突，所以希望把$x$代换称有平方的式子。

令$x_1=y_1+y_2$，$x_2=y_1-y_2$，$x_3=y_3$，代入二次型中。

$f=y_1^2-y_2^2+y_1y_3+y_2y_3-y_1y_3-+y_2y_3=y_1^2-y_2^2+2y_2y_3=y_1^2-y_2^2+2y_2y_3$。

此时由没有平方项就变成了有平方项，所以就能进行配方。

$=y_1^2-(y_2-y_3)^2+y_3^2$，继续之前的步骤，进行换元：

令$z_1=y_1$，$z_2=y_2-y_3$，$z_3=y_3$，$f=z_1^2-z_2^2+z_3^2$得到标准形。

对于$x$与$y$：$(x_1,x_2,x_3)^T=\left(\begin{array}{ccc}
    1 & 1 & 0 \\
    1 & -1 & 0 \\
    0 & 0 & 1
\end{array}\right)(y_1,y_2,y_3)^T$。$y$作为过渡变量。

将$y$转换为$z$：$(z_1,z_2,z_3)^T=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & -1 \\
    0 & 0 & 1
\end{array}\right)(y_1,y_2,y_3)^T$，我们需要$x=Cz$。

$(x_1,x_2,x_3)^T=\left(\begin{array}{ccc}
    1 & 1 & 0 \\
    1 & -1 & 0 \\
    0 & 0 & 1
\end{array}\right)\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & -1 \\
    0 & 0 & 1
\end{array}\right)^{-1}(z_1,z_2,z_3)^T$，从而得到$C=\left(\begin{array}{ccc}
    1 & 1 & 1 \\
    1 & -1 & -1 \\
    0 & 0 & 1
\end{array}\right)$。

## 初等变换法

$f(x)=X^TAX$，线性变换$X=CY$，$C^TAC=\Lambda$，又$C$可逆，$\therefore C=P_1P_2\cdots P_s$，$EP_1P_2\cdots P_s=C$，$\therefore(P_1P_2\cdots P_s)^TAP_1P_2\cdots P_3=\Lambda$，

1.  对$A,E$做同样的初等列变换。

2.  对$A$做相应的初等行变换。（交换$i,j$列就要交换$i,j$行）。一套行列变换后$\Lambda$为对称矩阵。

3.  $A$化成对角矩阵时，$E$化成的就是$C$。

$\left(\begin{array}{c}
    A \\
    E
\end{array}\right)\rightarrow\left(\begin{array}{c}
    \Lambda \\
    C
\end{array}\right)$，对整个列变换，只对$A$行变换。

$\left(\begin{array}{c}
    A \\
    E
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 1 & 1 \\
    1 & 2 & 2 \\
    1 & 2 & 1 \\
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    1 & 1 & 2 \\
    1 & 1 & 1 \\
    1 & -1 & 0 \\
    0 & 0 & 0 \\
    0 & 0 & 1
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    0 & 1 & 1 \\
    1 & 1 & 1 \\
    1 & -1 & 0 \\
    0 & 0 & 0 \\
    0 & 0 & 1
\end{array}\right)=\\\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 1 \\
    1 & 1 & 0 \\
    1 & -1 & -1 \\
    0 & 0 & 0 \\
    0 & 0 & 1
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 1 \\
    0 & 1 & 0 \\
    1 & -1 & -1 \\
    0 & 1 & 0 \\
    0 & 0 & 1
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 1 & -1 \\
    1 & -1 & 0 \\
    0 & 1 & -1 \\
    0 & 0 & 1
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & -1 \\
    1 & -1 & 0 \\
    0 & 1 & -1 \\
    0 & 0 & 1
\end{array}\right)$

$\therefore\Lambda=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & -1
\end{array}\right)$，$C=\left(\begin{array}{ccc}
    1 & -1 & 0 \\
    0 & 1 & -1 \\
    0 & 0 & 1
\end{array}\right)$

## 正交变换法

是对实对称矩阵相似对角化的正交变换的延申。

任何二次型均可通过正交变换法化为标准形，即对于任何实对称矩阵$A$，必存在正交矩阵$Q$，使得$Q^TAQ=Q^{-1}AQ=\Lambda$，其中$\Lambda=\left(\begin{array}{cccc}
    \lambda_1 \\
     & \lambda_2 \\
     & & \ddots \\
     & & & \lambda_n
\end{array}\right)$。

二次型正交变换法基于实对称矩阵相似对角化：

1.  求出$A$的所有特征值$\lambda$。

2.  求出$A$的所有$\lambda$的特征向量$\xi$。

3.  将$(\xi_1,\xi_2,\cdots,\xi_n)$正交化、单位化为$(\eta_1,\eta_2,\cdots,\eta_n)$。

4.  令$Q=(\eta_1,\eta_2,\cdots,\eta_n)$，则$Q^{-1}AQ=Q^TAQ=\Lambda$。

5.  因为$f(x)=x^TAx$，代入$x=Qy$，$(Qy)^TA(Qy)=y^TQ^TAQy=y^T\Lambda y$。

如矩阵表示中所给出的一个例子。

**例题：**将二次型$f(x_1,x_2,x_3)=2x_1^2+5x_2^2+5x_3^2+4x_1x_2-4x_1x_3-8x_2x_3$使用正交变换法化为标准形，并求所作的正交变换。

已知将二次型通过矩阵表示：$=(x_1,x_2,x_3)\left(\begin{array}{ccc}
    2 & 2 & -2 \\
    2 & 5 & -4 \\
    -2 & -4 & 5
\end{array}\right)(x_1,x_2,x_3)^T$。

这个矩阵跟第五章相似的实对称矩阵相似对角化的例题的矩阵一样。

所以直接结果：$\lambda_1=\lambda_2=1$，$\lambda_3=10$，$\eta_1'=\dfrac{\sqrt{5}}{5}(-2,1,0)^T$，$\eta_2'=\dfrac{\sqrt{5}}{15}(2,4,5)^T$，$\eta_3'=\dfrac{1}{3}(1,2,-2)^T$。

第五步：$f(x)=g(y)=y^T\Lambda y=(y_1,y_2,y_3)\left(\begin{array}{ccc}
    1 \\
     & 1 \\
     & & 10
\end{array}\right)(y_1,y_2,y_3)^T=y_1^2+y_2^2+10y_3^2$

## 惯性定理

[**定义：**]{style="color: violet"}无论选取什么样的可逆线性变换，将二次型化为标准形或规范形，其正项个数$p$，负项个数$q$都是不变的，$p$称为**正惯性指数**，$q$称为**负惯性指数**。

[**定理：**]{style="color: aqua"}若二次型的矩阵秩为$r$，则$r=p+q$，可逆线性变换不改变正负惯性指数。

[**定理：**]{style="color: aqua"}两个二次型或实对称矩阵合同的充要条件是有相同的正负惯性指数，或有相同的秩及正负惯性指数。

**例题：**设$A=\left(\begin{array}{ccc}
    1 & 2 & 0 \\
    2 & 1 & 0 \\
    0 & 0 & 1
\end{array}\right)$，判断是否与$\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & -1
\end{array}\right)$合同。

解：第一种方法使用配方法，将实对称矩阵化为二次型进行配方，得到$f=(x_1+2x_2)^2-3x_2^2+x_3^2=y_1^2-3y_2^2+y_3^2$，$p=2$，$q=1$。

第二种方式使用特征值法，$\vert\lambda E-A\vert=0$，得到$\lambda_1=1$，$\lambda_2=3$，$\lambda_3=-1$，令$\xi=y$，$f=\lambda_1y_1^2+\lambda_2y_2^2+\lambda_3y_3^2=y_1^2+3y_2^2-y_3^2$，$p=2$，$q=1$。

[注意：]{style="color: orange"}我们会发现$y$前面的系数是不一样的，因为通过配方法得到的系数不一定是特征值，而正交变换法或相似对角化的方法得到的一定是特征值。因为对于配方法，$x=Cy$，$f=(Cy)^TACy=y^TC^TACy=y^T\Lambda y$，这个$\Lambda$是合同的，不满足相似的要求，而对于正交变换$x=Qy$，$f=(Qy)^TAQy=y^TQ^TAQy=y^TQ^{-1}AQy=y^T\Lambda y$，因为$Q$选用的不仅是可逆矩阵$C$，更是正交矩阵，从而即合同又相似，从而得到的$\Lambda$是特征值。

因为有两个正系数1和一个负系数-1，根据惯性定理，所以与它合同。

# 正定二次型

## 定义

[**定义：**]{style="color: violet"}$n$元二次型$f(x_1,x_2,\cdots,x_n)=x^TAx$，若任意$x=(x_1,x_2,\cdots,x_n)^T\neq0$均有$x^TAx>0$，则称$f$为**正定二次型**，对应矩阵$A$为**正定矩阵**。

若令一个正定二次型等于某个正数，则对于空间就是一个封闭曲面。

## 性质

$n$元二次型$f=x^TAx$正定的充要条件是：

-   对于任意$x\neq0$，有$x^TAx>0$。（定义）

-   $f$的正惯性指数$p=n$，即所有系数全为正。

-   存在可逆矩阵$D$，使得$A=D^TD$。

-   $A\simeq E$。

-   $A$的特征值$\Lambda_i>0$（$i=1,2,\cdots,n$）。

-   $A$的全部顺序主子式均大于0。

若$C^TAC=E$，则$A=(C^T)^{-1}EC^{-1}=(C^{-1})^TC^{-1}=D^TD$。

设$A=(a_{ij})_{n\times n}$，则$\vert A_k\vert=\left|\begin{array}{cccc}
    a_{11} & a_{12} & \cdots & a_{1k} \\
    a_{21} & a_{22} & \cdots & a_{2k} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{k1} & a_{k2} & \cdots & a_{kk}
\end{array}\right|$称为$n$阶矩阵$A$的**$k$阶顺序（左上角）主子式**。

$n$元二次型$f=x^TAx$正定的必要条件是：

-   $a_{ii}>0$（$i=1,2,\cdots,n$）。

-   $\vert A\vert>0$。

## 判定

### 具体型

1.  判定主子式是否全部大于0。

2.  求特征值是否全部大于0。

3.  配方法判定正惯性指数是否全为$n$。

4.  定义法，证明$\forall x\neq0$，$x^TAx>0$，即$f>0$。

5.  找到可逆矩阵$D$，使得$A=D^TD$。

主要使用前面三种方法。

**例题：**判别二次型$f(x_1,x_2,x_3)=2x_1^2+2x_2^2+2x_3^2+2x_1x_2+2x_1x_3+2x_2x_3$的正定性。

解：根据题目写出二次型矩阵：$A=\left(\begin{array}{ccc}
    2 & 1 & 1 \\
    1 & 2 & 1 \\
    1 & 1 & 2
\end{array}\right)$

第一种方法：2\>0，$\left|\begin{array}{cc}
    2 & 1 \\
    1 & 2
\end{array}\right|>0$，$\vert A\vert>0$，所以正定。

第二种方法：$\vert\lambda E-A\vert=0$，所以$\lambda_1=4$，$\lambda_2=\lambda_3=1$，所以正定。

第三种方法：通过配方法，将$f=2\left(x_1+\dfrac{x_2}{x}+\dfrac{x_3}{2}\right)^2+\dfrac{3}{2}\left(x_2+\dfrac{1}{3}x_3\right)+\dfrac{4}{3}x_3^2$，$p=3$，所以正定。

第四种方法：将$f$进行配方，$f=(x_1+x_2)^2+(x_2+x_3)^2+(x_3+x_1)^2\geqslant0$，所以要证明$f>0$对于$\forall x\neq0$成立。

假设$f=0$，则$x_1+x_2=0$，$x_2+x_3=0$，$x_3+x_1=0$，则$x_1=x_2=x_3=0$，所以$x\neq0$时$f>0$。

第五种方法：将$f$进行配方，$f=(x_1+x_2)^2+(x_2+x_3)^2+(x_3+x_1)^2$

$=(x_1+x_2,x_2+x_3,x_3+x_1)(x_1+x_2,x_2+x_3,x_3+x_1)^T$

$=(x_1+x_2,x_2+x_3,x_3+x_1)\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    1 & 1 & 0 \\
    0 & 1 & 1
\end{array}\right)\left(\begin{array}{ccc}
    1 & 1 & 0 \\
    0 & 1 & 1 \\
    1 & 0 & 1
\end{array}\right)\left(\begin{array}{c}
    x_1 \\
    x_2 \\
    x_3
\end{array}\right)=x^TD^TDx$

$=x^TAx$，所以找到了这个$D$，从而正定。

### 抽象型

对于抽象型二次型正定问题，首先要表明$A$是对称的，即$A^T=A$；基本的方法就是判定特征值$\lambda$是否全部为正。

[**定理：**]{style="color: aqua"}若$A$正定，则充要条件是$A^T$正定，$A^{-1}$正定，充分条件是$A^*$正定，即$A$正定则$A^*$正定，但是$A^*$正定不一定$A$正定。

证明：$\because$对称矩阵，所以$A^T=A$，所以$AA^T$等价，所以是充要条件。

若$A$特征值为$\lambda>0$，则$A^{-1}$的特征值$\dfrac{1}{\lambda}$也全为正，同理也可以反推回去，从而是充要条件。

若$A$特征值为$\lambda>0$，则$A^*$的特征值为$\dfrac{\vert A\vert}{\lambda_i}=\dfrac{\lambda_1\cdots\lambda_n}{\lambda_i}$，若$\lambda_i$全为正则可以推出$\dfrac{\vert A\vert}{\lambda_i}$为正，但是反之若$\dfrac{\vert A\vert}{\lambda_i}$为正，不能推出$\lambda_1\cdots\lambda_n$每一个都是正的。
