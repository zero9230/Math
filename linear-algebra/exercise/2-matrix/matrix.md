---
author:
- Didnelpsun
title: 矩阵
---

# 矩阵幂

## 对应成比例

因为矩阵运算不满足交换率但是满足结合率，且一行矩阵乘一列矩阵的乘积为一个数，所以可以推出矩阵的幂的运算方法。

这个方法要求$r(A)=1$，即对应成比例。

令$A$为$n$阶方阵，将$A$拆为$A=(a_1,a_2,\cdots,a_n)^T(b_1,b_2,\cdots,b_n)=\alpha^T\beta$，所以$A^n=\alpha^T\beta\alpha^T\beta\cdots\alpha^T\beta$，利用结合率：$\alpha^T(\beta\alpha^T)(\beta\cdots\alpha^T)\beta$，中间一共$n-1$个$\beta\alpha^T$，$\beta\alpha^T$是一个数，即$A^n=(\beta\alpha^T)^{n-1}\alpha^T\beta=(\beta\alpha^T)^{n-1}A$。

**例题：**$A=\left(\begin{array}{ccc}
    1 & 2 & 3 \\
    -2 & -4 & -6 \\
    3 & 6 & 9
\end{array}\right)$，求$A^n$。

解：$A=(1,-2,3)^T(1,2,3)$，所以$A^n=((1,2,3)(1,-2,3)^T)^n(1,-2,3)^T(1,2,3)$

$=6^{n-1}A$。

若矩阵$A$的行与列都成比例，则$A^n=[tr(A)]^{n-1}A$，$[tr(A)]=\sum a_{ii}$，即矩阵迹为对角线元素值之和。

## 试算归纳

对$A$进行试算，如$A^2$，若$A^k$是一个数量阵，那么计算$A^n$就只用找规律就可以了。

**例题：**$A=\left(\begin{array}{cccc}
    1 & -1 & -1 & -1 \\
    -1 & 1 & -1 & -1 \\
    -1 & -1 & 1 & -1 \\
    -1 & -1 & -1 & 1 \\
\end{array}\right)$，求$A^n$（$n\geqslant2$）。

解：通过计算得知$A^2=4E$，这是一个数量阵。

$\therefore A^n=\left\{\begin{array}{lcl}
    4^kE, & & n=2k \\
    4^kA, & & n=2k+1
\end{array}\right.$。

## 行列结合

将一个矩阵拆成$\alpha\beta^T$的形式，其中都是列向量，从而进行幂运算可以进行结合$\beta^T\alpha$为一个常数。

**例题：**设$\alpha=(1,3,-2)^T$，$\beta=(2,0,0)^T$，$A=\alpha\beta^T$，求$A^3$。

解：$\because\beta^T\alpha=[2,0,0][1,3,-2]^T=2$，$\therefore A^3=(\alpha\beta^T)(\alpha\beta^T)(\alpha\beta^T)=\alpha(\beta^T\alpha)$\
$(\beta^T\alpha)\beta^T=4\alpha\beta^T=4A$。

## 拆分矩阵

将$A^n$拆分为两个矩阵$A^n=(B+C)^n$，其中$BC$应该是可逆的，即$BC=CB$，所以一般有一个是$E$。

**例题：**$A=\left(\begin{array}{ccc}
    1 & 1 & 0 \\
    0 & 1 & 1 \\
    0 & 0 & 1
\end{array}\right)$，求$A^n$。

解：$A=E+B=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1
\end{array}\right)+\left(\begin{array}{ccc}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{array}\right)$。

$\therefore A^n=(E+B)^n=C_n^0E^n+C_n^1E^{n-1}B+C_n^2E^{n-2}B^2+\cdots$。

又$B^2=\left(\begin{array}{ccc}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{array}\right)\left(\begin{array}{ccc}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{array}\right)=\left(\begin{array}{ccc}
    0 & 0 & 1 \\
    0 & 0 & 0 \\
    0 & 0 & 0
\end{array}\right)$。

$B^3=B^2B=\left(\begin{array}{ccc}
    0 & 0 & 1 \\
    0 & 0 & 0 \\
    0 & 0 & 0
\end{array}\right)\left(\begin{array}{ccc}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{array}\right)=\left(\begin{array}{ccc}
    0 & 0 & 0 \\
    0 & 0 & 0 \\
    0 & 0 & 0
\end{array}\right)=O$。

$\therefore B^4=B^5=\cdots=O$。

$\therefore A^n=(E+B)^n=C_n^0E^n+C_n^1E^{n-1}B+C_n^2E^{n-2}B^2$。

$=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1
\end{array}\right)+n\left(\begin{array}{ccc}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{array}\right)+\dfrac{n(n-1)}{2}\left(\begin{array}{ccc}
    0 & 0 & 1 \\
    0 & 0 & 0 \\
    0 & 0 & 0
\end{array}\right)$

## 分块矩阵

$\left[\begin{array}{cc}
    A & O \\
    O & B
\end{array}\right]^n=\left[\begin{array}{cc}
    A^n & O \\
    O & B^n
\end{array}\right]$。

# 初等变换

若$A$和$B$等价，求一个可逆矩阵$P$，使得$PA=B$。只用右乘$P=BA^{-1}$。

需要根据逻辑上的计算还原出左乘的初等矩阵。

**例题：**$A=\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    -1 & -1 & 1 \\
    0 & 2 & -4
\end{array}\right)$，$B=\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    0 & -1 & 2 \\
    0 & 0 & 0
\end{array}\right)$，当$A\sim B$时，求$P$使得$PA=B$。.

解：目标是将$A$变为$B$，所以第一步将第一列的第二行的-1变为0。即将第一行加到第二行。

左乘$E_{21}(1)A=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    1 & 1 & 0 \\
    0 & 0 & 1
\end{array}\right)\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    -1 & -1 & 1 \\
    0 & 2 & -4
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    0 & -1 & 2 \\
    0 & 2 & -4
\end{array}\right)=C$。

然后对第二列进行消，首先将第三行加上第二行的两倍。

$E_{32}(2)C=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    1 & 1 & 0 \\
    0 & 2 & 1
\end{array}\right)\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    0 & -1 & 2 \\
    0 & 2 & -4
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 1 \\
    1 & -1 & 2 \\
    0 & 0 & 0
\end{array}\right)=B$。

$\therefore E_{32}(2)E_{21}(1)A=B$。

$P=E_{32}(2)E_{21}(1)=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 2 & 1
\end{array}\right)\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    1 & 1 & 0 \\
    0 & 0 & 1
\end{array}\right)=\left(\begin{array}{ccc}
    1 & 0 & 0 \\
    1 & 1 & 0 \\
    2 & 2 & 1
\end{array}\right)$。

# 逆矩阵

## 定义法

找出一个矩阵$B$，使得$AB=E$，则$A$可逆，$A^{-1}=B$。

**例题：**$A$，$B$均是$n$阶方阵，且$AB=A+B$，证明$A-E$可逆，并求$(A-E)^{-1}$。

解：要证明$A-E$，就要从$AB=A+B$中尽量凑出。

$AB=A+B$变为$AB-B=A$，从而提取$(A-E)B=A$，$(A-E)BA^{-1}=E$。

但是$A^{-1}$是未知的，所以$A-E$的逆矩阵不能用$BA^{-1}$来表示。

$AB-A=B$，所以提出$A(B-E)=B$，即$A(B-E)=B-E+E$，$(A-E)(B-E)=E$，所以$A-E$的逆矩阵就是$B-E$。

## 分解乘积

将$A$分解为若干个可逆矩阵的乘积。若$A=BC$，$B$，$C$可逆，则$A$可逆，且$A^{-1}=C^{-1}B^{-1}$。同理$(ABC)^{-1}=C^{-1}B^{-1}A^{-1}$。

**例题：**设$A$，$B$为同阶可逆方阵，且$A^{-1}+B^{-1}$可逆，求$(A+B)^{-1}$。

解：已知$A^{-1}+B^{-1}$可以用来表示其他式子，需要求$A+B$的逆，则需要将$A+B$转为其逆。

$\because A+B=A(E+A^{-1}B)=A(B^{-1}+A^{-1})B$。

$\therefore (A+B)^{-1}=B^{-1}(B^{-1}+A^{-1})^{-1}A^{-1}$。

## 初等变换

$\left[A\vdots B\right]\overset{r}{\sim}\left[E\vdots A^{-1}\right]$，$\left[\begin{array}{c}
    A \\
    B
\end{array}\right]\overset{c}{\sim}\left[\begin{array}{c}
    E \\
    A^{-1}
\end{array}\right]$。

## 分块矩阵

基于拉普拉斯展开式。

对于一些分块矩阵的逆，若$A$，$B$都可逆，则：$\left[\begin{array}{cc}
    A & O \\
    O & B
\end{array}\right]^{-1}=\left[\begin{array}{cc}
    A^{-1} & O \\
    O & B^{-1}
\end{array}\right]$，$\left[\begin{array}{cc}
    O & A \\
    B & O
\end{array}\right]^{-1}=\left[\begin{array}{cc}
    O & B^{-1} \\
    A^{-1} & O
\end{array}\right]$。

**例题：**已知$A=\left(\begin{array}{cc}
    B & O \\
    D & C
\end{array}\right)$，其中$B$为$r\times r$可逆矩阵，$C$为$s\times s$可逆矩阵，求$A^{-1}$。

解：$\because\vert A\vert=\left|\begin{array}{cc}
    B & O \\
    D & C
\end{array}\right|=\vert B\vert\vert C\vert\neq0$，所以$A$可逆，设$A^{-1}=\left(\begin{array}{cc}
    X & Y \\
    Z & W
\end{array}\right)$。

$AA^{-1}=\left(\begin{array}{cc}
    E_r & O \\
    O & E_s
\end{array}\right)=E_{r+s}$。即$\left(\begin{array}{cc}
    BX & BY \\
    DX+CZ & DY+CW
\end{array}\right)=E_{r+s}$。

$\therefore\left\{\begin{array}{l}
    BX=E \\
    BY=O \\
    DX+CZ=O \\
    DY+CW=E
\end{array}\right.$，$\left\{\begin{array}{ll}
    B^{-1}BX=B^{-1}, & X=B^{-1}\\
    B^{-1}BY=O, & Y=O \\
    CZ=-DX=-DB^{-1}, & Z=-C^{-1}DB^{-1} \\
    CW=E, & W=C^{-1}
\end{array}\right.$。

$\therefore A^{-1}=\left(\begin{array}{cc}
    B^{-1} & O \\
    -C^{-1}DB^{-1} & C^{-1}
\end{array}\right)$。

当分块矩阵为三角矩阵时，对角线为原方块矩阵的逆矩阵，非0的一角为原矩阵，再左乘同行的逆矩阵，右乘同列的逆矩阵。

$\therefore A=\left(\begin{array}{cc}
    B & D \\
    O & C
\end{array}\right)$，$A^{-1}=\left(\begin{array}{cc}
    B^{-1} & -B^{-1}DC^{-1} \\
    O & C^{-1}
\end{array}\right)$。

当分块矩阵为副对角矩阵时，对角线为对角方块矩阵的逆矩阵，非0的一角为原矩阵，再左乘同行的逆矩阵，右乘同列的逆矩阵。

$\therefore A=\left(\begin{array}{cc}
    O & B \\
    C & D
\end{array}\right)$，$A^{-1}=\left(\begin{array}{cc}
    -C^{-1}DB^{-1} & C^{-1} \\
    B^{-1} & O
\end{array}\right)$。

$\therefore A=\left(\begin{array}{cc}
    D & B \\
    C & O
\end{array}\right)$，$A^{-1}=\left(\begin{array}{cc}
    O & C^{-1} \\
    B^{-1} & -C^{-1}DB^{-1}
\end{array}\right)$。

$A=\left(\begin{array}{ccc}
    A_1 \\
     & \ddots \\
     & & A_n
\end{array}\right)$，$A^{-1}=\left(\begin{array}{ccc}
    A_1^{-1} \\
     & \ddots \\
     & & A_n^{-1}
\end{array}\right)$。

$A=\left(\begin{array}{ccc}
     & & A_1 \\
     & \ddots \\
    A_n 
\end{array}\right)$，$A^{-1}=\left(\begin{array}{ccc}
    & & A_n^{-1} \\
    & \begin{turn}{80}$$\end{turn} \\
   A_1^{-1}
\end{array}\right)$。

**例题：**已知矩阵$A$的伴随矩阵$A^*=\left[\begin{array}{cccc}
    4 & -2 & 0 & 0 \\
    -3 & 1 & 0 & 0 \\
    0 & 0 & -4 & 0 \\
    0 & 0 & 0 & -1
\end{array}\right]$，求$A$。

解：由于$A^{-1}=\dfrac{A^*}{\vert A\vert}$，所以$A=\vert A\vert(A^*)^{-1}$。已知$A^*$可知$(A^*)^{-1}$，所以重点就是求$\vert A\vert$。

又$\vert A^*\vert=\vert A\vert^{n-1}$，$\vert A^*\vert=-8$，$\vert A\vert=-2$。

所以根据分块矩阵的逆运算，可以得到$(A^*)^{-1}=\left[\begin{array}{cccc}
    -\dfrac{1}{2} & -1 & 0 & 0 \\
    -\dfrac{3}{2} & -2 & 0 & 0 \\
    0 & 0 & -\dfrac{1}{4} & 0 \\
    0 & 0 & 0 & -1
\end{array}\right]$。

所以$A=\left[\begin{array}{cccc}
    1 & 2 & 0 & 0 \\
    3 & 4 & 0 & 0 \\
    0 & 0 & \dfrac{1}{2} & 0 \\
    0 & 0 & 0 & 2
\end{array}\right]$。

# 方阵行列式

## 两项积商

-   $\vert A^T\vert=\vert A\vert$。

-   $\vert A^{-1}\vert=\dfrac{1}{\vert A\vert}$。

-   $\vert\lambda A\vert=\lambda^n\vert A\vert$。

-   $\vert AB\vert=\vert A\vert\cdot\vert B\vert=\vert BA\vert$。

-   $\vert A^*\vert=\vert A\vert^{n-1}$。

因为两项积商比较简单，所以基本上会变换$A$和$B$，让其变为转置或逆矩阵。

## 两项和差

两项和差需要将方阵拆分为向量组的形式，然后根据矩阵与行列式的运算法则进行运算。（注意其中的差别）

**例题：**设四阶方阵$A=[\alpha,\gamma_2,\gamma_3,\gamma_4]$，$B=[\beta,\gamma_2,\gamma_3,\gamma_4]$，其中$\alpha$、$\beta$、$\gamma_i$均为四维向量，且$\vert A\vert=5$，$\vert B\vert=-\dfrac{1}{2}$，求$\vert A+2B\vert$。

解：$=\vert[\alpha,\gamma_2,\gamma_3,\gamma_4]+2[\beta,\gamma_2,\gamma_3,\gamma_4]\vert=\vert[\alpha+2\beta,3\gamma_2,3\gamma_3,3\gamma_4]\vert=27\vert[\alpha+2\beta,\gamma_2,\gamma_3,\gamma_4]\vert=27\vert[\alpha,\gamma_2,\gamma_3,\gamma_4]\vert+54\vert[\beta,\gamma_2,\gamma_3,\gamma_4]\vert=27(\vert A\vert+2\vert B\vert)=108$。

# 矩阵方程

含有未知矩阵的方程就是矩阵方程，需要将方程进行恒等变形，化为$AX=B$、$XA=B$或$AXB=C$的形式。

若$A$、$B$可逆，且可以分别得到$X=A^{-1}B$，$X=BA^{-1}$，$X=A^{-1}CB^{-1}$。

## 直接化简

**例题：**设3阶方阵$A$，$B$满足$A^{-1}BA=6A+BA$，且$A=\left(\begin{array}{ccc}
    \dfrac{1}{3} & 0 & 0 \\
    0 & \dfrac{1}{4} & 0 \\
    0 & 0 & \dfrac{1}{5}
\end{array}\right)$，求$B$。

解：$A^{-1}BA=(6E+B)A$，$A^{-1}B=6E+B$，$A^{-1}B-B=6E$，$(A^{-1}-E)B=6E$。

$\therefore B=6(A^{-1}-E)^{-1}$。

## 凑目标式

有时候直接化简非常麻烦，因为所求的式子很复杂，甚至出现结果不能得到的情况。

**例题：**已知$AB=A+B$，其中$B=\left[\begin{array}{ccc}
    1 & 1 & 0 \\
    1 & 1 & 0 \\
    0 & 0 & 2
\end{array}\right]$，求$(A-E)^{-1}$。

解：已知$AB=A+B$，求$A-E$，则向目标计算。

$AB-B=A$，即$(A-E)B=A$，$(A-E)^{-1}=BA^{-1}$。因为$A$未知，所以要消去$A$。

根据$AB=A+B$，得到$AB-A=B$，即$A(B-E)=B$，$A^{-1}=(B-E)B^{-1}$。

$(A-E)^{-1}=BA^{-1}=B(B-E)B^{-1}$，然后就不知道接下来怎么办了。

我们很希望$BB^{-1}$在一起消掉，但是无论如何操作都无法完成。但是也可以通过此得到解题的启示，按$(A-E)(B-E)$去凑。

回到$(A-E)B=A$，去凑$B-E$，先尝试两边减去$E$，得到$(A-E)B-E=A-E$，正好左移右项$(A-E)(B-E)=E$，解得$(A-E)^{-1}=B-E$。

即$=\left[\begin{array}{ccc}
    0 & 1 & 0 \\
    1 & 0 & 0 \\
    0 & 0 & 1
\end{array}\right]$。

# 矩阵秩

## 未知参数

已知一个矩阵的秩，求其矩阵中的参数。需要将矩阵简化，使得最下面的一行除了参数没有别的非零常数。

**例题：**已知$A=\left[\begin{array}{cccc}
    1 & 1 & a & 4 \\
    1 & 0 & 2 & a \\
    -1 & a & 1 & 0
\end{array}\right]$，$r(A)=3$，求$A$。

解：首先对$A$化简：$A=\left[\begin{array}{cccc}
    1 & 1 & a & 4 \\
    0 & 1 & a-2 & 4-a \\
    0 & 0 & (a+1)(3-a) & a(a-3)
\end{array}\right]$，若$r(A)=3$，则$(a+1)(3-a)$与$a(a-3)$不全为0，所以$a\neq3$。

## 矩阵运算

给出几个矩阵，进行矩阵运算求出对应的秩。

$r(kA)=r(A)$。

$r(AB)\leqslant\min\{r(A),r(B)\}$。当且仅当$AB$满秩等号成立。

$r(A+B)\leqslant r(A|B)\leqslant r(A)+r(B)$。

$r(A^*)=\left\{\begin{array}{l}
    n, r(A)=n \\
    1, r(A)=n-1 \\
    0, r(A)<n-1
\end{array}\right.$。

**例题：**已知$A=\left[\begin{array}{cccc}
    1 & 2 & 3 & 4 \\
    2 & 3 & 4 & 5 \\
    3 & 4 & 5 & 6 \\
    4 & 5 & 6 & 7
\end{array}\right]$，$B=\left[\begin{array}{cccc}
    0 & 1 & -1 & 2 \\
    0 & -1 & 2 & 3 \\
    0 & 0 & 1 & 4 \\
    0 & 0 & 0 & 2
\end{array}\right]$，求$r(AB+2A)$。

解：$r(AB+2A)=r(A(B+2E))$。又$B+2E=\left[\begin{array}{cccc}
    2 & 1 & -1 & 2 \\
    0 & 1 & 2 & 3 \\
    0 & 0 & 3 & 4 \\
    0 & 0 & 0 & 4
\end{array}\right]$，$r(B+2E)=4$。

又$A=\left[\begin{array}{cccc}
    1 & 2 & 3 & 4 \\
    2 & 3 & 4 & 5 \\
    3 & 4 & 5 & 6 \\
    4 & 5 & 6 & 7
\end{array}\right]=\left[\begin{array}{cccc}
    1 & 2 & 3 & 4 \\
    1 & 1 & 1 & 1 \\
    1 & 1 & 1 & 1 \\
    1 & 1 & 1 & 1
\end{array}\right]=\left[\begin{array}{cccc}
    1 & 2 & 3 & 4 \\
    0 & -1 & -2 & -3 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0
\end{array}\right]$。

所以$r(A)=2$，$r(AB+2A)=\min\{r(A),r(B+2E)\}=2$。

# 矩阵等价

其实求等价矩阵就是判定其秩是否相等。
