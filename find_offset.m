function res=find_offset(data);
    data_rate = 1e6;
    sampling_freq = 0.25e6;
    sampling_p = 1/sampling_freq;
    signal_length = length(data);
    
    freqs = linspace(-sampling_freq/2, sampling_freq/2, signal_length);
    times = transpose((0:signal_length-1)*sampling_p);
    
    data_square = data .* data;
    fft_data = fftshift(fft(data_square));     %fftshift centers the fft at zero
    %plot(freqs, fft_data);
    [C,I] = max(fft_data);      %get the index of the maximum value and the maximum value
    offset = freqs(I)/2;        %the frequency offset is half of the max value
    
    complex_exp = exp(-1i*2*pi*offset*times);       %where times = k in the equation
    better_data = complex_exp.*data;
    plot(times,better_data);
    res = better_data;
end