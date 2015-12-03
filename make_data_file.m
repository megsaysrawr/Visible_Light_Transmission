%fopen a new file with write permissions

%make a vector that is a million samples of all ones
%and one that is a million samples of all zeros

%made a vector that is alternating real, imaginary, real, imaginary

%use fwrite to write to that file
%fclose

% tx_samples_from_file --freq 2.4845e9 --rate 0.25e6 --file foo.dat --type float

f1 = fopen('foo_small.dat', 'w');

x_real = ones(1e6,1);
x_imag = zeros(1e6,1);

x = zeros(2e6,1);

x(1:2:end) = x_real;
x(2:2:end) = x_imag;


 
fwrite(f1, x, 'int16'); %float32
