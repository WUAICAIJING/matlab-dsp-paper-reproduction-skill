# Simulation-Driven Verification

Use this instead of ordinary code-first development.

## Cycle

1. State the expected phenomenon.
2. Write the minimal MATLAB experiment.
3. Run it.
4. Inspect plots and metrics.
5. Compare against theory.
6. Fix formula interpretation, code, parameters, or plots.
7. Record the result.
8. Integrate only after the module is verified.

## Expected Phenomenon Examples

- A low-pass filter suppresses high-frequency PSD while preserving low-frequency components.
- A Welch PSD estimate becomes smoother as segment averaging increases.
- Sample mean error shrinks as sample count grows.
- FFT bin spacing decreases as observation length grows.
- A PLL phase error converges after lock.
- Larger loop bandwidth locks faster but passes more noise.
- Bode margin predicts whether a loop response is oscillatory.
- BER decreases as Eb/N0 increases.
- A low-rank SVD approximation error decreases as rank increases.

## Verification Checks

Use numerical checks alongside plots:

- Signal length and matrix dimensions.
- Mean, variance, power, and energy.
- Frequency-axis units and bin spacing.
- Parseval or power consistency where useful.
- PSD integral versus time-domain variance.
- Filter passband/stopband attenuation.
- Pole locations for stability.
- BER/EVM/MSE trend.
- Repeated-run stability for random simulations.

## Failure Diagnosis

When a plot disagrees with theory, check:

- Wrong sampling rate or normalized frequency.
- One-sided/two-sided spectrum confusion.
- Missing FFT scaling.
- PSD units wrong.
- Transient not discarded.
- Random seed or sample count too small.
- Continuous/discrete model mismatch.
- Matrix orientation or conjugate transpose error.
- MATLAB toolbox function uses a different convention.
