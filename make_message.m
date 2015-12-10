% make_message.m
function res = make_message()

bits = [1,1,1,1,0,0,1,0,1,1];
foo = 2*bits - 1;
bar = upsample(foo,1e3);
x_real = zeros(10999,1);
x_imag = zeros(10999,1);
x_real = conv(bar, ones(1e3,1));

x = zeros(2*10999,1);

x(1:2:end) = x_real;
x(2:2:end) = x_imag;
res = x;
end
