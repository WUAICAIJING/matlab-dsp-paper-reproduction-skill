# Visualization Patterns

Use figures to make abstract DSP, probability, communication, and control concepts visible.

## Process Visualization Patterns

Use process figures when a concept depends on shifting, folding, wrapping, translation, accumulation, convergence, correction, or continuous/discrete mapping. The goal is not merely to show that the final answer is correct; it is to make the transformation visually teachable.

### Sampling And Aliasing

- First figure: continuous-time waveform with sampling instants overlaid.
- Intermediate figure(s): sampled sequence for two or more sampling rates; show a high-frequency sinusoid producing the same samples as a lower-frequency alias.
- Final figure: reconstructed or interpreted discrete-time frequency compared with the original frequency.
- Misconception removed: aliasing is not just "bad sampling"; it is ambiguity created because different continuous-time signals can produce indistinguishable sample sequences.

### Spectral Replication, Folding, And Translation

- First figure: original baseband spectrum before sampling, mixing, or modulation.
- Intermediate figure(s): replicated spectra at multiples of sampling frequency, translated spectra after multiplication/mixing, and overlapping regions highlighted.
- Final figure: observed discrete-time or downconverted spectrum after overlap/folding.
- Misconception removed: spectral components do not mysteriously appear; they come from replication, translation, and overlap.

### Digital Frequency Wrapping

- First figure: frequency axis before wrapping, with components outside the principal interval.
- Intermediate figure(s): wrap components step by step into `[-pi, pi)` or `[0, 2*pi)`; mark equivalent digital frequencies.
- Final figure: wrapped spectrum or normalized-frequency representation.
- Misconception removed: frequencies outside the digital principal interval are not discarded; they are equivalent modulo `2*pi`.

### Convolution Build-Up

- First figure: input sequence and impulse response separately.
- Intermediate figure(s): flipped-and-shifted impulse response at several shifts; highlight pointwise products and partial sums.
- Final figure: complete convolution output with selected samples linked back to their accumulation steps.
- Misconception removed: convolution is not only a formula or black-box smoothing; each output sample is an accumulated overlap.

### Matched Filtering Accumulation

- First figure: received waveform and template/pulse shape before filtering.
- Intermediate figure(s): sliding template overlap, correlation accumulation, and noise averaging across the matched interval.
- Final figure: matched-filter output with sampling instant and peak SNR location marked.
- Misconception removed: matched filtering is not just another low-pass filter; it accumulates energy aligned with the expected signal shape.

### Synchronization Error Convergence

- First figure: impaired signal before correction, such as rotating constellation, drifting phase, or closing eye diagram.
- Intermediate figure(s): detector output, loop-filter output, NCO/control signal, and error trajectory over early/mid/late iterations.
- Final figure: corrected constellation, opened eye, converged error, or locked loop response.
- Misconception removed: synchronization does not happen in one step; the loop measures error, filters it, corrects the oscillator/interpolator, and converges dynamically.

### Continuous/Discrete Mapping

- First figure: continuous-time system in the s-plane or analog frequency response.
- Intermediate figure(s): sampling period effect, mapping from s-plane to z-plane, and frequency warping or pole movement.
- Final figure: discrete-time response compared with the analog target.
- Misconception removed: discretization is not a direct copy of the analog system; the mapping changes frequency behavior, stability interpretation, and implementation details.

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
