---
author:
- Didnelpsun
title: 多元函数微分学
---

# 基本概念

## 偏导

### 二元函数

函数以$f(u,v)$的形式来出现，需要分别对其求偏导。

**例题：**设$z=e^{xy}+f(x+y,xy)$，$f(u,v)$有二阶连续偏导数，求$\dfrac{\partial^2z}{\partial x\partial y}$。

解：令$x+y$为$u$，$xy$为$v$，$f(u,v)$对$u$求导就是$f_1'$，对$v$求导就是$f_2'$，求$uv$依次求导就是$f_{12}''$，以此类推。

首先求一次偏导：$\dfrac{\partial z}{\partial x}=ye^{xy}+\dfrac{\partial f(u,v)}{\partial u}\dfrac{\partial u}{\partial x}+\dfrac{\partial f(u,v)}{\partial v}\dfrac{\partial v}{\partial x}=ye^{xy}+f_1'+f_2'y$。

接着对$y$求偏导：$\dfrac{\partial^2z}{\partial x\partial y}=e^{xy}+xye^{xy}+\dfrac{\partial f_1'}{\partial y}+\dfrac{\partial f_2'y}{\partial y}$

$=e^{xy}+xye^{xy}+\dfrac{\partial f_1'}{\partial y}+\dfrac{\partial f_2'}{\partial y}y+f_2'\dfrac{\partial y}{\partial y}=e^{xy}+xye^{xy}+\dfrac{\partial f_1'}{\partial u}\dfrac{\partial u}{\partial y}+\dfrac{\partial f_1'}{\partial v}\dfrac{\partial v}{\partial y}+\dfrac{\partial f_2'}{\partial u}\dfrac{\partial u}{\partial y}y+\dfrac{\partial f_2'}{\partial v}\dfrac{\partial v}{\partial y}y+f_2'=e^{xy}+xye^{xy}+f_{11}''+f_{12}''x+f_{21}''y+f_{22}''xy+f_2'$。

又$f(u,v)$具有两阶连续偏导数，所以$f_{12}''=f_{21}''$。

即$=e^{xy}+xye^{xy}+f_{11}''+(x+y)f_{12}''+xyf_{22}''+f_2'$。

### 复合函数

函数以复合函数形式$f(g(x,y))$出现，函数的变量是一个整体。

#### 链式法则

若是给出相应的不等式可以通过链式法则求出对应的表达式。

**例题：**设$u=u(\sqrt{x^2+y^2})$（$r=\sqrt{x^2+y^2}>0$）有二阶连续的偏导数，且满足$\dfrac{\partial^2u}{\partial x^2}+\dfrac{\partial^2u}{\partial y^2}-\dfrac{1}{x}\dfrac{\partial u}{\partial x}+u=x^2+y^2$，则求$u(\sqrt{x^2+y^2})$。

解：这个函数是复合函数$u=u(r)$和$r=\sqrt{x^2+y^2}$而成。根据复合函数求导法则：

$\dfrac{\partial u}{\partial x}=\dfrac{\textrm{d}u}{\textrm{d}r}\dfrac{\partial r}{\partial x}=\dfrac{\textrm{d}u}{\textrm{d}r}\dfrac{x}{\sqrt{x^2+y^2}}=\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{x}{r}$，$\dfrac{1}{x}\cdot\dfrac{\partial u}{\partial x}=\dfrac{1}{r}\cdot\dfrac{\textrm{d}u}{\textrm{d}r}$。

$\dfrac{\partial^2u}{\partial x^2}=\dfrac{\partial}{\partial x}\left(\dfrac{\partial u}{\partial x}\right)=\dfrac{\partial}{\partial x}\left(\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{x}{r}\right)=\dfrac{x}{r}\cdot\dfrac{\partial}{\partial x}\left(\dfrac{\textrm{d}u}{\textrm{d}r}\right)+\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{\partial}{\partial x}\left(\dfrac{x}{r}\right)=\dfrac{x}{r}\cdot\dfrac{\partial}{\partial r}\left(\dfrac{\textrm{d}u}{\textrm{d}r}\right)\dfrac{\partial r}{\partial x}+\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{r-x\cdot(\partial r/\partial x)}{r^2}=\dfrac{x^2}{r^2}\cdot\dfrac{\textrm{d}^2u}{\textrm{d}r^2}+\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{r^2-x^2}{r^3}$。

$\dfrac{\partial^2u}{\partial y^2}=\dfrac{\partial}{\partial y}\left(\dfrac{\partial u}{\partial y}\right)=\dfrac{\partial}{\partial y}\left(\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{y}{r}\right)=\dfrac{y}{r}\cdot\dfrac{\partial}{\partial y}\left(\dfrac{\textrm{d}u}{\textrm{d}r}\right)+\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{\partial}{\partial y}\left(\dfrac{y}{r}\right)=\dfrac{y}{r}\cdot\dfrac{\partial}{\partial r}\left(\dfrac{\textrm{d}u}{\textrm{d}r}\right)\dfrac{\partial r}{\partial y}+\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{r-y\cdot(\partial r/\partial y)}{r^2}=\dfrac{y^2}{r^2}\cdot\dfrac{\textrm{d}^2u}{\textrm{d}r^2}+\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{r^2-x^2}{r^3}$

代入不等式：$\dfrac{x^2+y^2}{r^2}\cdot\dfrac{\textrm{d}u^2}{\textrm{d}r^2}+\dfrac{\textrm{d}u}{\textrm{d}r}\cdot\dfrac{2r^2-x^2-y^2}{r^3}-\dfrac{1}{r}\cdot\dfrac{\textrm{d}u}{\textrm{d}r}+u=x^2+y^2$。

代入$x^2+y^2=r^2$：$\dfrac{\textrm{d}^2u}{\textrm{d}r^2}+u=r^2$，为二阶线性常系数微分方程。

通解为$u=C_1\cos r+C_2\sin r+r^2-2$。

即$u(\sqrt{x^2+y^2})=C_1\cos\sqrt{x^2+y^2}+C_2\sin\sqrt{x^2+y^2}+x^2+y^2-2$。

#### 特殊值反代

若是给出的不等式后还给出对应的特殊值，可以直接代入然后反代求出函数，而不用链式法则。

**例题：**设$z=e^x+y^2+f(x+y)$，且当$y=0$时，$z=x^3$，则求$\dfrac{\partial z}{\partial x}$。

解：已知$y=0$时，$z=e^x+f(x)=x^3$，$\therefore f(x)=x^3-e^x$，$f(x+y)=(x+y)^3-e^{x+y}$，$z=e^x+y^2+(x+y)^3-e^{x+y}$。

$\therefore\dfrac{\partial z}{\partial x}=e^x+3(x+y)^2-e^{x+y}$。

### 积分

#### 积分到偏导

可能一个函数是积分的形式，又包含多个变量，要求其多元偏导值。

$\dfrac{\textrm{d}}{\textrm{d}x}\int_{a(x)}^{b(x)}f(t)\,\textrm{d}t=b'(x)f[b(x)]-a'(x)f[a(x)]$。

**例题：**设$z=\int_0^1\vert xy-t\vert f(t)\,\textrm{d}t$，$0\leqslant x\leqslant1$，$0\leqslant y\leqslant1$，其中$f(x)$为连续函数，求$z_{xx}''+z_{yy}''$。

解：首先因为$z$是一个绝对值的形式，所以根据积分的性质可以拆开积分区间去掉绝对值：$z=\int_0^{xy}(xy-t)f(t)\,\textrm{d}t+\int_{xy}^1(t-xy)f(t)\,\textrm{d}t=xy\int_0^{xy}f(t)\,\textrm{d}t-\int_0^{xy}tf(t)\,\textrm{d}t+\int_{xy}^1tf(t)\,\textrm{d}t-xy\int_{xy}^1f(t)\,\textrm{d}t$。

$z_x'=y\int_0^{xy}f(t)\,\textrm{d}t+xy^2f(xy)-xy^2f(xy)-xy^2f(xy)-y\int_{xy}^1f(t)\,\textrm{d}t+xy^2f(xy)=y\int_0^{xy}f(t)\,\textrm{d}t-y\int_{xy}^1f(t)\,\textrm{d}t$。

$z_{xx}''=y^2f(xy)+y^2f(xy)=2y^2f(xy)$，同理根据变量对称性$z_{yy}''=2x^2f(xy)$，$z_{xx}''+z_{yy}''=2(x^2+y^2)f(xy)$。

#### 偏导到积分

是偏导问题的逆问题。

注意多元函数进行积分的适合多出来的常数$C$不再是常数，而是与积分变量相关的$C(x)$，$C(y)$，因为对其中一个变量积分时，另一个变量是看作常数的。

**例题：**设$z=f(x,y)$满足$\dfrac{\partial^2z}{\partial x\partial y}=x+y$，且$f(x,0)=x$，$f(0,y)=y^2$，求$f(x,y)$。

解：根据$\partial x\partial y$的求导顺序反向积分：

$\dfrac{\partial z}{\partial x}=\int(x+y)\,\textrm{d}y=xy+\dfrac{1}{2}y^2+C_1(x)$。（$x$看作常数）

再次积分$z=\displaystyle{\int\left(xy+\dfrac{1}{2}y^2+C_1(x)\right)\,\textrm{d}x}=\dfrac{1}{2}x^2y+\dfrac{1}{2}xy^2+\int C_1(x)\,\textrm{d}x+C_2(y)$。（$y$看作常数）

又$f(x,0)=x$，代入$\int C_1(x)\,\textrm{d}x+C_2(0)=x$，两边求导$C_1(x)=1$，即$\int C_1(x)\,\textrm{d}x=\int\textrm{d}x=x$，$z=\dfrac{1}{2}x^2y+\dfrac{1}{2}xy^2+x+C_2(y)$。

又$f(0,y)=y^2$，代入$C_2(y)=y^2$。

$\therefore z=\dfrac{1}{2}x^2y+\dfrac{1}{2}xy^2+x+y^2$。

### 性质

#### 存在性

即偏导数的存在性。

**例题：**求函数$f(x,y)=\sqrt{\vert xy\vert}$在点$(0,0)$处偏导数是否存在，是否可微。

解：对其求偏导：$f_x'(0,0)=\lim\limits_{\Delta x\to0}\dfrac{f(0+\Delta x,0)-f(0,0)}{\Delta x}=\lim\limits_{\Delta x\to0}\dfrac{\sqrt{\vert\Delta x\cdot0\vert}-0}{\Delta x}\\=0=A$，同理$f_y'(0,0)=0=B$，所以$f(x,y)$在$(0,0)$处偏导数存在。

又$\Delta z=f(0+\Delta x,0+\Delta y)-f(0,0)=\sqrt{\vert\Delta x\cdot\Delta y\vert}$。

所以$\lim\limits_{\substack{\Delta x\to0\\\Delta y\to0}}\dfrac{\Delta z-A\Delta x-B\Delta y}{\sqrt{(\Delta x)^2+(\Delta y)^2}}=\lim\limits_{\substack{\Delta x\to0\\\Delta y\to0}}\dfrac{\sqrt{\vert\Delta x\cdot\Delta y\vert}}{\sqrt{\Delta^2x+\Delta^2y}}$不存在，所以此点不可微。

#### 连续性

即偏导数的连续性。也会考察原函数的连续性。

通过微分定义和极限即可证明。

## 微分

### 微分值

#### 偏导法

#### 全微分法

#### 公式法

### 全微分

#### 含参数

基本上是用含参数的全微分来求参数。有多种方法。

**例题：**设$(ax^2y^2-2xy^2)\textrm{d}x+(2x^3y+bx^2y+1)\textrm{d}y$是函数$f(x,y)$的全微分，求参数。

解：由全微分定义可知，$f_x'=ax^2y^2-2xy^2$，$f_y'=2x^3y+bx^2y+1$。

分别对其积分：$f(x,y)=\int(ax^2y^2-2xy^2)\textrm{d}x=\int(2x^3y+bx^2y+1)\textrm{d}y$。

从而$\dfrac{a}{3}x^3y^2-x^2y^2+C(y)=x^3y^2+\dfrac{b}{2}x^2y^2+y+C(x)$，解得$a=3$，$b=-2$，$f(x)=x^3y^2-x^2y^2+y$。

#### 极限定义

全微分形式：$\lim\limits_{\substack{\Delta x\to0\\\Delta y\to0}}\dfrac{\Delta z-(A\Delta x+B\Delta y)}{\sqrt{(\Delta x)^2+(\Delta y)^2}}$。

要求$\textrm{d}z|_{(a,b)}$，就要求$\lim\limits_{(x,y)\to(a,b)}f(x,y)-f(a,b)=cx+dy+o(\rho)$，$c$和$d$就是$\textrm{d}x\textrm{d}y$的参数。

**例题：**连续函数$z=f(x,y)$满足$\lim\limits_{\substack{x\to0\\ y\to1}}\dfrac{f(x,y)-2x+y-2}{\sqrt{x^2+(y-1)^2}}=0$，求$\textrm{d}z|_{(0,1)}$。

解：当$x\to0$，$y\to1$时$\sqrt{x^2+(y-1)^2}\to0$，又$\lim\limits_{\substack{x\to0\\ y\to1}}\dfrac{f(x,y)-2x+y-2}{\sqrt{x^2+(y-1)^2}}=0$，$\therefore\lim\limits_{\substack{x\to0\\ y\to1}}f(x,y)-2x+y-2=0$。

又$f(x,y)$连续，则$f(0,1)+1-2=0$，$f(0,1)=1$。将值代入，并按分子配方：

$\lim\limits_{\substack{x\to0\\ y\to1}}\dfrac{f(x,y)-f(0,1)-2x+(y-1)}{\sqrt{x^2+(y-1)^2}}=0$，即$f(x,y)-f(0,1)=2x-(y-1)+o(\rho)$。

根据全微分的定义偏导数就是其系数，$f_x'(0,1)=2$，$f_y'(0,1)=-1$。

$\therefore\textrm{d}z|_{(0,1)}=2\textrm{d}x-\textrm{d}y$。

**例题：**设$f(x,y)$在$(0,0)$处连续，且$\lim\limits_{(x,y)\to(0,0)}\dfrac{f(x,y)-a-bx-cy}{\ln(1+x^2+y^2)}=1$，其中$a,b,c$为常数，求$\textrm{d}f(x,y)|_{(0,0)}$。

解：根据全微分的定义，分母应该是根号的形式，所以对于极限使用等价无穷小替换$\ln(x+1)\sim x$，$\ln(1+x^2+y^2)=x^2+y^2$，$\lim\limits_{(x,y)\to(0,0)}\dfrac{f(x,y)-a-bx-cy}{x^2+y^2}=1$。

又$(x,y)\to0$时$x^2+y^2\to0$，$\therefore f(x,y)-a-bx-cy\to0$。

又$f(x,y)$在$(0,0)$处连续，$f(0,0)=a$。根据极限和无穷小的关系将其代回：

$\lim\limits_{(x,y)\to(0,0)}\dfrac{f(x,y)-f(0,0)-bx-cy}{x^2+y^2}=1+o(1)$。

$\therefore\lim\limits_{(x,y)\to(0,0)}f(x,y)-f(0,0)-bx-cy=x^2+y^2+o(1)\cdot(x^2+y^2)=o(\rho)$。

$\therefore\lim\limits_{(x,y)\to(0,0)}f(x,y)-f(0,0)=bx+cy+o(\rho)$。

即$f_x'(0,0)=b$，$f_y'(0,0)=c$。$\textrm{d}f(x,y)|_{(0,0)}=b\textrm{d}x+c\textrm{d}y$。

#### 隐函数

二元隐函数求导公式：$\dfrac{\textrm{d}y}{\textrm{d}x}=-\dfrac{F_x'}{F_y'}$。

三元隐函数求导公式：$\dfrac{\partial z}{\partial x}=-\dfrac{F_x'}{F_z'}$，$\dfrac{\partial z}{\partial y}=-\dfrac{F_y'}{F_z'}$。

**例题：**设$f(x,y,z)=e^x+y^2z$，其中$z=z(x,y)$由$x+y+z+xyz=0$确定，求$f_x'(0,1,-1)$。

解：$f_x'(x,y,z)=e^x+y^2z_x'$。

又$x+y+z+xyz=0$对$x$求导：$1+z_x'+yz+xyz_x'=0$，代入$(0,1,-1)$，$1+z_x'-1=0$，$z_x'=0$。代入$f_x'(x,y,z)=e^0=1$。

#### 原函数

即根据全微分计算出原函数。跟之前的偏导求积分类似。

**例题：**已知函数$z=f(x,y)$的全微分$\textrm{d}z=2x\textrm{d}x+\sin y\textrm{d}y$，$f(1,0)=2$，求$f(x,y)$。

解：由全微分定义，可得$\dfrac{\partial f}{\partial x}=2x$，$\dfrac{\partial f}{\partial y}=\sin y$。

各自积分得到$f(x,y)=x^2-\cos y+C$，代入$f(1,0)=1-1+C=2$，所以$C=2$，即$f(x,y)=x^2-\cos y+2$。

# 多元函数极值最值

## 无条件极值

### 显函数

首先对原式分别对$xy$求导令其为0，得到极值点。计算二阶微分判断点是否为极值点和为哪种极值点，最后得到极值。

### 隐函数

首先对原式分别对$xy$求导，然后令$z_x'$、$z_y'$全部为0得到关系式，再把关系式带回原式得到可疑点。计算二阶微分判断点是否为极值点和为哪种极值点，最后得到极值。

## 有条件极值

与无条件极值一样，在边界就是显函数可以直接求，在区域内就是隐函数需要求出可疑点再计算可疑点的二阶导数值判断。

### 闭区域边界

即使用拉格朗日乘数法。

### 闭区域内

1.  对原式$f(x,y)$分别对$x,y$求导并令为0得到可疑点$(xi_i,yi_i)$。

2.  求出$f(x,y)$在$D$内所有可疑点的函数值$Pi_i$。

3.  找出所有区域$D$的边界函数$L_i$。

4.  根据区域边界函数$L_i$转换$y$并带入原式$f(x,\varphi(x))$求导令为0得到边界上的极值点$(xb_i,yb_i)$。

5.  求出边界上的极值点$Pb_i$。

6.  比较区域内极值点$Pi_i$和边界上极值点$Pb_i$，得到总的极值点。

# 多元函数微分应用

## 空间曲线的切线与法平面

### 参数方程

设空间曲线$\varGamma$由参数方程$\left\{\begin{array}{l}
    x=\phi(t) \\
    y=\psi(t) \\
    z=\omega(t)
\end{array}\right.$给出，其中$\phi(t),\psi(t),\omega(t)$均可导，$P_0(x_0,y_0,z_0)$为$\varOmega$上的点，且当$t=t_0$时，$\phi'(t_0)$，$\psi'(t_0)$，$\omega'(t_0)$均不为0，则：

-   曲线$\varGamma$在点$P_0(x_0,y_0,z_0)$处的切向量为$\vec{\tau}=(\phi'(t_0),\psi'(t_0),\omega'(t_0))$。

-   曲线$\varGamma$在点$P_0(x_0,y_0,z_0)$处的切线方程为$\dfrac{x-x_0}{\phi'(t_0)}=\dfrac{y-y_0}{\psi'(t_0)}=\dfrac{z-z_0}{\omega'(t_0)}$。

-   曲线$\varGamma$在点$P_0(x_0,y_0,z_0)$处的法平面（过$P_0$且与切线垂直的平面）方程为$\phi'(t_0)(x-x_0)+\psi'(t_0)(y-y_0)+\omega'(t_0)(z-z_0)=0$。

### 交面式方程

设空间曲线$\varGamma$由交面方程$\left\{\begin{array}{l}
    F(x,y,z)=0 \\
    G(x,y,z)=0
\end{array}\right.$给出，则：

-   曲线$\varGamma$在点$P_0(x_0,y_0,z_0)$处的切向量为\
    $\vec{\tau}=\left(\left\vert\begin{array}{cc}
            F_y' & F_z' \\
            G_y' & G_z'
        \end{array}\right\vert_{P_0},\left\vert\begin{array}{ll}
            F_z' & F_x' \\
            G_z' & G_x'
        \end{array}\right\vert_{P_0},\left\vert\begin{array}{ll}
            F_x' & F_y' \\
            G_x' & G_y'
        \end{array}\right\vert_{P_0}\right)$。

-   曲线$\varGamma$在点$P_0(x_0,y_0,z_0)$处的切线方程为\
    $\dfrac{x-x_0}{\left\vert\begin{array}{cc}
            F_y' & F_z' \\
            G_y' & G_z'
        \end{array}\right\vert_{P_0}},\dfrac{y-y_0}{\left\vert\begin{array}{ll}
            F_z' & F_x' \\
            G_z' & G_x'
        \end{array}\right\vert_{P_0}},\dfrac{z-z_0}{\left\vert\begin{array}{ll}
            F_x' & F_y' \\
            G_x' & G_y'
        \end{array}\right\vert_{P_0}}$。

-   曲线$\varGamma$在点$P_0(x_0,y_0,z_0)$处的法平面方程为\
    $\left\vert\begin{array}{cc}
            F_y' & F_z' \\
            G_y' & G_z'
        \end{array}\right\vert_{P_0}(x-x_0)+\left\vert\begin{array}{ll}
            F_z' & F_x' \\
            G_z' & G_x'
        \end{array}\right\vert_{P_0}(y-y_0)+\left\vert\begin{array}{ll}
            F_x' & F_y' \\
            G_x' & G_y'
        \end{array}\right\vert_{P_0}(z-z_0)=0$。

## 空间曲面的切平面与法线

### 隐式

设空间曲面$\varSigma$由方程$F(x,y,z)=0$给出，$P_0(x_0,y_0,z_0)$是$\varSigma$上的点，则：

-   曲面$\varSigma$在点$P_0(x_0,y_0,z_0)$处的法向量为$\vec{n}=(F_x'(x_0,y_0,z_0),F_y'(x_0,y_0,z_0),$\
    $F_z'(x_0,y_0,z_0))$且法线方程为$\dfrac{x-x_0}{F_x'(x_0,y_0,z_0)}=\dfrac{y-y_0}{F_y'(x_0,y_0,z_0)}=\dfrac{z-z_0}{F_z'(x_0,y_0,z_0}$。

-   曲面$\varSigma$在点$P_0(x_0,y_0,z_0)$处的切平面方程为$F_x'(x_0,y_0,z_0)(x-x_0)+F_y'$\
    $(x_0,y_0,z_0)(y-y_0)+F_z'(x_0,y_0,z_0)(z-z_0)=0$。

### 显式

设空间曲面$\varSigma$由方程$z=f(x,y)$给出，令$F(x,y,z)=f(x,y)-z$，假定法向量的方向向下，即其余$z$轴正向所成的角为钝角，即$z$为-1，则：

-   曲面$\varSigma$在点$P_0(x_0,y_0,z_0)$处的法向量为$\vec{n}=(f_x'(x_0,y_0),f_y'(x_0,y_0),-1)$，且法线方程为$\dfrac{x-x_0}{f_x'(x_0,y_0)}=\dfrac{y-y_0}{f_y'(x_0,y_0)}=\dfrac{z-z_0}{-1}$。

-   曲面$\varSigma$在点$P_0(x_0,y_0,z_0)$处的切平面方程为$f_x'(x_0,y_0)(x-x_0)+f_y'(x_0,y_0)$\
    $(y-y_0)-(z-z_0)=0$。

若是反之成锐角，则将里面所有的-1都换成1。

若用$\alpha$，$\beta$，$\gamma$表示曲面$z=f(x,y)$在点$(x_0,y_0,z_0)$处的法向量的方向角，并这里假定法向量的方向是向上的，即其余$z$轴正向所成的角$\gamma$为锐角，则法向量**方向余弦**为$\cos\alpha=\dfrac{-f_x}{\sqrt{1+f_x^2+f_y^2}}$，$\cos\beta=\dfrac{-f_y}{\sqrt{1+f_x^2+f_y^2}}$，$\cos\gamma=\dfrac{1}{\sqrt{1+f_x^2+f_y^2}}$，其中$f_x=f_x'(x_0,y_0)$，$f_y=f_y'(x_0,y_0)$。

**例题：**设直线$L\left\{\begin{array}{l}
    x+y+b=0 \\
    x+ay-z-3=0
\end{array}\right.$在平面$\pi$上，而平面$\pi$与曲面$z=x^2+y^2$相切于$(1,-2,5)$，求$ab$的值。

解：$L$在$\pi$上且与曲面相切，则$\pi$为$L$的切平面。设曲面方程$F(x,y,z)=x^2+y^2-z$。

曲面法向量为$\vec{n}=\{F_x',F_y',F_z'\}=\{2x,2y,-1\}$，代入$(1,-2,5)$，则法向量为$\{2,-4,-1\}$。

又点法式：$\pi:2(x-1)-4(y+2)-(z-5)=0$，即$2x-4y-z-5=0$。

联立直线方程，得到：$(5+a)x+4b+ab-2=0$，又$x$是任意的。

解得$a=-5,b=-2$。
