---
name: matlab-dsp-paper-reproduction
description: Use when working on MATLAB-based DSP, communication, signal-system, control-loop, synchronization, PSD, FFT, filtering, coding, matrix decomposition, or paper reproduction tasks that require theory explanation, formula derivation, MATLAB simulation, visual plots, MATLAB MCP execution, self-review, and learning-oriented Markdown documentation.
---

# MATLAB DSP Paper Reproduction

Use this skill to help users learn, simulate, and reproduce DSP, communication, signal-system, and synchronization papers or algorithms with MATLAB. Prioritize understanding: split the algorithm into teachable modules, derive formulas, map symbols to MATLAB variables, run visual simulations, review the plots, then integrate the complete reproduction.

## Core Rules

- Do not jump directly to a complete MATLAB `main.m`.
- Start with a short intake and module plan before implementation.
- Explain each module before coding it: principle, formulas, MATLAB mapping, expected plots, and verification criteria.
- Use MATLAB MCP when available to generate, run, inspect, and iterate simulations.
- Check whether MATLAB MCP is available before claiming any code was executed.
- Prefer plots for abstract concepts. If a concept can be shown visually, design a MATLAB figure for it.
- Ask the user before writing formal Markdown reports or module notes.
- Keep explanations primarily in Chinese. Keep MATLAB variables/functions in English. Preserve paper symbols when useful.

## Relationship To General Workflow Skills

### Brainstorming-Inspired Intake

Begin with a compact design/intake pass:

- Identify the input: paper PDF, algorithm name, formula, screenshot, existing MATLAB code, target figure, or learning question.
- Clarify the user's learning goal and reproduction goal.
- Ask only the minimum questions needed to avoid a wrong path.
- Split the task into theory modules, simulation modules, and reproduction outputs.
- Do not implement a full algorithm before the module plan is clear.

### DSP Simulation-Driven Verification

Use DSP-specific verification instead of ordinary TDD:

- Define the expected phenomenon before implementation.
- Build the smallest MATLAB experiment that should reveal the phenomenon.
- Run the experiment through MATLAB MCP when available.
- Inspect figures, variables, dimensions, units, metrics, and warnings.
- Fix formula interpretation, MATLAB code, parameters, or visualization until theory and simulation agree, or the mismatch is explained.
- Integrate only verified modules into the complete algorithm.

### Planning-With-Files Compatibility

For whole-paper reproductions, multi-module algorithms, long MATLAB sessions, or multi-turn work, recommend using `planning-with-files`.

Use:

- `task_plan.md` for phase and module tracking.
- `findings.md` for formulas, assumptions, paper interpretation, MATLAB observations, and figure notes.
- `progress.md` for MATLAB runs, generated figures, errors, decisions, and current status.

## Standard Workflow

### 1. Intake

Determine:

- What is being studied or reproduced.
- Which paper figures, tables, equations, or algorithm blocks matter.
- What the user wants to understand first.
- Whether MATLAB MCP is available.
- Whether the user wants formal Markdown documentation now, later, or only after review.

For long work, propose the standard project layout:

```text
paper/
  original.pdf
  notes.md
matlab/
  main_reproduce.m
  modules/
  utils/
results/
  figures/
  data/
  logs/
docs/
  module_notes/
  reproduction_report.md
```

Adapt to an existing project layout when one exists.

### 2. Module Decomposition

Split the paper or algorithm into modules such as:

- Signal model
- Random process and noise model
- PSD and spectral analysis
- Filter, transform, or FFT block
- Matrix decomposition or estimator
- Coding, modulation, demodulation, or equalization
- Synchronization loop or digital PLL
- Control-system model
- Metrics and paper-figure reproduction

For each module, define inputs, outputs, formulas, MATLAB variables, expected plots, and verification criteria.

Read `references/workflow.md` for the full module workflow.

### 3. Module Explanation

For each module, explain before coding:

- Principle in Chinese.
- Key formula derivation.
- Assumptions and valid conditions.
- Mapping from formulas to MATLAB variables/functions.
- What figure should make the concept intuitive.
- Common mistakes, such as normalization, frequency-axis, sampling-rate, and continuous/discrete-domain confusion.

Read `references/dsp-knowledge-map.md` when choosing which concepts must be covered.

### 4. MATLAB MCP Execution Loop

First check whether a MATLAB MCP server/tool is available in the current session. Use it when present. If no MATLAB MCP capability is visible, say so and fall back to runnable MATLAB code plus manual inspection instructions.

When MATLAB MCP is available:

1. Generate focused module code.
2. Run the code with MATLAB MCP.
3. Capture errors, warnings, variable sizes, metrics, and figure paths.
4. Inspect whether the figures match the derivation.
5. Iterate until the result is theoretically consistent or the mismatch is explained.
6. Save figures, data, and logs into `results/`.
7. Ask before writing formal `.md` documentation.

Never state that a MATLAB script was run unless MATLAB MCP actually executed it.

If MATLAB MCP is unavailable, generate runnable MATLAB code, expected output descriptions, and manual inspection instructions.

Read `references/matlab-mcp-workflow.md` for execution and review details.

### 5. Visualization Requirements

Prefer visual explanation for abstract DSP, communication, probability, and control concepts.

Always consider PSD when the task involves:

- Random processes
- Noise or phase noise
- Filtering
- Modulation bandwidth
- Synchronization error
- Jitter
- Frequency-domain metrics

Always consider control-system plots when the task involves:

- Digital PLL
- Carrier synchronization
- Timing synchronization
- Costas loop
- TED/NCO/VCO models
- Loop filters
- Feedback loops

Read `references/visualization-patterns.md` before designing figures for unfamiliar modules.

### 6. Review Checklist

Before accepting a module or final reproduction:

- Are formulas consistent with the paper?
- Are continuous-time, discrete-time, analog, and digital domains clearly separated?
- Are sampling rate, units, frequency axis, and normalization correct?
- Do MATLAB variables match formula symbols?
- Are vector/matrix dimensions correct?
- Do figures explain the intended concept?
- Are PSD, frequency response, constellation, error trajectory, or control plots included when needed?
- Are reproduction differences against the paper explained?

Read `references/simulation-driven-verification.md` for the verification pattern.

### 7. Documentation Permission

Do not write formal Markdown reports without asking the user first.

Allowed without extra permission:

- Temporary MATLAB scripts
- Result figures
- Data files
- Logs

Ask before creating or updating:

- `docs/module_notes/*.md`
- `docs/reproduction_report.md`
- Formal derivation notes
- Final learning reports

When the user approves documentation, use the templates in `assets/templates/` and the guidance in `references/paper-reproduction-report.md`.
