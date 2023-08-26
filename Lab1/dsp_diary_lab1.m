% Small intro to MATLAB/Octave, and how to represent signals and visualize them
% By Jacques Berg

% Help-menu (in GUI) will give you documentation of all the features of Octave
% If you need help about a single function/command, write help to the Command Window
% There are plenty of tutorials/youtube videos available on the network, here is one:
% http://www-mdp.eng.cam.ac.uk/web/CD/engapps/octave/octavetut.pdf

% Elementary datatype in MATLAB/Octave is a matrix/vector
% Signals are represented as vectors (of signal samples) in MATLAB/Octave

% Build-in MATLAB/Octave function ones can be used to produce vectors in 1s (with help ones you get more information about the function ones)
oo = ones(1,8);

% Colon is an important operator in MATLAB/Octave, it can generate sequencies easily
n = -9:20;  % generates a vector -9, -8, -7, ... 18, 19, 20

% MATLAB/Octave is a matrix processing language, therefore you can manipulate every element with a single operator
% Logical comparison, e.g., x < y, gives 1 if true, 0 is false
u = n >= 0; % every element of n is compared with 0, and a new vector is generated based on those results
d = n == 0; % same in here

% Because n is a vector, multipying it with a constant produces another vector whose elements are results of the original vector and multiplier
x3 = cos(0.1*pi*n);

% Sampled signal can be drawn on the screen with stem-plot
stem(n, x3);

% Sample index vector, like n, gives the index of the sample value
% If you want time index vector, every sample value need to be multiplied with the sampling times
% In this case, if the sampling time Fs=2000Hz, then the time between samples is Ts=1/2000
t = (1/2000)*n;

% Now it is easy to generate a sinusoidal signal with a given frequency
% Just convert pure frequency to radians (which is the type cos() function eats)
s = cos(2*pi*250*t);  % 250 Hz, sampling frequency (fs) was 2 kHz

% In order to generate exponentially decaying signal with time constant tau
tau = 0.003;  % 3 ms
decay = exp(-t/tau);


