function signal = low_pass(signal, fs, cutoff_freq)
  x = fft(signal);                      
  nr = length(signal);                  
  f = (0 : nr - 1) * fs / nr;          
  mask = f <= cutoff_freq;              
  prod_hadamard = x .* mask';          
  signal = ifft(prod_hadamard);         
  signal = signal / max(abs(signal));   
  signal = signal(:);                   
endfunction

