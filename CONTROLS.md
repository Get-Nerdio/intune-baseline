# Security Controls & Protections

This document outlines the security controls, validations, and protections configured for the `intune-baseline` repository to ensure policy integrity, quality, and compliance.

## Table of Contents

- [Repository Overview](#repository-overview)
- [Automated Workflows](#automated-workflows)
- [Validation Controls](#validation-controls)
- [Documentation Standards](#documentation-standards)
- [File Security](#file-security)
- [Release Management](#release-management)
- [Permissions Model](#permissions-model)

---

## Repository Overview

The `intune-baseline` repository contains Nerdio's recommended Microsoft Intune configurations for both Windows and macOS devices. All configurations are version-controlled and subject to automated validation before integration.

**Repository Structure:**

- `windows/` - Windows-specific Intune policies
- `macos/` - macOS-specific Intune policies
- `.github/workflows/` - Automated CI/CD workflows

---

## Automated Workflows

The repository implements three automated GitHub Actions workflows to maintain security, quality, and consistency.

### 1. JSON Validation Workflow

**File:** [.github/workflows/validate-json.yml](.github/workflows/validate-json.yml)

**Trigger Conditions:**
- Pull requests modifying `windows/**/*.json`
- Pull requests modifying `macos/**/*.json`
- Manual workflow dispatch

**Permissions:**
- `contents: read` - Read-only access to repository code
- `pull-requests: read` - Read access to pull request metadata

**Validation Checks:**

1. **File Encoding Verification**
   - Tests JSON files with multiple encoding attempts (UTF-8, UTF-8 with BOM, UTF-16 LE)
   - Ensures cross-platform compatibility
   - Prevents encoding-related parsing failures

2. **JSON Structure Validation**
   - Verifies all JSON files are well-formed
   - Catches syntax errors before merge

3. **Description Property Enforcement**
   - Ensures all policy files contain a `description` property
   - Validates description is not null
   - Prevents carriage return (CR) and line feed (LF) characters in descriptions
   - Maintains documentation consistency

**Failure Handling:**
- Blocks pull request merge if validation fails
- Provides detailed error reporting in GitHub job summary
- Lists all failed files with specific failure reasons

**Security Benefits:**

- ✅ Prevents malformed configurations from entering the main branch
- ✅ Ensures all policies are properly documented
- ✅ Maintains consistent metadata standards
- ✅ Catches encoding issues that could cause deployment failures

### 2. Documentation Update Workflow

**File:** [.github/workflows/update-md.yml](.github/workflows/update-md.yml)

**Trigger Conditions:**

- Push to `main` branch
- Changes to `windows/**` or `macos/**` directories
- Manual workflow dispatch

**Permissions:**

- `contents: write` - Allows automated documentation commits

**Functionality:**

- Automatically generates `README.md` files in each policy subdirectory
- Extracts policy names and descriptions from JSON files
- Creates formatted markdown tables using MarkdownPS PowerShell module
- Commits changes automatically with proper attribution

**Commit Attribution:**

```
Commit User: github-actions
Email: github-actions@users.noreply.github.com
Message: "Update POLICIES.md"
```

**Security Benefits:**

- ✅ Ensures documentation stays synchronized with actual policies
- ✅ Eliminates manual documentation drift
- ✅ Provides audit trail of documentation updates
- ✅ Uses dedicated service account for automated commits

### 3. Release Management Workflow

**File:** [.github/workflows/new-release.yml](.github/workflows/new-release.yml)

**Trigger Conditions:**

- Manual workflow dispatch only (controlled release process)

**Permissions:**

- `contents: write` - Create tags and releases

**Release Process:**

1. Generates version tag based on date format: `v{YY.MM.DD}.{RUN_NUMBER}`
2. Creates compressed archive of policy directories
3. Creates and pushes Git tag
4. Creates GitHub release with attached policy archive

**Security Benefits:**

- ✅ Manual trigger prevents accidental releases
- ✅ Semantic versioning based on date
- ✅ Immutable release artifacts
- ✅ Audit trail of all releases
- ✅ Uses GitHub's secure token authentication

---

## Validation Controls

### JSON File Validation

The repository enforces strict JSON validation on all policy files:

| Validation Check | Purpose | Failure Impact |
|-----------------|---------|----------------|
| **Encoding Detection** | Ensures files use UTF-8, UTF-8-BOM, or UTF-16 LE | ⛔ Blocks PR merge |
| **JSON Syntax** | Validates well-formed JSON structure | ⛔ Blocks PR merge |
| **Description Property** | Ensures `description` field exists | ⛔ Blocks PR merge |
| **Description Not Null** | Validates description has content | ⛔ Blocks PR merge |
| **No CR/LF in Description** | Prevents line breaks in descriptions | ⛔ Blocks PR merge |

### Validation Scope

- **Applies to:** All `.json` files in `windows/` and `macos/` directories
- **Execution:** Automated on every pull request
- **Enforcement:** Required check before merge
- **Reporting:** Detailed failure summary in GitHub Actions interface

### Example Validation Output

```
❌ JSON Validation Failed

The following files failed validation:

 • ./windows/security/policy-example.json
   Reason: description property is missing

 • ./macos/compliance/config.json
   Reason: description contains CR/LF characters
```

---

## Documentation Standards

### Automated Documentation Generation

**Enforcement Mechanism:** GitHub Actions workflow automatically updates documentation on merge to main branch.

**Documentation Structure:**

Each policy subdirectory contains an auto-generated `README.md` with:

1. **Header:** Directory name as H1 heading
2. **Policy Table:** Markdown table with columns:
   - Name (from `name` or `displayName` property)
   - Description (from `description` property)

**Example:**

```markdown
# windows-compliance

| Name | Description |
| ---- | ----------- |
| Windows Compliance Baseline | Baseline compliance policy for all Windows devices |
```

**Benefits:**

- ✅ Self-documenting repository
- ✅ Always accurate policy descriptions
- ✅ Consistent formatting
- ✅ Reduces manual maintenance burden

---

## File Security

### .gitignore Protection

**File:** [.gitignore](.gitignore)

The repository excludes sensitive and binary files from version control:

**Protected File Types:**

| Category | Extensions | Security Rationale |
|----------|-----------|-------------------|
| **Installers** | `.exe`, `.msi`, `.msix`, `.msp`, `.msu` | Prevents binary malware injection |
| **Packages** | `.intunewin`, `.zip`, `.7z`, `.tar`, `.gz` | Avoids large binaries, potential payload hiding |
| **Archives** | `.dmg`, `.iso`, `.jar`, `.rar` | Prevents repository bloat and binary storage |
| **OS Files** | `.DS_Store`, `Thumbs.db`, `ehthumbs.db` | Prevents OS metadata leakage |
| **Temporary** | `.tmp`, `.cache`, `._*` | Avoids temporary file pollution |
| **Spotlight** | `.Spotlight-V100`, `.Trashes` | macOS system file exclusion |

**Security Benefits:**

- ✅ Prevents accidental commit of binary executables
- ✅ Reduces attack surface for malicious file injection
- ✅ Keeps repository focused on configuration files
- ✅ Prevents OS-specific metadata exposure

---

## Release Management

### Controlled Release Process

**Release Workflow:** Manual trigger only (no automated releases)

**Version Format:** `v{YY.MM.DD}.{RUN_NUMBER}`

- Year: 2-digit year
- Month: 2-digit month
- Day: 2-digit day
- Run Number: GitHub Actions run number (auto-increment)

**Example:** `v26.02.07.15` (February 7, 2026, 15th workflow run)

**Release Artifacts:**

- Compressed ZIP archive containing policy directories
- Automatically attached to GitHub Release
- Immutable once created

**Release Security:**

- ✅ Manual approval required (no auto-deployment)
- ✅ Semantic versioning tracks release date
- ✅ Git tags provide immutable reference points
- ✅ GitHub releases provide audit trail
- ✅ Credentials managed via GitHub Secrets

---

## Permissions Model

### Workflow Permissions (Principle of Least Privilege)

| Workflow | Contents | Pull Requests | Rationale |
|----------|----------|---------------|-----------|
| **validate-json.yml** | `read` | `read` | Read-only validation, no modifications needed |
| **update-md.yml** | `write` | - | Needs to commit documentation updates |
| **new-release.yml** | `write` | - | Needs to create tags and releases |

**Security Principles:**

- ✅ Minimal permissions granted per workflow
- ✅ No workflows have admin access
- ✅ Write access limited to specific workflows
- ✅ Pull request checks run with read-only access

### Authentication

- All workflows use `GITHUB_TOKEN` for authentication
- Tokens are automatically generated and scoped per workflow run
- No long-lived credentials stored in repository
- Token permissions explicitly defined per workflow

---

## Security Best Practices Implemented

### 1. Defense in Depth

- Multiple validation layers (encoding, syntax, metadata)
- Automated checks plus code owner review
- Prevention at pull request stage

### 2. Separation of Duties

- Code owners for approval
- Automated workflows for validation
- Manual release process

### 3. Audit Trail

- All changes tracked in Git history
- Workflow runs logged in GitHub Actions
- Release artifacts preserved

### 4. Automated Enforcement

- Validation runs automatically on PR
- Documentation updates automatically
- No manual steps to bypass controls

### 5. Fail Secure

- Validation failures block merges
- Missing descriptions block integration
- Encoding errors prevent corruption

---

## Maintenance Notes

### Adding New Policies

When adding new policy files:

1. ✅ Ensure JSON file includes `description` property
2. ✅ Use single-line description (no CR/LF)
3. ✅ Save file as UTF-8 encoding
4. ✅ Create pull request (triggers validation)
5. ✅ Wait for code owner review
6. ✅ Documentation updates automatically on merge

### Modifying Workflows

Changes to workflow files require:

1. ✅ Review of permission changes
2. ✅ Testing in fork or development branch
3. ✅ Code owner approval
4. ✅ Documentation update if behavior changes

### Security Issue Reporting

For security concerns related to this repository's controls or configurations, contact the code owners directly or open a private security advisory through GitHub.

---

## Compliance Summary

| Control Type | Implementation | Status |
|--------------|----------------|--------|
| **Input Validation** | JSON validation workflow | ✅ Active |
| **Access Control** | CODEOWNERS + branch protection | ✅ Active |
| **Documentation** | Auto-generated README files | ✅ Active |
| **Version Control** | Git + semantic versioning | ✅ Active |
| **Release Management** | Manual approval workflow | ✅ Active |
| **File Type Restrictions** | .gitignore enforcement | ✅ Active |
| **Audit Logging** | GitHub Actions + Git history | ✅ Active |
| **Least Privilege** | Scoped workflow permissions | ✅ Active |

---

**Document Version:** 1.0  
**Last Updated:** February 7, 2026  
**Repository:** Get-Nerdio/intune-baseline  
