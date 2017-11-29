data = d_10;
data_fft = fft(empty);
data_fft = fftshift(data_fft);
plot(f,abs(data_fft));
axis([70 90 -inf inf]);