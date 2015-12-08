function res=find_freq(data);
    data_rate = 1e6;
    sampling_freq = 0.25e6;
    signal_length = length(data);
    freqs = linspace(-sampling_freq/2, sampling_freq/2, signal_length);
    data_square = data .* data;
    fft_data = fftshift(fft(data_square));     %centers the fft at zero
    plot(freqs, fft_data);
    [C,I] = max(fft_data);
    res = freqs(I)/2;
end