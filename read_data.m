%read_data.m

%rx_samples_to_file --freq 1e6 --rate 0.25e6 --file file_name.dat --type float
figure;
f1 = fopen('recv.dat','r');      %make sure to change the file name when you run in cmd

x = fread(f1, 'float32');
x_real = x(1:2:end);
x_imag = x(2:2:end);
x_complex = x_real+1i*x_imag;
plot(x_real(100:end));
offset = find_offset(x_complex);
disp(offset)
fclose(f1);