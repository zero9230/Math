---
author:
- Didnelpsun
title: 随机变量数字特征
---

# 一维随机变量数字特征

## 数学期望

### 离散型随机变量

可以根据随机变量分布律的形式拟合出已知的离散型随机变量分布，从而得到已知的期望。

**例题：**设随机变量$X$的分布律为$P\{X=k\}=\dfrac{1}{2^kk!(\sqrt{e}-1)}$，$k=1,2,\cdots$，求$EX$。

解：查看分布律中含有$k!$的形式，所以可以考虑转换为泊松分布。泊松分布的标准形式是$\dfrac{\lambda^k}{k!}e^{-\lambda}$。

$P\{X=k\}=\dfrac{1}{2^kk!(\sqrt{e}-1)}=\dfrac{\sqrt{e}}{\sqrt{e}-1}\dfrac{\left(\frac{1}{2}\right)^k}{k!}e^{-\frac{1}{2}}$，$X\sim\dfrac{\sqrt{e}}{\sqrt{e}-1}P\left(\dfrac{1}{2}\right)$。

$\therefore EX=\dfrac{\sqrt{e}}{2\sqrt{e}-2}$。

### 连续型随机变量

**例题：**连续型随机变量$X$的概率密度为$f(x)=\dfrac{1}{\pi(1+x^2)}$（$-\infty<x<+\infty$），求$EX$。

解：$EX=\int_{-\infty}^{+\infty}xf(x)\,\textrm{d}x=\int_{-\infty}^{+\infty}x\dfrac{1}{\pi(1+x^2)}\textrm{d}x=\dfrac{1}{2\pi}\int_{-\infty}^{+\infty}\dfrac{\textrm{d}(1+x^2)}{1+x^2}=\dfrac{1}{2pi}\ln(^1+x^2)|_{-\infty}^{+\infty}$。发散，所以不存在。

### 连续型随机变量函数

**例题：**连续型随机变量$X$的概率密度为$f(x)=\dfrac{1}{\pi(1+x^2)}$（$-\infty<x<+\infty$），求$E(\min\{\vert X\vert,1\})$。

解：$E(\min\{\vert X\vert,1\})=\displaystyle{\int_{-\infty}^{+\infty}}\min\{\vert x\vert,1\}\dfrac{1}{\pi(1+x^2)}\textrm{d}x=\dfrac{2}{\pi}\int_0^{+\infty}\min\{x,1\}$\
$\dfrac{1}{1+x^2}\textrm{d}x=\dfrac{2}{\pi}\displaystyle{\int_0^1}x\dfrac{1}{1+x^2}\textrm{d}x+\dfrac{2}{\pi}\int_1^{+\infty}1\cdot\dfrac{1}{1+x^2}\textrm{d}x=\dfrac{1}{\pi}\ln(1+x^2)|_0^1+\dfrac{2}{\pi}\arctan x|_1^{+\infty}$\
$=\dfrac{1}{\pi}\ln2+\dfrac{1}{2}$。

## 方差

### 方差关系

**例题：**相互独立的随机变量$X_1,X_2,\cdots,X_n$具有相同的方差$\sigma^2>0$，设$\overline{X}=\dfrac{1}{n}\sum\limits_{i=1}^nX_i$，求$D(X_1-\overline{X})$。

解：由题已知$DX_i=\sigma_2$。

$D(X_1-\overline{X})=D\left(X_1-\dfrac{1}{n}\sum\limits_{i=1}^nX_i\right)=D\left(\dfrac{n-1}{n}X_1-\dfrac{1}{n}\sum\limits_{i=2}^nX_i\right)=\left(\dfrac{n-1}{n}\right)^2\\DX_1+\dfrac{1}{n^2}\sum\limits_{i=2}^nDX_i=\dfrac{n^2-2n+1}{n^2}\sigma^2+\dfrac{n-1}{n^2}\sigma^2=\dfrac{n-1}{n}\sigma^2$。

### 期望关系

**例题：**已知随机变量$X_1$，$X_2$相互独立，且都服从正态分布$N(\mu,\sigma^2)$（$\sigma>0$），求$D(X_1X_2)$。

解：$X_1$，$X_2$服从$N(\mu,\sigma^2)$，则$EX_1=EX_2=\mu$。

$D(X_1X_2)=E[(X_1X_2)^2]-[E(X_1X_2)]^2=E(X_1^2X_2^2)-(EX_1EX_2)^2$。

若$X_1$，$X_2$相互独立则$X_1^2$，$X_2^2$相互独立，则$=EX_1^2EX_2^2-\mu^4$。

又$EX_1^2=EX_2^2=DX_1+(EX_1)^2=DX_2+(EX_2)^2=\sigma^2+\mu^2$。

$(\sigma^2+\mu^2)^2-\mu^4=\sigma^4+2\sigma^2\mu^2$。

## 切比雪夫不等式

$P\{\vert X-EX\vert\leqslant\epsilon\}\leqslant\dfrac{DX}{\epsilon^2}$或$P\{\vert X-EX\vert<\epsilon\}\geqslant1-\dfrac{DX}{\epsilon^2}$。

# 二维随机变量数字特征

## 协方差

$Cov(X,Y)=E(XY)-E(X)E(Y)$。

**例题：**设随机变量$X_1,X_2,\cdots,X_n$独立同分布，且方差$\sigma^2>0$，$Y_1=\sum\limits_{i=2}^nX_i$和$Y_2=\sum\limits_{j=1}^{n-1}X_j$，求$Y_1$和$Y_n$的协方差$Cov(Y_1,Y_n)$。

解：$\because Y_1=\sum\limits_{i=2}^nX_i$，$Y_2=\sum\limits_{j=1}^{n-1}X_j$，$DX_i=\sigma^2$。
