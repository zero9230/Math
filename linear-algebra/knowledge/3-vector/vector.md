---
author:
- Didnelpsun
title: 向量
---

线性代数的主要研究对象就是向量，行列式与矩阵都是由向量组成的向量组。

# 向量与向量组

## 向量的定义与运算

$n$维向量[**定义：**]{style="color: violet"}$n$个数构成的一个有序数组$[a_1,a_2,\cdots,a_n]$称为一个$n$维向量，记为$\alpha=[a_1,a_2,\cdots,a_n]$，并称$\alpha$为$n$维行向量，$\alpha^T$为$n$维列向量，$a_i$为向量$\alpha$的$i$个分量。

若$\alpha$与$\beta$都是$n$维向量，且对应元素相等，则$\alpha=\beta$。

$\alpha+\beta=[a_1+b_1,a_2+b_2,\cdots,a_n+b_n]$。

$k\alpha=[ka_1,ka_2,\cdots,ka_3]$。

## 向量组的线性概念

线性组合[**定义：**]{style="color: violet"}$m$个$n$维向量$\alpha_1,\alpha_2,\cdots,\alpha_m$以及$m$个数$k_1,k_2,\cdots,k_m$，则向量$k_1\alpha_1+k_2\alpha_2+\cdots+k_m\alpha_m$就是向量组$a_1,a_2,\cdots,a_m$的线性组合。

线性表出[**定义：**]{style="color: violet"}若向量$\beta$能表示成向量组$\alpha_1,\alpha_2,\cdots,a_m$的线性组合，则存在$m$个数$k_1,k_2,\cdots,k_m$，使得$\beta=k_1\alpha_1+k_2\alpha_2+\cdots+k_m\alpha_m$，则成向量$\beta$能被向量组$a_1,a_2,\cdots,a_m$线性表出。否则不能被线性表出。

线性相关[**定义：**]{style="color: violet"}对$m$个$n$维向量$a_1,a_2,\cdots,a_m$，存在一组不全为0的数$k_1,k_2,\cdots,k_m$，使得$k_1\alpha_1+k_2\alpha_2+\cdots+k_m\alpha_m=0$，则称$a_1,a_2,\cdots,a_m$线性相关。

含有零向量或成比例向量的向量组必然线性相关。

线性无关[**定义：**]{style="color: violet"}对$m$个$n$维向量$a_1,a_2,\cdots,a_m$，不存在一组不全为0的数$k_1,k_2,\cdots,k_m$，使得$k_1\alpha_1+k_2\alpha_2+\cdots+k_m\alpha_m=0$，即仅当$k_1=k_2=\cdots=k_m=0$才成立，则称$a_1,a_2,\cdots,a_m$线性无关。

两个非零向量，不成比例向量的向量必然线性无关。

## 线性相关性

1.  向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$（$n\geqslant2$）线性相关的充要条件是向量组中至少有一个向量可由其他$n-1$个向量线性表出。若$\alpha_1,\alpha_2,\cdots,\alpha_n$线性无关的充要条件是向量组的任何一个向量都不能被其他$n-1$个向量线性表出。

2.  向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$线性无关，而$\beta,\alpha_1,\alpha_2,\cdots,\alpha_n$线性相关，则$\beta$可由$\alpha_1,\alpha_2,\cdots,\alpha_n$线性表示，且表示方法唯一。

3.  向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$可由向量组$\beta_1,\beta_2,\cdots,\beta_s$线性表示，且$n>s$，则$\alpha_1,\alpha_2,\cdots,\alpha_n$线性相关。（以少表多，多的相关）若向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$可由向量组$\beta_1,\beta_2,\cdots,\beta_s$线性表示，$\alpha_1,\alpha_2,\cdots,\alpha_n$线性无关，则$n\leqslant s$。

4.  设$m$个$n$维向量$\alpha_1,\alpha_2,\cdots,\alpha_m$，其中$\alpha_1=[a_{11},a_{12},\cdots,a_{m1}]^T$，$\cdots$，$\alpha_m=[a_{1m},a_{2m},\cdots,a_{mm}]^T$，则向量组$\alpha_1,\alpha_2,\cdots,\alpha_m$线性相关的充要条件是齐次线性方程$Ax=0$有非零解，其中$A=[\alpha_1,\alpha_2,\cdots,\alpha_m]$，$x=[x_1,x_2,\cdots,x_m]^T$。$m$个$n$维向量$\alpha_1,\alpha_2,\cdots,\alpha_m$线性无关的充要条件是齐次线性方程$Ax=0$只有零解。

5.  向量$\beta$可由向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$表出，则向量组$\alpha_1x_1+\alpha_2x_2+\cdots+\alpha_nx_n=[\alpha_1,\alpha_2,\cdots,\alpha_n][x_1,x_2,\cdots,x_n]^T=\beta$有解，即$r([\alpha_1,\alpha_2,\cdots,\alpha_n])=r([\alpha_1,\alpha_2,\cdots,\alpha_n,\beta])$。否则则不能表出，则方程无解，$r([\alpha_1,\alpha_2,\cdots,\alpha_n])+1=r([\alpha_1,\alpha_2,\cdots,\alpha_n,\beta])$

6.  向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$存在一部分向量线性相关，则整个向量组线性相关。若$\alpha_1,\alpha_2,\cdots,\alpha_n$线性无关，则任意一部分向量组线性无关。

7.  设$m$个$n$维向量$\alpha_1,\alpha_2,\cdots,\alpha_m$线性无关，则把这些向量中每个各任意添加$s$个分量所得到的新向量组（$n+s$维）$\alpha_1^*,\alpha_2^*,\cdots,\alpha_m^*$也是线性无关的；如果$\alpha_1,\alpha_2,\cdots,\alpha_m$线性相关，则每个各去掉相同的若干分量得到的新向量组也线性相关。（原来无关延长无关，原来相关缩短相关）

# 极大线性无关组

## 概念

极大线性无关组[**定义：**]{style="color: violet"}在向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$中，若存在部分$a_i,a_j,\cdots,a_k$满足：$a_i,a_j,\cdots,a_k$线性无关；向量组中任一向量$a_s$（$i=1,2,\cdots,n$）均可由$a_i,a_j,\cdots,a_k$线性表出，则称向量组$a_i,a_j,\cdots,a_k$为原向量组的极大线性无关组。

不包含无用约束方程的最简方程组的系数矩阵就是极大线性无关组。

向量组的极大线性无关组一般不唯一，只由一个零向量组成的向量组不存在极大线性无关组，一个线性无关向量组的极大线性无关组就是其本身。

# 向量组秩

向量组构成矩阵的秩等于行向量组的秩等于列向量组的秩。

若$A$通过初等行变换为$B$，则$AB$的行向量组是等价向量组，任何对应的部分列向量组都具有同样的线性相关性。

若向量组$B$均可由$A$线性表出，则$r(B)\leqslant r(A)$。

# 等价向量组

任何一个组都可以由其极大线性无关组来代表。

## 定义

设两个向量组$\alpha_1,\alpha_2,\cdots,\alpha_n$和$\beta_1,\beta_2,\cdots,\beta_m$，若这两个向量组可以互相线性表出，则称其为等价向量组，记为$\alpha\cong\beta$。

具有的性质：

1.  $A\cong A$（反身性）。

2.  $A\cong B$，则$B\cong A$（对称性）。

3.  $A\cong B$，$B\cong C$，则$A\cong C$（传递性）。

向量组和其极大线性无关组是等价向量组。

## 判定

若$r(A)=r(B)=r(A|B)$，则向量组等价。

## 与等价矩阵区别

对于矩阵而言，若$A\cong B$，则$AB$同型且$r(A)=r(B)$。

对于向量组而言，若$A\cong B$，则$AB$同维（行数相同）且$r(A)=r(B)=r(A|B)$。

# 向量空间

## 基本概念

若$\xi_1,\xi_2,\cdots,\xi_n$是$n$维向量空间$R^n$中的线性无关的有序向量组，则任意向量$\alpha\in R^n$均可由$\xi_1,\xi_2,\cdots,\xi_n$线性表出，记为$\alpha=a_1\xi_1+a_2\xi_2+\cdots+a_n\xi_n$，类似一个极大线性无关组，则称有序向量组$\xi_1,\xi_2,\cdots,\xi_n$为$R^n$的一个**基**，基向量的个数$n$为向量空间的**维数**，而$[a_1,a_2,\cdots,a_n]([a_1,a_2,\cdots,a_n]^T)$为向量$\alpha$在基$\xi_1,\xi_2,\cdots,\xi_n$下的**坐标**，或称为$\alpha$的坐标行列向量。

## 基变换与坐标变换

若$\eta_1,\eta_2,\cdots,\eta_n$和$\xi_1,\xi_2,\cdots,\xi_n$是$R^n$中两个基，且有关系：$[\eta_1,\eta_2,\cdots,\eta_n]=[\xi_1,\xi_2,\cdots,\xi_n]C_{n\times n}$，则这个式子称为基$\xi_1,\xi_2,\cdots,\xi_n$到基$\eta_1,\eta_2,\cdots,\eta_n$的**基变换公式**，矩阵$C$就是基$\xi_1,\xi_2,\cdots,\xi_n$到基$\eta_1,\eta_2,\cdots,\eta_n$的**过渡矩阵**，$C$可逆，$C$的第$i$列就是$\eta_i$在基$\xi_1,\xi_2,\cdots,\xi_n$下的坐标列向量。

$\alpha$在基$\xi_1,\xi_2,\cdots,\xi_n$和基$\eta_1,\eta_2,\cdots,\eta_n$下坐标分别为$x=[x_1,x_2,\cdots,x_n]^T$，$y=[y_1,y_2,\cdots,y_n]^T$，即$\alpha=[\xi_1,\xi_2,\cdots,\xi_n]x=[\eta_1,\eta_2,\cdots,\eta_n]y$。又$C$是基$\xi_1,\xi_2,\cdots,\xi_n$到基$\eta_1,\eta_2,\cdots,\eta_n$的过渡矩阵，则$[\xi_1,\xi_2,\cdots,\xi_n]=[\eta_1,\eta_2,\cdots,\eta_n]C$，则$\alpha=[\xi_1,\xi_2,\cdots,\xi_n]x=[\eta_1,\eta_2,\cdots,\eta_n]y=[\xi_1,\xi_2,\cdots,\xi_n]Cy$，从而$x=Cy$或$y=C^{-1}x$，这个就是**坐标变换公式**。
