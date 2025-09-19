## Profile Submission Policy  

All local profiles must be submitted via Pull Request and follow the DCI review workflow.  
See the full policy and workflow [here](./CONTRIBUTING.md).  

# Template Profile for SPD-CI APIs

This folder provides a **template profile** for SPD-CI APIs. A **profile** is a localized or implementation-specific adaptation of the base API specifications, ensuring compliance with **DCI standards**.

The template profile allows **country or organization implementers** to copy it and add their customizations while referencing the main SPD-CI APIs.

---

## Purpose

A profile may:

* Restrict API endpoints to specific enumerations or parameters.
* Add optional or required fields relevant to the local context.
* Remove unnecessary endpoints or parameters from the base API.
* Provide sample request/response payloads aligned with the profile.

---

## How to Create a New Profile

1. **Copy this folder** and rename it to your country or organization name, e.g.:
   `profiles/uganda/`

2. Update the `profile-metadata.yaml` with:

   * Profile name and description.
   * Country, language, and version information.
   * Contact details for maintainers.
   * Links to relevant documentation.
   * Pointer to your `apis.yaml` file.

3. Create or update the `apis.yaml` file to define which API specifications your profile includes:

   * By default, reference APIs from `common/` and `extensions/` in the main `spdci-api` repo.
   * If your country/organization modifies an API (e.g., adds a custom endpoint), copy that API definition into your profile folder, make the changes, and reference the new file in `apis.yaml`.
   * This way, only changed APIs are duplicated, while the rest continue to point to the base `common/` and `extensions/`.

   Example `apis.yaml`:

   ```
   includes:
   - common/v1/registry_core_api_v1.0.0.yaml
   - profiles/uganda/extensions/social/v1/social_api_v1.0.0.yaml  # override
   ```

4. Validate your profile against the base APIs to ensure compliance.

5. Submit your profile as a **pull request** to this repository.

---

## Notes

* Profiles should **not overwrite the base APIs directly**; instead, they extend or override them via their own `apis.yaml`.
* Each profile has its own `apis.yaml` that acts as the authoritative list of included APIs.
* Only modified APIs should be copied into a profile directory; all unchanged files continue to reference `common/` and `extensions/`.
* Changes should be tracked in version control for transparency.

---

## Directory Structure

```
template_profile/
├── src             # Profile-specific adaptations referencing main APIs
│   ├── common      # Optional overrides or extensions
│   ├── extensions  # Optional extensions (CRVS, FR, DR)
│   ├── registry    # Profile adaptations for registry APIs
├── build           # files generate
├── profile-metadata.yaml  # Metadata describing the profile
└── apis.yaml       # Lists the APIs included in the profile
```

---

## Build Instructions

See the main [SPD-CI API Build Instructions](../build/build_instructions.md) to generate release artifacts.

---

## Discussion Forum

For questions, issues, or discussion regarding profiles, visit the [SPD-CI Discussions](https://github.com/orgs/spdci/discussions).
