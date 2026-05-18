# Paper Reproduction Report

Create formal Markdown documentation only after the user approves.

## Module Note Structure

Each module note should include:

- Module goal.
- Principle explanation.
- Key formulas.
- MATLAB variable mapping.
- Simulation design.
- Generated figures with captions.
- Verification result.
- Common pitfalls.
- Link to MATLAB files and result files.

## Final Report Structure

Recommended sections:

1. Paper goal and reproduced target.
2. Algorithm overview.
3. Module decomposition.
4. Key derivations.
5. MATLAB implementation structure.
6. Module-level verification figures.
7. Paper figure reproduction.
8. Differences from paper results.
9. Lessons learned and remaining uncertainties.

## Writing Style

- Use Chinese for explanations.
- Preserve important English terms from the paper with Chinese explanation.
- Keep equations close to the paper notation.
- Keep captions explanatory, not decorative.
- For each figure, explain what the learner should notice.

## Markdown Permission Rule

Before creating or updating formal documentation, ask the user.

Acceptable prompt:

```text
这个模块的公式、仿真图和结论已经 review 完成。要不要我把它写入 docs/module_notes/module_XX_name.md？
```

Do not ask for permission for temporary scripts, figures, data, or logs unless the user requested strict write control.
