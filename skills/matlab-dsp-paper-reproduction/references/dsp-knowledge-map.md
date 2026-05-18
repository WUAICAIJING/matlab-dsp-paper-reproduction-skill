# DSP Knowledge Map

Use this map to decide which concepts, formulas, and plots a task requires.

## Signal And System Foundations

- Sampling and reconstruction
- Aliasing
- Convolution
- Impulse response
- Frequency response
- Z transform
- Laplace transform
- Continuous-to-discrete conversion
- Stability and pole locations

Typical MATLAB mappings:

- `x[n]` -> vector `x`
- `h[n]` -> vector `h`
- `y[n] = x[n] * h[n]` -> `conv(x,h)` or `filter(b,a,x)`
- `H(z)` -> `freqz`, `zplane`, `filter`
- `H(s)` -> `tf`, `ss`, `bode`, `step`, `c2d`

## Filtering

Cover FIR, IIR, windows, analog prototypes, bilinear transform, impulse-invariant conversion, group delay, and zero/pole interpretation.

Must consider:

- Passband and stopband definitions
- Normalized frequency versus Hz
- Sampling rate
- Phase response
- Group delay
- Stability for IIR filters

## FFT And Spectral Analysis

Cover DFT/FFT, bin spacing, frequency resolution, windowing, leakage, zero padding, one-sided/two-sided spectra, and amplitude normalization.

Explicitly distinguish FFT magnitude from PSD.

## Random Processes And PSD

Cover:

- Random variable versus random process
- White noise and colored noise
- Gaussian distribution
- Stationarity and ergodicity
- Law of large numbers
- Autocorrelation
- Wiener-Khinchin theorem
- Periodogram
- Welch PSD
- Band-limited noise power

When noise, filtering, modulation bandwidth, synchronization error, phase noise, or jitter appears, consider PSD plots and variance checks.

## Communication Algorithms

Cover:

- Source/channel coding when relevant
- Modulation and demodulation
- Pulse shaping
- Matched filtering
- Equalization
- Carrier synchronization
- Timing synchronization
- SNR, Eb/N0, BER, SER, EVM
- Constellation and eye diagrams

Keep metric definitions explicit. Avoid mixing SNR, Es/N0, and Eb/N0 without conversion.

## Control And Synchronization Loops

Use control-system analysis when algorithms include digital PLL, Costas loop, carrier recovery, timing recovery, loop filters, TED, NCO, VCO, or feedback adaptation.

Cover:

- Open-loop and closed-loop structure
- Linearized small-signal model
- State-space model
- Transfer function
- Root locus
- Bode plot
- Nyquist plot
- Step response
- Stability margins
- Loop bandwidth, damping factor, natural frequency
- Lock time, capture behavior, steady-state error, jitter

Explain how control parameters affect DSP behavior: lock speed, overshoot, noise tracking, and residual error.

## Matrix And Estimation Methods

Cover:

- Least squares
- SVD, EVD, QR
- PCA and subspace methods
- Covariance matrices
- Bias and variance
- MSE and CRLB when relevant

Typical plots:

- Singular value spectrum
- Reconstruction error versus rank
- Subspace projection
- Estimation error histogram
