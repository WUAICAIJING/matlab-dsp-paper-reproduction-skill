# Workflow

Use this workflow for learning-oriented MATLAB DSP and communication paper reproduction.

## Intake

Identify the source and target:

- Paper, algorithm name, formula, figure, or existing MATLAB code.
- User's learning goal.
- Target outputs: explanatory figures, reproduced paper figures, MATLAB code, or Markdown notes.
- Available tools: MATLAB MCP, Signal Processing Toolbox, Communications Toolbox, Control System Toolbox, DSP System Toolbox.

If toolboxes are unknown, write code that can degrade gracefully or ask before using toolbox-specific functions.

## Module Plan

Decompose into small modules that can be understood and simulated independently.

For each module record:

- Module name.
- Theory concept.
- Key equations.
- MATLAB inputs and outputs.
- Expected visual phenomenon.
- Verification metric or sanity check.
- Relationship to paper figures or algorithm blocks.

Do not merge modules too early. A module is ready for integration only after its plots and checks make sense.

## Suggested Project Layout

Use this layout unless the user already has one:

```text
paper/
  original.pdf
  notes.md
matlab/
  main_reproduce.m
  modules/
    module_01_signal_model.m
    module_02_random_process_psd.m
    module_03_core_algorithm.m
    module_04_metrics.m
  utils/
    plot_style.m
    save_figure.m
results/
  figures/
  data/
  logs/
docs/
  module_notes/
  reproduction_report.md
```

## Integration

Integrate only after modules are individually explained and verified. The integrated script should:

1. Set reproducible parameters and random seed.
2. Generate or load input data.
3. Run verified modules in order.
4. Save metrics and figures.
5. Compare against the paper's target result.
6. Print a short reproduction summary.

## Difference Analysis

When results differ from a paper, do not hide the mismatch. Diagnose:

- Missing paper parameters.
- Different normalization.
- Different random seed or Monte Carlo count.
- Discrete/continuous-domain mismatch.
- Toolbox implementation differences.
- Figure axis or unit mismatch.
- Paper ambiguity or typo.
