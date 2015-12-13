%read_data.m

%rx_samples_to_file --freq 1e6 --rate 0.25e6 --file file_name.dat --type float
f1 = fopen('recv3long.dat','r');      %make sure to change the file name when you run in cmd

x = fread(f1, 'float32');
x_real = x(1:2:end);
x_imag = x(2:2:end);
x_complex = x_real+1i*x_imag;
%
x_complex = x_complex(100:end);
threshold = 2.5*std(x_complex(1:100));
ii = find(abs(x_complex) > threshold);
x_data = x_complex(ii(1)-100:ii(end)+100);
% plot(x_data);
%
% plot(x_real);
figure;
better_data = find_offset(x_data);
binary = count_bits(better_data);
csvwrite('rec_bits.dat',binary)
%disp(offset)
fclose(f1);
%%
% [yI, yQ, freq_offset] = bpsk_timing_sync(x_real, x_imag);
% plot(yI);
% hold all;
% plot(yQ,'r');
% plot(yI+yQ, 'g');
% disp(freq_offset);