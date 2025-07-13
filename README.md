# Numerical-Music

### apply_reverb.m
This function adds reverb to an audio signal. It makes the sound feel like it was recorded in a big room or concert hall.
### create_instruments.m
This function builds a collection of digital instruments, each with its own sound and behavior. Think of it as a 'library' of instruments you can use in your musical compositions.
### create_sound.m
This one actually generates sound based on a given musical pattern. It’s one of the core parts of the project: combining instruments, durations, and pitches to make melodies.
### low_pass.m
The low_pass function filters the audio signal and lets only the lower frequencies pass through. Very useful for removing background noise or for creating a warmer sound.
### oscillator.m
This function generates basic waveforms: sine, triangle, square, or sawtooth waves. It’s a fundamental building block used to synthesize simple tones that can later be shaped into complex sounds.
### parse_pattern.m
This function reads a musical pattern: basically a text-based sequence that says what note to play, how long, and with what instrument. It transforms the pattern into a structured format ready for sound generation.
### spectrogram.m
This function generates a visual representation of the frequency spectrum of an audio signal over time. It's useful when you want to see how the sound frequencies evolve: for example, to spot which notes stand out in a musical phrase.
### stereo_to_mono.m
This one converts a stereo audio signal (with two channels: left and right) into mono (a single channel). It's helpful if you want to simplify audio processing or don’t need stereo effects.