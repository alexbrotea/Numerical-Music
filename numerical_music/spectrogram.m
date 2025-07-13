function [S f t] = spectrogram(signal, fs, window_size)
  S = 0;
  f = 0;
  t = 0;
  signal_length = length(signal);                         
  num_of_windows = floor(signal_length / window_size);    
  han = hanning(window_size);                             
  S = zeros(window_size, num_of_windows);                 
  for i = 1 : num_of_windows                             
    begin = (i - 1) * window_size + 1;                    
    final = begin + window_size - 1;                     
    window = signal(begin : final) .* han;                
    window = fft(window, window_size * 2);                
    window = window(1 : window_size);                     
    S(:, i) = abs(window);                                
  endfor
  f = zeros(window_size, 1);                              
  t = zeros(num_of_windows, 1);                           
  for k = 0 : window_size - 1
    f(k + 1) = k * (fs / (2 * window_size));              
  endfor
  for n = 0 : num_of_windows - 1
    t(n + 1) = n * window_size / fs;                      
  endfor
endfunction


