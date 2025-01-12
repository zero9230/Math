---
author:
- Didnelpsun
title: 随机事件与概率
---

# 基本概念

## 随机试验

[**定义：**]{style="color: violet"}满足三个条件的就是随机试验：

1.  试验可以在相同的条件下重复进行。

2.  试验所以可能结果都是明确可知，且不止一个。

3.  每次试验的结果事先不确定。

随机试验也称为**试验**，并用$E_1,E_2,\cdots$来表示。

## 随机事件

[**定义：**]{style="color: violet"}一次试验中可能出现也可能补出现的结果称为**随机事件**，简称**事件**，并用大写字母$A,B,\cdots$来表示。

必然事件[**定义：**]{style="color: violet"}每次试验中一定发生的事件，记为$\Omega$。

不可能事件[**定义：**]{style="color: violet"}每次试验中一定不发生的事件，记为$\varnothing$。

## 样本空间

随机试验的每一个不可再分的可能结果称为**样本点**，记为$\omega$，样本点的全体组成的集合称为**样本空间**或**基本事件空间**，记为$\Omega$，即$\Omega=\{\omega\}$。

由一个样本点构成的事件称为**基本事件**。

随机事件$A$总是由若干个基本事件构成，即$A$是$\Omega$的子集。

样本点的个数就是基本事件的个数。

# 事件

## 关系

若事件$A$发生必然导致事件$B$发生，则称事件$B$**包含**事件$A$（或$A$被$B$包含），记为$A\subset B$。

如果$A\subset B$且$B\subset A$，则称事件$AB$**相等**，记为$A=B$，$AB$是由完全相同的一些试验结果构成，是同一事件表面上看来两个不同说法。

若事件在事件$A$与$B$同时发生，则称为事件$A$与$B$的**积**或**交**，记为$A\cap B$或$AB$。

有限个事件$A_1,A_2,\cdots,A_n$同时发生的事件为事件$A_1,A_2,\cdots,A_n$的积或交，记为$\bigcap\limits_{i=1}^nA_i$或$\bigcap\limits_{i=1}^\infty A_i$。

若$AB\neq\varnothing$，则称事件$AB$**相容**，否则**互不相容**或**互斥**。如果一些事件中任意两个事件都互斥，则这些事件**两两互斥**，简称互斥。

事件$AB$至少有一个发生的事件称为事件$AB$的**和**或**并**，记为$A\cup B$。

有限个事件$A_1,A_2,\cdots,A_n$至少有一个发生的事件为事件$A_1,A_2,\cdots,A_n$的和或并，记为$\bigcup\limits_{i=1}^nA_i$或$\bigcup\limits_{i=1}^\infty A_i$。

事件$A$发生而事件$B$不发生的事件为事件$AB$的**差**，记为$A-B$。

事件$A$不发生的事件为事件$A$的**逆事件**或**对立事件**，记为$\overline{A}$。

若$\bigcup\limits_{i=1}^nA_i$或$\bigcup\limits_{i=1}^\infty A_i=\Omega$，$A_iA_j=\varnothing$（对一切的$i\neq j$，$i,j=1,2,3,\cdots,n,\cdots$），则称有限个事件$A_1,A_2,\cdots,A_n$构成一个**完备事件组**。

## 运算

定义可知：$A-B=A-AB=A\overline{B}$，$B=\overline{A}$等价于$AB=\varnothing$且$A\cup B=\Omega$。

1.  吸收律：若$A\subset B$，则$A\cup B=B$，$A\cap B=A$。

2.  交换律：$A\cup B=B\cup A$，$A\cap B=B\cap A$。

3.  结合律：$(A\cup B)\cup C=A\cup(B\cup C)$，$(A\cap B)\cap C=A\cap(B\cap C)$。

4.  分配律：$A\cap(B\cup C)=(A\cap B)\cup(A\cap C)$，$A\cup(B\cap C)=(A\cup B)\cap(A\cup C)$，$A\cap(B-C)=(A\cap B)-(A\cap C)$。

5.  对偶律（德·摩根律）：$\overline{A\cup B}=\overline{A}\cap\overline{B}$，$\overline{A\cap B}=\overline{A}\cup\overline{B}$。（长杠变短杠，开口换方向）

**例题：**判断$A-(B-C)=(A-B)\cup C$是否成立。

解：$\because A-B=A\overline{B}$，$\therefore A-(B-C)=A-B\overline{C}=A\overline{B\overline{C}}=A(\overline{B}\cup C)=A\overline{B}\cup AC=(A-B)\cup AC\neq (A-B)\cup C$。

# 概率

## 定义

-   描述性定义：将随机事件$A$发生的可能性大小的度量（非负）称为事件$A$发生的概率，记为$P(A)$。

-   统计性定义：在相同条件下做重复试验，事件$A$出现的次数$k$和总的试验次数$n$之比$\dfrac{k}{n}$，称为事件$A$在这$n$次试验中出现的**频率**，当$n$充分大时，频率将稳定与某常数$p$附近，$n$越大频率偏离这个常数$p$的可能性越小，这个常数$p$就是事件$A$的概率。

-   公理化定义：设随机试验的样本空间为$\Omega$，如果对每一个事件$A$都有一个确定的实数$P(A)$，且事件函数$P(\cdot)$满足：非负性：$P(A)\geqslant0$；规范性：$P(\Omega)=1$；可列可加性：对于任意个互不相容事件$A_1,A_2,\cdots,A_n$有$P(\bigcup\limits_{i=1}^\infty A_i)=\sum\limits_{i=1}^nP(A_i)$，则称$P(\cdot)$为概率，$P(A)$为事件$A$的概率。

## 概率类型

### 古典概型

[**定义：**]{style="color: violet"}样本空间满足：只有有限个样本点（基本事件）；每个样本点（基本事件）发生的可能性一样（等可能）。

若古典概型的基本事件总数为$n$，事件$A$包含$k$个基本事件，也称为有利于$A$的基本事件为$k$个，则$A$的概率为$P(A)=\dfrac{k}{n}=\dfrac{\text{事件}A\text{所含基本事件的个数}}{\text{基本事件总数}}$，这个概率就是$A$的**古典概率**。

古典概型的关键是计数，常用的方法有三种：

1.  列举法（直接查数法）：基本事件为数不多使用。

2.  集合对应法：

    1.  加法原理：完成一件事有$n$类方法，第一类方法中有$m_1$类方法，第二类办法有$m_2$中方法，$\cdots$，第$n$类方法中有$m_n$类方法，所以完成此事共有$\sum\limits_{i=1}^nm_i$种方法。

    2.  乘法原理：完成一件事情有$n$个步骤，第一步有$m_1$种方法，第二步有$m_2$种方法，$\cdots$，第$n$步有$m_n$种方法，则完成此事共有$\prod\limits_{i=1}^nm_i$种方法。

    3.  排列：从$n$种不同的元素种取出$m\leqslant n$个元素，并按照一定顺序排成一列，称为排列，所有排列的个数称为排列数，记为$A_n^m=n(n-1)(n-2)\cdots(n-m+1)=\dfrac{n!}{(n-m)!}$，当$m=n$时，$A_m^n=n!$称为**全排列**。

    4.  组合：从$n$种不同的元素种取出$m\leqslant n$个元素，并组成一组，称为组合，所有组合的个数称为组合数，记为$C_n^m=\dfrac{A_n^m}{m!}=\dfrac{n!}{(n-m)!m!}$。

3.  逆数法：先求$\overline{A}$中的基本事件数$n_{\overline{A}}$，将基本事件总数$n$减去$n_{\overline{A}}$得$A$中的基本事件数。常用于计算含有"至少"字样的事件的概率。

问题常见类型：

-   直接用定义求概率。

-   随机分配或随机占位。将$n$个可辨质点是随机分配到$N$个盒子中。若每盒最多可容纳一个质点，则一共有$P_N^n$种分法；若每盒可以容纳任意多个质点，则一共有$N^n$种分法。

-   简单随机抽样。设$\Omega=\{\omega_1,\omega_2,\cdots,\omega_N\}$含有$N$个元素，称$\Omega$为总体。各元素被抽到的可能性相同。若先后有放回取$n$次，则有$N^n$种抽法；若先后无放回取$n$次，则有$P_N^n$种抽法；若任取$n$个，则有$C_N^n$种抽法。

**例题：**5人共钓到3条鱼，每条鱼每个人钓到的可能性相同，求：

(1)3条鱼由不同人钓到的概率。

(2)有1人钓到两条鱼的概率。

(3)3条鱼由同一个人钓到的概率。

由题目可知这是一个随机分配的问题，总基本事件数为$5^3$。

对于鱼而言没有明确的区分说明，所以这个就是个组合问题。

(1)解：令第一个事件为$A$，因为每条鱼由不同的人钓到，即5人中恰有3人各钓到鱼，所以组合一共有$C_5^3$种，即从5个人取3个人有这么多种的取法。这3个人需要钓到3条鱼，因为鱼是可辩的，所以每组有$P_3^3$种分配方法。则$P(A)=\dfrac{C_5^3P_3^3}{5^3}$。

(2)解：令第二个事件为$B$，若一个人钓到两条，即从3条中任意选2，即$C_3^2$，又是5个人中的一个人完成的，所以$C_5^1$，所以有一个人钓到2条鱼共有$C_3^2C_5^1$种可能，此时还有一条鱼可以被其他4个人钓到，所以还要乘4。则$P(B)=\dfrac{C_3^2C_5^14}{5^3}$。

(3)解：令第三个事件为$C$，若一个人钓到三条，所以只有一种选法，然后有5个人可能钓到3条，所以是$C_5^1$，则$P(C)=\dfrac{C_5^1}{5^3}$。

### 几何概型

[**定义：**]{style="color: violet"}样本空间$\Omega$是一个可度量的有界区域；每个样本点发生的可能性都是一样，即样本点落入$\Omega$的某一可度量的子区域$S$的可能性大小与$S$的几何度量成正比，而与$S$的位置与形状无关。

在几何概型随机试验中，若$S_A$是样本空间$\Omega$的一个可度量的子区域，则事件$A={\text{样本落入区域}S_A}$的概率为$P(A)=\dfrac{S_A\text{的几何度量}}{\Omega\text{的几何度量}}$，这个概率就是$A$的**几何概率**。

古典概型的基本事件有限，而几何概型的基本事件无限且可几何度量。

## 性质

-   有界性：对于任一事件$A$，有$0\leqslant P(A)\leqslant1$，且$P(\varnothing)=0$，$P(\Omega)=1$。（$P(A)=0$不能推出$A=\varnothing$，同样$P(A)=1$不能推出$A=\Omega$）

-   单调性：设$AB$为两个事件，若$A\subset B$，则$P(B-A)=P(B)-P(A)$，$P(B)\geqslant P(A)$。

## 公式

-   逆事件概率公式：对于任一事件$A$，有$P(\overline{A})=1-P(A)$。

-   加法公式：对于任意两个事件$AB$，有$P(A\cup B)=P(A)+P(B)-P(AB)$；对于三个事件$ABC$，$P(A\cup B\cup C)=P(A)+P(B)+P(C)-P(AB)-P(AC)-P(BC)+P(ABC)$；对于四个事件$ABCD$，$P(A\cup B\cup C\cup D)=P(A)+P(B)+P(C)+P(D)-P(AB)-P(AC)-P(AD)-P(BC)-P(BD)-P(CD)+P(ABC)+P(ABD)+P(ACD)+P(BCD)-P(ABCD)$；若$A_1,A_2,\cdots,A_n$两两互不相容，则$P(A_1\cup A_2\cup\cdots\cup A_n)=P(A_1)+P(A_2)+\cdots+P(A_n)$。

-   减法公式：$P(A-B)=P(A)-P(AB)=P(A\overline{B})$。

-   条件概率公式：对于任意两个事件$AB$，若$P(A)>0$，我们称在已知事件$A$发生的条件下，事件$B$发生的概率为**条件概率**，记为$P(B|A)=\dfrac{P(AB)}{P(A)}$。$P(\overline{B}|A)=1-P(B|A)$，$P(B-C|A)=P(B|A)-P(BC|A)$。

-   乘法公式：若$P(A)>0$，则$P(AB)=P(A)P(B|A)$。一般而言，对于$n>2$，$P(A_1A_2\cdots A_{n-1})>0$，则$P(A_1A_2\cdots A_{n-1})=P(A_1)P(A_2|A_1)P(A_3|A_1A_2)$\
    $\cdots P(A_n|A_1A_2\cdots A_{n-1})$。（$A_i$的顺序不定）

-   全概率公式：若$\bigcup\limits_{i=1}^nA_i=\Omega$，$A_iA_j=\varnothing$（$i\neq j$，$i,j=1,2,\cdots,n$），$P(A_i)>0$，则对任一事件$B$，有$B=\bigcup\limits_{i=1}^nA_iB$，$P(B)=\sum\limits_{i=1}^nP(A_i)P(B|A_i)$。$P(B)=P(B\Omega)=P(B(\bigcup\limits_{i=1}^nA_i))=P(\bigcup\limits_{i=1}^nBA_i)=\sum\limits_{i=1}^nP(BA_i)=\sum\limits_{i=1}^nP(A_i)P(B|A_i)$。

-   贝叶斯公式：若$\bigcup\limits_{i=1}^nA_i=\Omega$，$A_iA_j=\varnothing$（$i\neq j$，$i,j=1,2,\cdots,n$），$P(A_i)>0$，则对任一事件$B$，有$P(A_i|B)=\dfrac{P(A_iB)}{P(B)}=\dfrac{P(A_i)P(B|A_i)}{\sum\limits_{i=1}^nP(A_i)P(B|A_i)}$。

全概率公式是由因知果，而贝叶斯公式是执果索因。

**例题：**若随机事件$AB$同时发生，$C$也必然发生，且下列选项一定成立的是()。

$A.P(C)<P(A)+P(B)-1$$B.P(C)\geqslant P(A)+P(B)-1$

$C.P(C)=P(AB)$$D.P(C)=P(A\cup B)$

解：$AB$同时发生，$C$也必然发生则说明$AB$这个事件是包含于$C$的，所以$AB$同时发生才能发生$C$，但是反之不一定成立，$AB\subset C$，$P(AB)\leqslant P(C)$。

又$P(A\cup B)=P(A)+P(B)-P(AB)$，$P(AB)=P(A)+P(B)-P(A\cup B)\leqslant P(C)$。

又$P(A\cup B)\leqslant1$，则$P(A)+P(B)-1\leqslant P(C)$。$B$成立。

**例题：**已知$P(\overline{A})=0.3$，$P(B)=0.4$，$P(A\overline{B})=0.5$，求$P(B|A\cup\overline{B})$。

解：$P(B|A\cup\overline{B})=\dfrac{P(B(A\cup\overline{B}))}{P(A\cup\overline{B})}=\dfrac{P(BA\cup B\overline{B})}{P(A)+P(\overline{B})-P(A\overline{B})}$。

$P(A)=1-P(\overline{A})=0.7$，$P(\overline{B})=1-P(B)=0.6$，$P(A\overline{B})=P(A)-P(AB)$，$\therefore P(AB)=P(A)-P(A\overline{B})=0.2$。

$\therefore =\dfrac{0.2}{0.7+0.6-0.5}=0.25$。

**例题：**每箱产品有10件，次品数从0到2都是等可能的，开箱检查时，任取1件。

(1)求抽到是正品的概率。

(2)若检测出次品就拒收，假如检验有误差，将1件正品误认为次品的概率为2%，1件次品被漏查认为是正品的概率是5%，求该箱产品通过验收的概率。

(1)解：已知次品数从0到2都是等可能的，从而令有0件次品为$A_0$，有1件次品为$A_1$，有2件次品为$A_2$，事件出现的概率都是$\dfrac{1}{3}$。

设取到正品的事件为$B_1$，发生概率为对应次品情况下取到正品的可能性，根据全概率公式：$P(B_1)=\sum\limits_{i=0}^2P(A_i)P(B_1|A_i)=\dfrac{1}{3}\cdot1+\dfrac{1}{3}\cdot\dfrac{9}{10}+\dfrac{1}{3}\cdot\dfrac{8}{10}=0.9$。

(2)解：取出一件商品只有两个事件，是正品$B_1$或是次品$\overline{B_1}$。

令通过验收的概率为$B$，则分为两种情况，一种是抽出正品被认为是正品的情况，一种是抽出次品被认为是正品的情况，即根据全概率公式：$P(B)=P(B_1)P(B|B_1)+P(\overline{B_1})P(B|\overline{B_1})=0.9\cdot(1-2\%)+0.1\cdot5\%=0.887$。

**例题：**假设有两批数量相同的零件，已知有一批产品全部合格，另一批产品有25%不合格。从两批产品中任取1件，经检验是正品，放回原处，并在原所在批次再取1件，求这次产品是次品的概率。

解：首先因为是两堆零件。第一次抽到的零件合格，可能是100%的一堆，也可能是75%的一堆。这个概率是等可能的。

令$H_i$为第一次从第$i$批中取零件，则$P(H_1)=\dfrac{1}{2}=P(H_2)$。

令取到正品为$A$，第1批取到正品概率$P(A|H_1)=1$，第2批$P(A|H_2)=\dfrac{3}{4}$。

根据全概率公式取到正品：$P(A)=P(H_1)P(A|H_1)+P(H_2)P(A|H_2)=\dfrac{7}{8}$。

又已经检测到了是正品，即$A$已经发生了，后面说的将产品放回原位再从原位抽一件零件检测判断是否为次品，即表示已知$A$发生求是$H_1$或$H_2$的可能性，再求是次品的可能性。利用贝叶斯公式计算。

抽到正品原批次是$H_1$概率：$P(H_1|A)=\dfrac{P(H_1A)}{P(A)}=\dfrac{P(H_1)P(A|H_1)}{P(A)}=\dfrac{4}{7}$。

抽到正品原批次是$H_2$概率：$P(H_1|A)=1-\dfrac{4}{7}=\dfrac{3}{7}$。

令$C_i$为第二次从第$i$批取零件，则$P(C_1)=P(H_1|A)=\dfrac{4}{7}$，$P(C_2)=\dfrac{3}{7}$。

此时产品是次品的概率为$P(\overline{A})=P(C_1)P(\overline{A}|C_1)+P(C_2)P(\overline{A}|C_2)=$\
$\dfrac{4}{7}\cdot0+\dfrac{3}{7}\cdot\dfrac{1}{4}=\dfrac{3}{28}$。

# 独立性

## 事件独立性

-   描述性定义（直观性定义）：设$AB$为两个事件，如果其中任何一个事件发生的概率不受另外一个事件发生与否的影响，则称事件$A$与$B$**相互独立**。设$A_1,A_2,\cdots,A_n$是$n\geqslant2$个事件，如果其中任何一个或几个事件发生的概率都不受其余的某一个或几个事件发生与否的影响，则称事件$A_1,A_2,\cdots,A_n$**相互独立**。

-   数学定义：设$AB$为两个事件，如果$P(AB)=P(A)P(B)$，则称事件$A$与事件$B$**相互独立**，简称$A$与$B$**独立**。如$P(A|B)=\dfrac{P(AB)}{P(B)}=\dfrac{P(A)P(B)}{P(B)}=P(A)$。

设$A_1,A_2,\cdots,A_n$为$n\leqslant2$个事件，若堆其中任意有限个事件$A_{k1},A_{k2},\cdots,$\
$A_{kk}$（$2\leqslant k\leqslant n$），有$P(A_{k1}A_{k2}\cdots A(kk))=P(A_{k1}A_{k2}\cdots A_{kk})$，则称这$n$个事件$A_1,A_2,\cdots,A_n$为$n\leqslant2$相互独立。

如$n=3$，若$P(A_1A_2)=P(A_1)P(A_2)$，$P(A_1A_3)=P(A_1)P(A_3)$，$P(A_2A_3)=P(A_2)P(A_3)$，$P(A_1A_2A_3)=P(A_1)P(A_2)P(A_3)$，则称事件$A_1,A_2,A_3$相互独立。若没有最后一个式子则只能称其两两独立。

**例题：**设$AB$是任意两个事件，其中$P(A)\in(0,1)$，证明$P(B|A)=P(B|\overline{A})$是事件$AB$相互独立的充要条件。

证明：先证必要性，即$AB$独立，则$P(AB)=P(A)P(B)$，$P(B|A)=P(B)$，同理$P(B|\overline{A})=P(B)$，所以必要性成立。

然后证明充分性，若$P(B|A)=\dfrac{P(AB)}{P(A)}=\dfrac{P(\overline{A}B)}{P(\overline{A})}=P(B|\overline{A})$。

根据减法公式，$\dfrac{P(AB)}{P(A)}=\dfrac{P(B)-P(AB)}{1-P(A)}$，使用交叉相乘得到$P(A)(P(B)-P(AB))=P(AB)(1-P(A))$，解得$P(AB)=P(A)P(B)$。从而充分性成立。

[**定理：**]{style="color: aqua"}若$AB$独立，则$\overline{A}B$、$A\overline{B}$、$\overline{AB}$也独立。

**例题：**将一枚硬币独立地掷两次，设$A_1=${掷第一次出现正面}，$A_2=${掷第二次出现正面}，$A_3=${正反面各出现一次}，$A_4=${出现正面两次}，则事件()。

$A.A_1,A_2,A_3$相互独立$B.A_2,A_3,A_4$相互独立

$C.A_1,A_2,A_3$两两独立$D.A_2,A_3,A_4$两两独立

解：已知一共只有四种情况：{正，正}、{正，反}、{反，正}、{反，反}。

则$P(A_1)=\dfrac{1}{2}$，$P(A_2)=\dfrac{1}{2}$，$P(A_3)=\dfrac{1}{2}$，$P(A_4)=\dfrac{1}{4}$。

对于$P(A_1A_2)=\dfrac{1}{4}=P(A_1)P(A_2)$，$P(A_1A_3)=\dfrac{1}{4}=P(A_1A_3)$，$P(A_2A_3)=\dfrac{1}{4}=P(A_2A_3)$，$P(A_1A_2A_3)=0\neq P(A_1A_2A_3)$。所以C。

## $n$重伯努利试验

独立试验[**定义：**]{style="color: violet"}称试验$E_1,E_2,\cdots,E_n$为相互独立的，如果分别于各个试验相联系的任意$n$个事件之间相互独立。

独立重复试验[**定义：**]{style="color: violet"}独立表示与各试验相联系的事件之间相互独立，其中重复表示每个事件在各次试验中出现的概率不便。

伯努利试验[**定义：**]{style="color: violet"}只针对失败、成功两种对立结果的试验，将伯努利试验重复进行$n$次，就是**$n$重伯努利试验**。

在计算伯努利试验概率的时候不仅要考虑每一类情况（出现几次）的次数，还有考虑其组合情况，即将多个情况的$C_n^mp^j$相加。
