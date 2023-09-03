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

>> filter_length = 60;
>> impulse_response = ones(1, filter_length)/filter_length;
>> clear ('impulse_response');

>> clear ('filter_length');

>> oo = ones(1,8)
oo =

   1   1   1   1   1   1   1   1

>> n = -9:70
n =

 Columns 1 through 23:

   -9   -8   -7   -6   -5   -4   -3   -2   -1    0    1    2    3    4    5    6    7    8    9   10   11   12   13

 Columns 24 through 46:

   14   15   16   17   18   19   20   21   22   23   24   25   26   27   28   29   30   31   32   33   34   35   36

 Columns 47 through 69:

   37   38   39   40   41   42   43   44   45   46   47   48   49   50   51   52   53   54   55   56   57   58   59

 Columns 70 through 80:

   60   61   62   63   64   65   66   67   68   69   70

>> d = n == 0;
>> running_average = d/ 60
running_average =

 Columns 1 through 10:

          0          0          0          0          0          0          0          0          0   0.016667

 Columns 11 through 20:

          0          0          0          0          0          0          0          0          0          0

 Columns 21 through 30:

          0          0          0          0          0          0          0          0          0          0

 Columns 31 through 40:

          0          0          0          0          0          0          0          0          0          0

 Columns 41 through 50:

          0          0          0          0          0          0          0          0          0          0

 Columns 51 through 60:

          0          0          0          0          0          0          0          0          0          0

 Columns 61 through 70:

          0          0          0          0          0          0          0          0          0          0

 Columns 71 through 80:

          0          0          0          0          0          0          0          0          0          0

>> clear ('oo');

>> clear ('d');

>> clear ('running_average');

>> clear ('n');

>> ss = 60;
>> run_ave_filter = ones(1, ss) / ss;
>> hh = ones(1, ss) / ss;
>> oo = ones(1 / ss);
error: conversion of 0.0166667 to octave_idx_type value failed
>> oo = ones(1 / ss);
error: conversion of 0.0166667 to octave_idx_type value failed
>> clear ('ss');

>> clear ('run_ave_filter');

>> clear ('hh');

>> ss = 60;
>> oo = (1, ss);
error: parse error:

  syntax error

>>> oo = (1, ss);
           ^
>> oo = ones(1, ss);
>> run_ave_filter = oo / ss;
>>
>> yy = filter(run_ave_filter, 1, oo);
>> delayed_yy = filter([zeros(1,60),1],1,oo);
>> delayed_yy = filter([zeros(1,60),1],1,oo);
>> stem(delayed_yy, ss);
error: stem: inconsistent sizes for X and Y
error: called from
    __stem__>check_stem_arg at line 289 column 11
    __stem__ at line 41 column 49
    stem at line 132 column 8
>> stem(ss, delayed_yy);
error: stem: inconsistent sizes for X and Y
error: called from
    __stem__>check_stem_arg at line 289 column 11
    __stem__ at line 41 column 49
    stem at line 132 column 8
>> stem(oo, delayed_yy);
>>
>> x1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
>> x2 = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
>> a = 2
a = 2
>> a = 2;
>> b = -5
b = -5
>> b = -5;
>> y_tester1 = a * x1 + b * x2;
>> n = -2:8;
>> output1 = y_tester1 .* exp(n);
error: product: nonconformant arguments (op1 is 1x10, op2 is 1x11)
>> n = -1:8;
>> output1 = y_tester1 .* exp(n);
>> y_sep1 = x1 * exp(n);
error: operator *: nonconformant arguments (op1 is 1x10, op2 is 1x10)
>> y_sep1 = x1 .* exp(n);
>> y_sep2 = x2 .* exp(n);
>> output2 = a * y_sep1 + b * y_sep2;
>> ones(3,3)
ans =

   1   1   1
   1   1   1
   1   1   1

>> ones(1, 8)
ans =

   1   1   1   1   1   1   1   1

>> ones(1, 8)/8
ans =

   0.1250   0.1250   0.1250   0.1250   0.1250   0.1250   0.1250   0.1250

>> h = 1/8 * ones(1, 8);
>> 1:8
ans =

   1   2   3   4   5   6   7   8

>> 1:2:8
ans =

   1   3   5   7

>> 8:-1:1
ans =

   8   7   6   5   4   3   2   1

>> h
h =

   0.1250   0.1250   0.1250   0.1250   0.1250   0.1250   0.1250   0.1250

>> h(1)
ans = 0.1250
>> h(0)
error: h(0): subscripts must be either integers 1 to (2^63)-1 or logicals
>> h(1,1)
ans = 0.1250
>> h(2)
ans = 0.1250
>> h(1,2)
ans = 0.1250
>> n = -9:20
n =

   -9   -8   -7   -6   -5   -4   -3   -2   -1    0    1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18   19   20

>> n
n =

   -9   -8   -7   -6   -5   -4   -3   -2   -1    0    1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18   19   20

>> help filter
'filter' is a built-in function from the file libinterp/corefcn/filter.cc

 -- Y = filter (B, A, X)
 -- [Y, SF] = filter (B, A, X, SI)
 -- [Y, SF] = filter (B, A, X, [], DIM)
 -- [Y, SF] = filter (B, A, X, SI, DIM)
     Apply a 1-D digital filter to the data X.

     'filter' returns the solution to the following linear,
     time-invariant difference equation:

           N                   M
          SUM a(k+1) y(n-k) = SUM b(k+1) x(n-k)    for 1<=n<=length(x)
          k=0                 k=0

     where N=length(a)-1 and M=length(b)-1.  The result is calculated
     over the first non-singleton dimension of X or over DIM if
     supplied.

     An equivalent form of the equation is:

                    N                   M
          y(n) = - SUM c(k+1) y(n-k) + SUM d(k+1) x(n-k)  for 1<=n<=length(x)
                   k=1                 k=0

     where c = a/a(1) and d = b/a(1).

     If the fourth argument SI is provided, it is taken as the initial
     state of the system and the final state is returned as SF.  The
     state vector is a column vector whose length is equal to the length
     of the longest coefficient vector minus one.  If SI is not
     supplied, the initial state vector is set to all zeros.

     In terms of the Z Transform, Y is the result of passing the
     discrete-time signal X through a system characterized by the
     following rational system function:

                    M
                   SUM d(k+1) z^(-k)
                   k=0
          H(z) = ---------------------
                      N
                 1 + SUM c(k+1) z^(-k)
                     k=1

     See also: filter2, fftfilt, freqz.

Additional help for built-in functions and operators is
available in the online version of the manual.  Use the command
'doc <topic>' to search the manual index.

Help and information about Octave is also available on the WWW
at https://www.octave.org and via the help@octave.org
mailing list.
>> n >= 0
ans =

  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

>> filter(h, 1, n >= 0)
ans =

 Columns 1 through 17:

        0        0        0        0        0        0        0        0        0   0.1250   0.2500   0.3750   0.5000   0.6250   0.7500   0.8750   1.0000

 Columns 18 through 30:

   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000   1.0000

>> stem(n, filter(h, 1, n >= 0))
>> stem(n, filter(h, 1, n == 0))
>> stem(n, filter(h, 1, (n-2) >= 0))
>> stem(n, filter(h, 1, n >= 0))
>> stem(n, filter(h, 1, n >= 0) + filter (n-2) >= 0))
error: parse error:

  syntax error

>>> stem(n, filter(h, 1, n >= 0) + filter (n-2) >= 0))
                                                     ^
>> stem(n, (filter(h, 1, n >= 0) + filter (n-2) >= 0))
error: Invalid call to filter.  Correct usage is:

 -- Y = filter (B, A, X)
 -- [Y, SF] = filter (B, A, X, SI)
 -- [Y, SF] = filter (B, A, X, [], DIM)
 -- [Y, SF] = filter (B, A, X, SI, DIM)

Additional help for built-in functions and operators is
available in the online version of the manual.  Use the command
'doc <topic>' to search the manual index.

Help and information about Octave is also available on the WWW
at https://www.octave.org and via the help@octave.org
mailing list.
>> stem(n, filter(h, 1, n >= 0) + filter(h, 1, (n-2) >= 0))
>> rand(1,1)
ans = 0.8391
>> rand(1,8)
ans =

   0.723846   0.157713   0.516967   0.837842   0.725798   0.618676   0.038146   0.662319

>> n == 0
ans =

  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

>> [1, 2, 3]
ans =

   1   2   3

>> [1 zeros(1, 8)]
ans =

   1   0   0   0   0   0   0   0   0

>> [zeros(1, 8) 1]
ans =

   0   0   0   0   0   0   0   0   1

>> n == 0
ans =

  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

>> (n-2) == 0
ans =

  0  0  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

>> [zeros(1, 8) n == 0]
ans =

   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0

>>
昕
