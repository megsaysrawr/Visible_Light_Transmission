% make_message.m
function res = make_message()

bits = [1,1,1,1,0,0,1,0,1,1];
foo = 2*bits - 1;
bar = upsample(foo,1e2);

x_real = zeros(1099,1);
x_imag = zeros(1099,1);
x_real = conv(bar, ones(1e2,1));

x = zeros(2*1099,1);

x(1:2:end) = x_real;
x(2:2:end) = x_imag;
res = x;
end
