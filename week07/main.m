clear all;
close all;
clc;

w = [.5 -1 -.7];
b = [-1 0];
x = [9 4 -2];
[h y] = rnn(x, w, b)

x = [18 9 -8];
w = [-.1 .5 .25];
b = [.4 0];
h = [.2 .4 .8];
y = [.05 .1 .2];
t = [.1 -.1 -.2];
[z2 z1] = backprop(x, w, b, h, y, t)
