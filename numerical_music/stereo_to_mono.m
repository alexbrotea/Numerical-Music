function mono = stereo_to_mono(stereo)
  mono = stereo;
  mono = mean(mono, 2);   
  mono = mono / max(abs(mono));
endfunction