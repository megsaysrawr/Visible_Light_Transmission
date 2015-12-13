function res=count_bits(data)
bits = [];
count0 = 0;
count1 = 0;
    for i = 1 : length(data);
        if data(i) < -.75e-4;
            count1 = 0;
            count0 = count0+1;
            if count0 == 1e3-50;
                count0 = 0;
                bits = [bits 0];
            end
        end
        if data(i) > .75e-4;
            count1 = count1+1;
            count0 = 0;
            if count1 == 1e3-50;
                count1 = 0;
                bits = [bits 1];
        end
    end
    %bits_down = downsample(bits,1e3);
    plot(bits);
    res = bits;
end