# BIM Genie

**BIM Genie** is a powerful Revit add-in designed to help BIM Coordinators and Managers optimize their daily workflows through automation, analysis, and intelligent assistance.

## 🚀 Features

- ✅ Automated Clash Map for smarter issue tracking and visualization  
- ✅ "Clear View" tool to clean and isolate 3D views  
- ✅ Seamless data synchronization with Bubble.io  
- ✅ AI-powered Assistant embedded directly in Revit  
- ✅ SQLite local storage with background sync  
- ✅ Geolocation and system diagnostics logging  
- ✅ Version checker to ensure plugin is always up-to-date  

## 🔄 What's New in v0.0.6 (Pre-release)

### Added
- 🌍 Automatic geolocation collection (continent, country, city) for usage insights  
- 🧠 Assistant personality refined for smoother and more natural conversations  
- 🖥️ Screen resolution now included in system diagnostics  

### Changed
- 🔄 Internal refactors for better performance and serialization logic  
- 💬 Improved Assistant message flow and UX interactions  

### Fixed
- 🧱 Better error handling when geolocation services fail  
- 🧹 Minor stability and memory usage improvements during long sessions  

📄 Full changelog → [CHANGELOG.md](./CHANGELOG.md)

## 📂 Installation

1. Download the latest `.zip` or `.msi` from the [Releases page](https://github.com/Bruno-Senna/BIMGenie/releases).  
2. Place the `.addin` and `.dll` files in your Revit Addins folder:  
   `C:\ProgramData\Autodesk\Revit\Addins\2025`  
3. Restart Revit.

## 🧠 Developed With

- Autodesk Revit 2025 API  
- .NET 8  
- SQLite  
- Bubble.io backend  
- OpenAI API (for Assistant module)  

## 🛠 Feedback & Contributions

We welcome feedback, suggestions, and contributions.  
Feel free to [open an issue](https://github.com/Bruno-Senna/BIMGenie/issues) or reach out at **support@bimgenie.com**.

## 📄 License

MIT License.
