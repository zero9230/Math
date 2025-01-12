---
author:
- Didnelpsun
title: 无穷级数
---

# 1 求和函数

可以利用展开式求和函数，但是很多展开式的通项都不是公式中的，就需要对通项进行变形。

## 1.1 先导后积

$n$在分母上，先导后积。使用变限积分：$\int_{x_0}^xS'(t)\,\textrm{d}t=S(x)-S(x_0)$，即$S(x)=S(x_0)+\int_{x_0}^xS'(t)\,\textrm{d}t$。一般选择$x_0$为展开点。

**例题：**求级数$\sum\limits_{n=1}^\infty\dfrac{x^n}{n}$的和函数。

解：已知$\sum\limits_{n=0}^\infty x^n=\dfrac{1}{1-x}$，而这里求和是$\dfrac{x^n}{n}$，所以需要对其进行转换。

对$\dfrac{x^n}{n}$求导就得到了$x^{n-1}$消去了分母的$n$，所以使用先导后积的方法。

记$S(x)=\sum\limits_{n=1}^\infty\dfrac{x^n}{n}$，则$x^n=(x-0)^n$，取$x_0=0$。

$\therefore S(x)=S(0)+\displaystyle{\int_0^x\left(\sum\limits_{n=1}^\infty\dfrac{t^n}{n}\right)_t'\,\textrm{d}t}=0+\int_0^x(\sum\limits_{n=1}^\infty t^{n-1})\,\textrm{d}t=\displaystyle{\int_0^x\dfrac{1}{1-t}\textrm{d}t}=-\ln(1-x)$。收敛域为$(-1,1)$。

## 1.2 先积后导

$n$在分子上，先积后导。$(\int S(x)\,\textrm{d}x)'=S(x)$。

**例题：**求级数$\sum\limits_{n=1}^\infty nx^n$的和函数。

解：记$S(x)=\sum\limits_{n=1}^\infty nx^n=x\sum\limits_{n=1}^\infty x^{n-1}=x(\int\sum\limits_{n=1}^\infty nx^{n-1}\,\textrm{d}x)'=x(\sum\limits_{n=1}^\infty x^n)'=x\left(\dfrac{x}{1-x}\right)'=\dfrac{x}{(1-x)^2}$。收敛域为$[-1,1]$。
