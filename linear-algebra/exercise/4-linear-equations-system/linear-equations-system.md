---
author:
- Didnelpsun
title: 线性方程组
---

# 基础解系

# 反求参数

基本上都是给出方程组有无穷多解：

-   齐次方程组：系数矩阵是降秩的；行列式值为0。

-   非齐次方程组：系数矩阵与增广矩阵秩相同且降秩。

**例题：**已知齐次线性方程组$\left\{\begin{array}{l}
    ax_1-3x_2+3x_3=0 \\
    x_1+(a+2)x_2+3x_3=0 \\
    2x_1+x_2-x_3=0
\end{array}\right.$有无穷多解，求参数$a$。

解：使用矩阵比较麻烦，三阶的系数矩阵可以使用行列式。

$\vert A\vert=\left\vert\begin{array}{ccc}
    a & -3 & 3 \\
    1 & a+2 & 3 \\
    2 & 1 & -1 \\
\end{array}\right\vert=\left\vert\begin{array}{ccc}
    a & 0 & 3 \\
    1 & a+5 & 3 \\
    2 & 0 & -1 \\
\end{array}\right\vert=(a+5)(a+6)=0$。

解得$a=-5$或$a=-6$。
