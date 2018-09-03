function [z2 z1] = backprop(x, w, b, h, y, t)

z2 = -(t(3) - y(3)) * w(3) * h(3) * (1 - h(3));
z1 = -(t(2) - y(2)) * w(3) * h(2) * (1 - h(2)) + z2 * w(2) * h(2) * (1 - h(2));
