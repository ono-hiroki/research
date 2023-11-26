function [Pn] = Lagrange (N, x_in, f_in, xi)
%引数の説明：
%N：補間多項式の次数
%x_in：標本点のx 座標のリスト
%f_in 標本点のy 座標のリスト
%xi：ラグランジュ補間を行う点のx 座標
%戻り値Pn: xi に対するラグランジュ補間を計算した結果（Pn(xi)）を戻す。
Pn = 0.0;%戻り値。とりあえず0.0で初期化。
%最終的にPn にxi に対するラグランジュ補間を行った結果が代入されるようにする。

 %以下を作成する。
 %やること：与えられたxi（補間したい点のx 座標）に対するPn(xi)を計算し，変数Pn に代入する。

 for j = 1 : N + 1
 L = 1.0;
 for i = 1 : N + 1
 if j ~= i
 L = L * (xi - x_in(i)) / (x_in(j) - x_in(i));
 end
 end
 Pn = Pn + L * f_in(j);
 end