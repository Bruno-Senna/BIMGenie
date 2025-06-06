## Changelog
All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org/) and follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) standard.

---

## [0.0.8-beta] – 2025-05-30

### Added

#### 🧪 Model Check  
- **Check Model Health** – Evaluates overall model integrity.  
- **Check Parameters** – New interactive interface for selecting and analyzing parameters by category.  
- **Check Painted Elements** – Detects and reports painted materials in the model.

#### 📦 Model Management  
- **Export Worksets** – Automatically exports worksets to Excel.  
- **Import Worksets** – Allows reimport of worksets with mapping support.  
- **Select All In-Place Elements** – Automatically selects all in-place elements.  
- **Clear Painted Elements** – Removes painted materials from selected elements.  
- **Reset Check Painted Elements** – Resets previously flagged painted elements.

#### 🌐 External Tools *(new tab created)*  
- Relocated **Check Model Version** and **Upgrade Model Version** into a dedicated tab for external operations.

#### ⚙️ Settings  
- **Change Language** – Switches plugin interface language.  
- **Plug-in Info** – Quick access to version details, author, and support information.

#### 📘 Official Tutorials  
- **YouTube Tutorial Videos** – New button linking directly to official BIM Genie YouTube tutorials.

### Changed

- **NWC View** – Enhanced 3D export view generation with adjusted background and standardized view name.  
- **Clash Map** – Improved performance, Excel clash reading, and sphere placement with metadata.  
- **Clear View Preserve Links** – Improved logic to only restore links manually hidden in the current view.  
- **Ribbon Restructure** – Tools reorganized into consistent, user-friendly ribbon groups.  
- **BIM Genie Assistant Improvements**:
  - More fluid and polished UI.  
  - Theme support for both dark and light modes.  
  - Enter key support for message sending.  
  - Clear Chat button added.  
  - Refined assistant personality for a more natural and contextual interaction experience.

### Fixed

- Fixed duplicate `.addin` file creation across multiple folders.  
- Resolved JSON serialization issues affecting Bubble data sync.  
- Corrected visual layout issues in light theme mode.  
- Improved stability when closing Revit automatically through the installer.  
- Fixed assistant misbehavior when reading contextual commands in specific Revit versions.

### Notes

- This is a **beta release**, intended for early testers and internal evaluation.  
- Currently supported only for **Revit 2025**.  
- Feedback and bug reports are welcome at [support@bimgenie.com](mailto:support@bimgenie.com). 

---

## [0.0.7-beta] – 2025-04-12
### Changed
- Clear View command now supports views with **View Templates**:
  - Detects if a View Template is active and prompts the user with options:
    - Remove the template and apply the Clear View.
    - Proceed without removing the template.
    - Use **Temporary View Properties** mode if available.

### Fixed
- Scroll behavior issue in the **BIM Genie Assistant panel** has been resolved.
  - Users can now smoothly scroll through the chat interface without visual glitches.

---

## [0.0.6-beta] – 2025-04-03
### Added
New fields added to the analytics engine, including continent, country, city, and screen resolution.

Integration with a free geolocation API to collect regional distribution data.

Automatic geolocation and system spec logging for new users.

### Changed
BIM Genie Assistant personality further refined for a more conversational and natural tone.

Improved UI/UX interactions within the Assistant, especially for message handling and flow.

Internal refactor to enhance data serialization and syncing logic.

### Fixed
Better error handling for location-based API failures.

Minor memory usage and stability enhancements during long Revit sessions.

---

## [0.0.5-beta] – 2025-04-02
### Added
- Bubble sync is now fully operational, with stable background data transmission.
- "Clear Conversation" button added to the BIM Genie Assistant panel for better control.

### Changed
- Significant UX improvements to the BIM Genie Assistant, including visual polish, clearer message flow, and enhanced AI personality behavior.
- Clash Map tool performance and responsiveness improved.
- Clear View command refined for more predictable and reliable results.

### Fixed
- General stability improvements and minor internal adjustments.

---

## [0.0.4-beta] – 2025-03-25
### Changed
- Improved plugin stability during startup and execution.
- Optimized memory usage and enhanced error handling.
- Refactored internal processes for better reliability.
- Unified focus on Revit 2025+ to simplify compatibility and support.
- **This plugin was developed using the most advanced and up-to-date features of the Revit 2025+ API to ensure maximum performance, stability, and innovation.**

---

## [0.0.3-beta] – 2025-03-23
### Changed
- Updated SQLite database path to `C:\ProgramData\BIMGenie` to ensure data is collected across all user accounts on a machine.
- Improved version check system to block outdated versions of BIM Genie when a new release is available.
- Release date is now correctly formatted and readable (e.g., “March 22, 2025”) instead of showing as a Unix timestamp.
- Enhanced user experience and professionalism in update prompts.

---

## [0.0.2-beta] – 2025-03-21
### Changed
- Updated plugin metadata, including internal name and description adjustments.
- Minor text refinements to prepare for public testing.

---

## [0.0.1-beta] – 2025-02-20
### Added
- Initial release of the BIM Genie Add-in.
- Core functionality for user activity tracking, command usage logging, and error reporting.
- Local SQLite database setup for storing usage data.
- Basic background sync structure prepared for integration with Bubble backend.
