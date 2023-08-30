% Small intro to MATLAB/Octave, and how to represent signals and visualize them
% By Jacques Berg

%let's generate an arbitary impulse response
h = 1/8 * ones(1, 8);

% then let's find the step responce to it
n = -9:20;
yy = filter(h, 1, n >= 0);

%and plot it
stem(n, yy);

%linearity test y[n] = x[n] * exp[n]
n = -10:10;

a = rand(1, 1); b = rand(1, 1);
x1 = rand(1, length(n)); x2 = rand(1, length(n));

y1 = (a * x1 + b * x2) .* exp(n);   % now we want element-by-element multiplication, not a matrix multiplication
y2 = a * (x1 .* exp(n)) + b * (x2 .* exp(n));
stem(n, y1-y2)
eps  % Find out the calculation precision of Octave

% M-file could be like this (without the frist '%' character)
%function y = hupi(f, fs, n)
%y = cos(2*pi*f/fs*n);
