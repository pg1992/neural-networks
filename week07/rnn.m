function [h y] = rnn(x, w, b)

h = zeros(size(x));
y = zeros(size(x));

sigma = @(z) (1/(1+exp(-z)));

z = @(x, h) (w(1) * x + w(2) * h + b(1));

h(1) = sigma(z(x(1), 0));
y(1) = w(3) * h(1) + b(2);

for i=2:numel(x)
    h(i) = sigma(z(x(i), h(i-1)));
    y(i) = w(3) * h(i) + b(2);
end
