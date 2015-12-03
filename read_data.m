%read_data.m

f1 = fopen('recv.dat','r');

x = fread(f1, 'float32');
x_real = x(1:2:end);
x_imag = x(2:2:end);
plot(x_real(100:end));
fclose(f1);