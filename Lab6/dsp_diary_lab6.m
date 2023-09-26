% Small intro to discrete time system analysis in Octave/MATLAB
% By Jacques Berg
%
% Beginning of your Octave session you need to load the signal processing package to the memory
%   pkg load signal

% Designing filter from analog counterparts is easy with Octave/MATLAB
fc = 3200;  % 3200 Hz is the -3dB point
Fs = 8000;
[b_q1,a_q1] = butter(4, fc/(Fs/2));
figure(1); zplane(b_q1, a_q1);
figure(2); freqz(b_q1, a_q1, 1024, Fs);

% Reading .wav file
audioinfo('SecretCode.wav')
[y,fs] = audioread('SecretCode.wav');

% By default, sound uses 8-bit samples. In some cases the dynamic ratio in this case is not enough,
% therefore 16-bit output samples are needed
sound(y*2, fs, 16);

% First analysis of a signal using spectrogram
figure(3); specgram(y(:,1),512,fs)

% If you have signal represented as a simple space separated values like
% -1.24657681e+00 -1.04302578e+00 1.20551121e+00 2.00467103e+00 ...
% you can use simple load() function to read the file containing those values to your Octave/MATLAB variable like
s = load("message");

% AM modulation
% AM is done by multipying the sinusoidal signal with the modulating signal in time domain
fc = 2000;
n = 0:4096;
s_mod = cos(2*pi*500/Fs*n);
s_am = (1+s_mod).*cos(2*pi*fc/Fs*n);
% from the lecture 3 we found that multiplication is time domain is convolution in frequency domain
% (and multiplication in frequency domain (this is what a filter do) is convolution is time domain (this what DSP processor is doing)
figure(4); spk(s_am, fs);
% demodulation can be done using a product detector (https://en.wikipedia.org/wiki/Product_detector)
