function res=find_offset(data)
    data_rate = 1e6;
    sampling_freq = 0.25e6;
    sampling_p = 1/sampling_freq;
    signal_length = length(data);
    
    freqs = linspace(-sampling_freq/2, sampling_freq/2, signal_length);
    times = transpose((0:signal_length-1)*sampling_p);
    
    data_quad = data .* data .* data .* data;
    fft_data = fftshift(fft(data_quad));     %fftshift centers the fft at zero
%     plot(freqs, fft_data);
    [C,I] = max(abs(fft_data));      %get the index of the maximum value and the maximum value
    offset = freqs(I)/4;        %the frequency offset is half of the max value
    
    complex_exp = exp(-1i*2*pi*offset*times);       %where times = k in the equation
    real_data = complex_exp.*data;
    imag_complex_exp = 1i*exp(-1i*2*pi*offset*times);
    imag_data = imag_complex_exp.*data;
    plot(real_data, imag_data);
    res = [real_data,imag_data];
end