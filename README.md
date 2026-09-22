# fiji-macros-collection

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
![Release](https://img.shields.io/github/v/release/blegac/fiji-macros-collection)
[![Fiji](https://img.shields.io/badge/Fiji-v1.53c%2B-blue.svg)](https://fiji.sc/)

A curated collection of Fiji (ImageJ) macros designed for image processing, stacks analysis, and laboratory workflow automation.

---

## Requirements

* **Fiji (ImageJ)** v1.53c or higher

---

## Included Macros

### Processing

#### `zstack-clahe.ijm`
Applies Contrast Limited Adaptive Histogram Equalization (CLAHE) to each individual slice of a 3D Z-stack in batch mode.

* **File:** `processing/zstack-clahe.ijm`
* **Shortcut:** `1` (or press <kbd>1</kbd> on your keyboard)
* **Default Parameters:**
  * `blocksize`: `127`
  * `histogram`: `256`
  * `maximum`: `3`
  * `mask`: `*None*`

---

## How to Use

### Option 1: Quick Run
1. Open **Fiji**.
2. Drag and drop the `.ijm` file into Fiji (or go to `Plugins > Macros > Run...`).
3. Click **Run** to execute on your active image.

### Option 2: Permanent Installation (Toolbar / Shortcuts)
To access the macros automatically every time Fiji starts:

1. Open your Fiji installation folder (`Fiji.app/`).
2. Navigate to `Fiji.app/macros/`.
3. Open `StartupMacros.fiji.ijm` with a text editor.
4. Copy and paste the content of the `.ijm` macro at the end of the file.
5. Save and restart Fiji. The shortcut (e.g., <kbd>1</kbd>) will now be active permanently.

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.