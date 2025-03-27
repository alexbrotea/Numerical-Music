function x = oscillator(freq, fs, dur, A, D, S, R)
  x = 0;
  num_total = round(dur * fs);                      
  t = (0 : num_total - 1) / fs;                     
  sine_wave = sin(2 * pi * freq * t);                 
  num_attack_samples = floor(A * fs);               
  num_decay_samples = floor(D * fs);                
  num_release_samples = floor(R * fs);              
  num_sustain_samples = num_total - num_attack_samples - num_decay_samples - num_release_samples;  
  attack = linspace(0, 1, num_attack_samples);      
  decay = linspace(1, S, num_decay_samples);
  sustain = S * ones(1, num_sustain_samples);
  release = linspace(S, 0, num_release_samples);     
  envelope = [attack, decay, sustain, release];     
  x = sine_wave .* envelope;                        
  x = x(:);                                         
endfunction

