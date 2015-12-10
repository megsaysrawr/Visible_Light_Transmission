function res=count_bits(data)
bits = [];
    for i = 1 : length(data);
        if data(i) < -2e-3;
            bits = [bits 0];
        end
        if data(i) > 2e-3;
            bits = [bits 1];
        end
    end
    plot(bits);
    res = bits;
end