# MATLAB DSP Paper Reproduction Skill

A Codex skill for MATLAB-based DSP, communication, signal-system, and synchronization paper reproduction.

The skill focuses on learning-oriented reproduction:

- Decompose a paper or algorithm into theory and simulation modules.
- Explain principles and derive formulas before coding.
- Map paper symbols to MATLAB variables and functions.
- Use MATLAB MCP when available to run simulations and review plots.
- Prefer visual explanations for PSD, FFT, filters, random processes, PLLs, synchronization loops, and control-system analysis.
- Use DSP-style simulation-driven verification instead of ordinary code-first implementation.
- Ask before writing formal Markdown module notes or reproduction reports.

## Contents

```text
skills/
  matlab-dsp-paper-reproduction/
    SKILL.md
    agents/openai.yaml
    references/
    assets/templates/
```

## Install

Copy the skill folder into your Codex skills directory:

```powershell
Copy-Item -Recurse -Force `
  ".\skills\matlab-dsp-paper-reproduction" `
  "$env:USERPROFILE\.codex\skills\matlab-dsp-paper-reproduction"
```

Or run:

```powershell
.\scripts\install.ps1
```

Restart or refresh Codex after installation if the skill list does not update immediately.

## Usage

Example prompt:

```text
Use matlab-dsp-paper-reproduction to reproduce this communication synchronization paper. First decompose the theory modules, then derive formulas, run MATLAB simulations, review figures, and ask before writing Markdown notes.
```

For long paper reproductions, pair it with `planning-with-files` so `task_plan.md`, `findings.md`, and `progress.md` preserve the multi-session state.
