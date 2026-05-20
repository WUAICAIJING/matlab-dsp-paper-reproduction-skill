# MATLAB MCP Workflow

Use MATLAB MCP as the execution and inspection loop when available. The skill can depend on a MATLAB MCP server, but the server may not be installed or exposed in every Codex session.

## Availability Check

Before execution:

- Inspect available MCP tools/resources for a MATLAB-related server or tool.
- If a MATLAB MCP tool is visible, use it to run focused scripts/functions.
- If MATLAB MCP is not visible, say that execution is unavailable in this session and provide runnable MATLAB code instead.
- Do not claim a simulation was executed unless MATLAB MCP actually ran it.

Recommended user-facing wording when unavailable:

```text
当前会话没有暴露 MATLAB MCP，所以我先生成可运行的 MATLAB 脚本和预期图形/指标。等 MATLAB MCP 可用后，我可以继续自动运行、检查图和迭代。
```

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

## Suggested MCP Dependency Metadata

When publishing this skill, declare a MATLAB MCP dependency in `agents/openai.yaml` so users know the intended integration:

```yaml
dependencies:
  tools:
    - type: "mcp"
      value: "matlab"
      description: "MATLAB MCP server for running MATLAB code, inspecting variables, and reviewing generated figures."
```

The exact MCP server name may vary by installation. If the local server is named differently, adapt `value` to the installed server identifier.
