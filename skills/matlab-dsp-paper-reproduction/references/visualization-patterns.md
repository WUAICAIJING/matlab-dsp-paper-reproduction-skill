# Visualization Patterns

Use figures to make abstract DSP, probability, communication, and control concepts visible.

## Random Processes

Recommended plots:

- Sample paths for several realizations.
- Histogram versus theoretical PDF.
- Sample mean convergence versus sample count.
- Autocorrelation estimate.
- Periodogram and Welch PSD.
- Error distribution across repeated trials.

Teaching pattern:

1. Start with a small sample count.
2. Show why the estimate is noisy.
3. Increase sample count or averaging.
4. Show convergence to theory.

## PSD And Spectral Analysis

Recommended plots:

- Time-domain signal.
- Autocorrelation estimate.
- FFT magnitude spectrum.
- Periodogram PSD.
- Welch PSD.
- Theoretical PSD if available.
- Filter input PSD versus output PSD.
- PSD integral versus time-domain variance.

Always label units: Hz, rad/sample, normalized frequency, dB/Hz, or power/bin.

State clearly that FFT magnitude is not PSD.

## FFT

Recommended plots:

- Time-domain waveform.
- Magnitude spectrum with correct frequency axis.
- Window comparison.
- Spectral leakage demonstration.
- Zero-padding comparison.
- Frequency resolution comparison.

Useful teaching contrast: sinusoid exactly on an FFT bin versus between bins.

## Filters

Recommended plots:

- Impulse response.
- Magnitude response.
- Phase response.
- Group delay.
- Zero-pole plot.
- Step response when relevant.
- Input/output time waveforms.
- Input/output spectra or PSD.

For IIR filters, always consider stability from poles.

## Communication Signals

Recommended plots:

- Constellation before and after impairment/correction.
- Eye diagram for timing.
- Matched-filter output.
- BER/SER/EVM curves.
- Time-domain I/Q waveforms.
- Spectrum and PSD.
- Error vector or phase trajectory.

For coding, visualize bit errors before and after decoding when possible.

## Digital PLL And Synchronization

Recommended plots:

- Loop block diagram in notes or explanation.
- Phase detector or TED S-curve.
- Open-loop and closed-loop response.
- Root locus.
- Bode plot.
- Nyquist plot.
- Step response.
- Phase/timing error convergence.
- NCO control word trajectory.
- Error PSD.
- Constellation or eye diagram before and after synchronization.

Explain trade-offs:

- Larger loop bandwidth: faster lock, more noise tracking.
- Smaller damping factor: faster response, more overshoot/oscillation.
- Narrow loop: better noise rejection, slower acquisition.

## Matrix Decomposition And Estimation

Recommended plots:

- Singular value spectrum.
- Rank versus reconstruction error.
- Principal component projection.
- Eigenvalue distribution.
- Estimation error histogram.
- MSE versus SNR or sample count.

## Continuous/Discrete Conversion

Recommended plots:

- Analog response versus digital response.
- s-plane pole map and z-plane pole map.
- Bode response before and after discretization.
- Frequency warping under bilinear transform.
- Step response comparison.
