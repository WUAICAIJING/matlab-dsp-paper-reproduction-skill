# MATLAB MCP Workflow

Use MATLAB MCP as the execution and inspection loop when available.

## Execution Loop

1. Create or update focused MATLAB scripts/functions.
2. Run the target script/function through MATLAB MCP.
3. Capture command output, errors, warnings, metrics, and generated file paths.
4. Inspect variable sizes and key values.
5. Inspect figures visually when possible.
6. Fix issues and rerun.
7. Save stable results under `results/`.

## Figure And Data Saving

Prefer reproducible outputs:

- Save figures to `results/figures/`.
- Save numeric arrays or metrics to `results/data/`.
- Save execution logs to `results/logs/`.
- Use descriptive names such as `module_02_welch_psd_comparison.png`.

Use deterministic random seeds for examples unless the goal is to show randomness.

## Self-Review After Running

Check:

- Does the code implement the formula, not just a plausible algorithm?
- Are axes labeled with units?
- Are legends clear?
- Does the plotted trend match the expected phenomenon?
- Are warnings meaningful?
- Are generated figures suitable for teaching?
- Would a learner understand the concept from the figure and a short caption?

## Fallback When MCP Is Unavailable

If MATLAB MCP is unavailable:

- Provide runnable MATLAB code.
- State expected plots and numerical trends.
- Include manual run instructions.
- Explain how to inspect variables and figures.
- Do not claim the simulation was executed.
