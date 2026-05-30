# AI Agent Instructions

This file provides instructions for AI coding assistants working in this repository.

## Core principles

- Prioritize correctness, clarity, maintainability, and minimal diffs.
- Do not generate code just to "look complete." Every added line must have a purpose.
- Prefer improving existing code over adding parallel abstractions.
- Match the repository's existing style, naming, and architectural patterns.
- Avoid speculative refactors unrelated to the task.

## Before making changes

- Read the relevant files before editing.
- Identify the smallest correct change that solves the problem.
- Check for existing utilities, helpers, types, and patterns before adding new ones.
- If the task is ambiguous, prefer the most conservative interpretation.
- Do not invent requirements, features, APIs, or files that were not requested.

## Avoid AI-slop patterns

### Comments

- Do not add narrative comments that restate obvious code.
- Do not add tutorial-style commentary inside production code.
- Only add comments when they explain **why**, constraints, invariants, edge cases, or non-obvious decisions.
- Remove placeholder comments like:
  - `TODO: implement later`
  - `handle this properly`
  - `temporary fix`
    unless they are explicitly requested and actionable.

### Types and interfaces

- Do not use `any` unless absolutely necessary and justified.
- Do not use `as any` to bypass type safety.
- Prefer precise types, narrowing, and small helper types.
- Reuse existing types before creating new ones.
- Do not introduce overly generic names like `data`, `item`, `stuff`, `helper`, or `utils` if a domain name is available.

### Error handling

- Do not swallow exceptions.
- Do not use empty `catch` blocks.
- If an error is caught, handle it meaningfully:
  - rethrow it,
  - wrap it with context,
  - convert it to a typed/domain error,
  - or log/report it appropriately when that is the established pattern.
- Preserve useful error information.

### Logic and structure

- Avoid dead code, commented-out code, and unused helpers.
- Do not duplicate logic when an existing function can be reused.
- Do not create one-off abstractions unless they clearly reduce complexity.
- Keep functions focused and reasonably small.
- Prefer explicit control flow over clever but hard-to-read code.
- Do not leave debugging leftovers such as `console.log`, print statements, or temporary probes unless requested.

### Imports and dependencies

- Do not add new dependencies unless necessary.
- Prefer existing standard-library or already-installed solutions.
- Do not invent imports, APIs, config keys, or library capabilities.
- Remove unused imports introduced during edits.

### Tests

- Add or update tests when behavior changes, bugs are fixed, or new logic is introduced.
- Keep tests targeted and readable.
- Do not rewrite unrelated tests.
- Do not change snapshots or golden files without a reason tied to the task.

## Change scope

- Make the smallest change that fully solves the task.
- Do not reformat unrelated files.
- Do not rename symbols, move files, or restructure modules unless required.
- Do not fix nearby unrelated issues unless explicitly asked.
- If you notice another issue, mention it separately instead of bundling it into the same change.

## Verification

Before finishing, always do the relevant verification available in this repository:

1. Run the narrowest fast checks first.
2. Then run broader project validation if appropriate.

Typical examples:

- build
- typecheck
- lint
- test
- project-specific quality checks

If a tool like `aislop` is configured in the repo, run it before concluding.

## Final response expectations

When reporting completed work:

- State exactly what changed.
- Mention any assumptions.
- List validation commands run.
- Report any failures or checks you could not run.
- Do not claim success if verification was not performed.

## Preferred decision rules

When multiple implementations are possible, prefer this order:

1. Existing project pattern
2. Simpler design
3. Stronger type safety
4. Fewer dependencies
5. Smaller diff
6. More explicit code over clever code

## Hard rules

- Never fake execution results.
- Never claim a bug is fixed without explaining the change.
- Never claim tests passed unless they were actually run.
- Never silently ignore failing checks.
- Never add filler comments or cosmetic complexity to appear thorough.

## If this repo uses aislop

If `aislop` is available in this repository, use it as a final quality gate when practical:

```bash
npx aislop scan
```

If the repo has a local install or custom scripts, prefer those project-specific commands.
