function res=count_bits(data)
bits = [];
down_bits = [];
count_0 = 0;
count_1 = 0;

    for i = 1 : length(data);
        if data(i) < -.75e-4;
            bits = [bits 0];
        end
        if data(i) > .75e-4;
            bits = [bits 1];
        end
    end
%     for j= 1 : length(bits);
%         if bits(j) == 0;
%             count_0 = count_0 + 1;
%             count_1 = 0;
%         end
%         if bits(j) == 1;
%             count_1 = count_1 + 1;
%             count_0 = 0;
%         end
%         if count_0 == 1e3-250;
%             count_0 = 0;
%             down_bits = [down_bits 0];
%         end
%         if count_1 == 1e3-250;
%             count_1 = 0;
%             down_bits = [down_bits 1];
%         end
%     end
%     bits_down = downsample(bits,.1e3);
%     disp(bits_down)
    plot(bits);
    res = bits;
end