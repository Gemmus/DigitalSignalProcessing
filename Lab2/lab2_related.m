GNU Octave, version 8.3.0
Copyright (C) 1993-2023 The Octave Project Developers.
This is free software; see the source code for copying conditions.
There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  For details, type 'warranty'.

Octave was configured for "x86_64-w64-mingw32".

Additional information about Octave is available at https://www.octave.org.

Please contribute if you find this software useful.
For more information, visit https://www.octave.org/get-involved.html

Read https://www.octave.org/bugs.html to learn how to submit bug reports.
For information about changes from previous versions, type 'news'.

>> n = -10:10;
>> x1 = rand(1, length(n)); x2 = rand(1, length(n));
>> y1 = (a * x1 + b * x2) .* exp(n);
error: 'a' undefined near line 1, column 7
>> a = rand(1, 1); b = rand(1, 1);a = rand(1, 1); b = rand(1, 1)
b = 0.6527
>> y1 = (a * x1 + b * x2) .* exp(n);
>> y2 = a * (x1 .* exp(n)) + b * (x2 .* exp(n));
>> stem(n, y1-y2);
>> n = -2:20;
>> x = zeros(size(n));
>> x = n >= 0;
>> x
x =

  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> y = x .* exp(n);
>> y
y =

 Columns 1 through 8:

            0            0   1.0000e+00   2.7183e+00   7.3891e+00   2.0086e+01   5.4598e+01   1.4841e+02

 Columns 9 through 16:

   4.0343e+02   1.0966e+03   2.9810e+03   8.1031e+03   2.2026e+04   5.9874e+04   1.6275e+05   4.4241e+05

 Columns 17 through 23:

   1.2026e+06   3.2690e+06   8.8861e+06   2.4155e+07   6.5660e+07   1.7848e+08   4.8517e+08

>> k = 5;
>> x_shifted = zeros(size(n));
>> x_shifted(n >= k) = 1;
>> x_shifted
x_shifted =

   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1

>> x_shifted = n >= k;
error: parse error:

  invalid character '' (ASCII 197)

>>>   x_shifted = n >= k;
     ^
>> x_shifted = n >= k;
>>  x_shifted
x_shifted =

  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> y_expected = x_shifted .* exp(n-k);
>> x_delayed = n >= k
x_delayed =

  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>>
>> clear ('b');

>> clear ('a');

>> clear ('k');

>> clear ('x_delayed');

>> clear ('x_shifted');

>> clear ('y_expected');

>> clear ('x');

>> clear ('x2');

>> clear ('y');

>> clear ('y1');

>> clear ('x1');

>> clear ('y2');

>> n
n =

   -2   -1    0    1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18   19   20

>> n = -2:20;
>> x = n >= 0;
>> x
x =

  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> y = x .* exp(n);
>> y
y =

 Columns 1 through 8:

            0            0   1.0000e+00   2.7183e+00   7.3891e+00   2.0086e+01   5.4598e+01   1.4841e+02

 Columns 9 through 16:

   4.0343e+02   1.0966e+03   2.9810e+03   8.1031e+03   2.2026e+04   5.9874e+04   1.6275e+05   4.4241e+05

 Columns 17 through 23:

   1.2026e+06   3.2690e+06   8.8861e+06   2.4155e+07   6.5660e+07   1.7848e+08   4.8517e+08

>> k = 5;
>> y1_delayed = zeros(k, y);
error: zeros: dimensions must be scalars.
>> y1_delayed = zeros(5, y);
error: zeros: dimensions must be scalars.
>> y1_delayed = zeros(k, );
error: parse error:

  syntax error

>>> y1_delayed = zeros(k, );
                          ^
>> y1_delayed = [zeros(k), y[:]];
error: parse error:

  syntax error

>>> y1_delayed = [zeros(k), y[:]];
                             ^
>> y1_delayed = [zeros(k), y];
error: horizontal dimensions mismatch (5x5 vs 1x23)
>> y1_delayed = [zeros(1,k), y];
>> y1_delayed
y1_delayed =

 Columns 1 through 8:

            0            0            0            0            0            0            0   1.0000e+00

 Columns 9 through 16:

   2.7183e+00   7.3891e+00   2.0086e+01   5.4598e+01   1.4841e+02   4.0343e+02   1.0966e+03   2.9810e+03

 Columns 17 through 24:

   8.1031e+03   2.2026e+04   5.9874e+04   1.6275e+05   4.4241e+05   1.2026e+06   3.2690e+06   8.8861e+06

 Columns 25 through 28:

   2.4155e+07   6.5660e+07   1.7848e+08   4.8517e+08

>> x_shifted = (n >= k) = 1;
error: parse error:

  invalid left hand side of assignment

>>> x_shifted = (n >= k) = 1;
                         ^
>> x_shifted(n >= k) = 1;
>> y2_delayed = x_shifted .* exp(n);
>> y_difference = y2_delayed - y1_delayed;
error: operator -: nonconformant arguments (op1 is 1x23, op2 is 1x28)
>> n = -2:25;
>> len(n)
error: 'len' undefined near line 1, column 1
>> length(n)
ans = 28
>> x_shifted(n >= k) = 1;
>> y2_delayed = x_shifted .* exp(n);
>> y_difference = y2_delayed - y1_delayed;
>> stem(n, y_difference);
>> figure (); plot (y1_delayed);

>> figure (); plot (y1_delayed); hold on; plot(y2_delayed);
>> n = 0:30;
>> x = n >= 0;
>> y = x .* exp(n);
>> y1_delayed = [zeros(1,5), y];
>> N = 0:35;
>> x_shifted(n >= k) = 1;
>> y2_delayed = x_shifted .* exp(n);
>> y_difference = y2_delayed - y1_delayed;
error: operator -: nonconformant arguments (op1 is 1x31, op2 is 1x36)
>> x_shifted(N >= k) = 1;
>> y2_delayed = x_shifted .* exp(N);
>> y_difference = y2_delayed - y1_delayed;
>> stem(n, y_difference);
error: stem: inconsistent sizes for X and Y
error: called from
    __stem__>check_stem_arg at line 289 column 11
    __stem__ at line 41 column 49
    stem at line 132 column 8
>> stem(n, y_difference);
error: stem: inconsistent sizes for X and Y
error: called from
    __stem__>check_stem_arg at line 289 column 11
    __stem__ at line 41 column 49
    stem at line 132 column 8
>> y2_delayed = x_shifted .* exp(N);
>>
>> b = [1, 0, 1];
>> a = [1, -1.2, -0.5];
>> x = [1, zeros(1,59)];
>> h = filter(b, a, x);
>> stem(x, h)
>> stem(n, h)
error: stem: inconsistent sizes for X and Y
error: called from
    __stem__>check_stem_arg at line 289 column 11
    __stem__ at line 41 column 49
    stem at line 132 column 8
>> n = 0:60;
>> d = n == 0;
>> d
d =

 Columns 1 through 38:

  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

 Columns 39 through 61:

  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

>> h = filter(b, a, d);
>> stem(n, h)
>> n = 0:60;
>> x = u >= 0;
error: 'u' undefined near line 1, column 5
>> x = n >= 0;
>> x
x =

 Columns 1 through 38:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

 Columns 39 through 61:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> h = filter(b, a, x);
>> stem(n, h)
>> x = [1, zeros(1,59)];
>> x
x =

 Columns 1 through 29:

   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0

 Columns 30 through 58:

   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0

 Columns 59 and 60:

   0   0

>> x = n >= 0;
>> x
x =

 Columns 1 through 38:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

 Columns 39 through 61:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> a
a =

   1.0000  -1.2000  -0.5000

>> b
b =

   1   0   1

>>
>> x
x =

 Columns 1 through 38:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

 Columns 39 through 61:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> x
x =

 Columns 1 through 38:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

 Columns 39 through 61:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> length(x)
ans = 61
>> n = 0:59;
>> x = n == 0;
>> x
x =

 Columns 1 through 38:

  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

 Columns 39 through 60:

  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

>> length(x)
ans = 60
>> help tf
error: help: The 'tf' function belongs to the control package from Octave Forge which
you have installed but not loaded.  To load the package, run 'pkg load
control' from the Octave prompt.

Please read <https://www.octave.org/missing.html> to learn how you can
contribute missing functionality.
>>func = tf([1],[1,2])
error: 'tf' undefined near line 1, column 8

The 'tf' function belongs to the control package from Octave Forge which
you have installed but not loaded.  To load the package, run 'pkg load
control' from the Octave prompt.

Please read <https://www.octave.org/missing.html> to learn how you can
contribute missing functionality.
>> pkg load control
>> func = tf([1],[1,2])

Transfer function 'func' from input 'u1' to output ...

        1
 y1:  -----
      s + 2

Continuous-time model.
>> func = tf([1],[1,2,3])

Transfer function 'func' from input 'u1' to output ...

            1
 y1:  -------------
      s^2 + 2 s + 3

Continuous-time model.
>> func = tf('z', [1],[1,2,3])
error: lti: set: keys and values must come in pairs
error: called from
    set at line 57 column 7
    tf at line 236 column 9
>> func = tf([1,2],[1,2,3])

Transfer function 'func' from input 'u1' to output ...

          s + 2
 y1:  -------------
      s^2 + 2 s + 3

Continuous-time model.
>>
>> func = filt([1,2],[1,2,3])

Transfer function 'func' from input 'u1' to output ...

          1 + 2 z^-1
 y1:  -------------------
      1 + 2 z^-1 + 3 z^-2

Sampling time: unspecified
Discrete-time model.
>> func = filt([1,-1.2,1],[-0.5])

Transfer function 'func' from input 'u1' to output ...

      1 - 1.2 z^-1 + z^-2
 y1:  -------------------
             -0.5

Sampling time: unspecified
Discrete-time model.
>> func = filt([1,-1.2,1],[-0.5])
>> func = filt([-0.5],[1,-1.2,1]);
>> func = filt([-0.5],[1,-1.2,1])

Transfer function 'func' from input 'u1' to output ...

             -0.5
 y1:  -------------------
      1 - 1.2 z^-1 + z^-2

Sampling time: unspecified
Discrete-time model.
>> func = filt([0,-0.5],[1,-1.2,1])

Transfer function 'func' from input 'u1' to output ...

           -0.5 z^-1
 y1:  -------------------
      1 - 1.2 z^-1 + z^-2

Sampling time: unspecified
Discrete-time model.
>> x
x =

 Columns 1 through 38:

  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

 Columns 39 through 60:

  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

>> n
n =

 Columns 1 through 23:

    0    1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18   19   20   21   22

 Columns 24 through 46:

   23   24   25   26   27   28   29   30   31   32   33   34   35   36   37   38   39   40   41   42   43   44   45

 Columns 47 through 60:

   46   47   48   49   50   51   52   53   54   55   56   57   58   59

>> x = n == 0;
>> x
x =

 Columns 1 through 38:

  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

 Columns 39 through 60:

  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

>> x = n >= 0;
>> x = n >= 0;
>> x
x =

 Columns 1 through 38:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

 Columns 39 through 60:

  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> y = filter([0,-0.5],[1,-1.2,1], x);
>> stem(n, y
stem(n, y)
error: parse error:

  syntax error

>>> stem(n, y)
       ^
>> stem(n, y)
>> freqz(func)
error: freqresp: second argument 'w' must be a real-valued vector of frequencies
error: called from
    freqresp at line 52 column 5
    subsref at line 42 column 13
    freqz at line 139 column 5
>> freqz(y)
>> stem(n, y)
>> figure (); plot (y);

>> func

Transfer function 'func' from input 'u1' to output ...

           -0.5 z^-1
 y1:  -------------------
      1 - 1.2 z^-1 + z^-2

Sampling time: unspecified
Discrete-time model.
>> '
error: parse error:

  unterminated character string constant

>>> '
    ^
>> stem(n, y)
>>
탅
