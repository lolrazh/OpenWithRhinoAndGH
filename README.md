# Description

This project provides a custom context menu option for .3dm and .gh files. With a single right-click, users can open both Rhino and associated Grasshopper files simultaneously, streamlining the workflow for designers and architects.

## Installation

1. **Clone the Repository**:
   ```
   git clone https://github.com/YourGitHubUsername/YourRepositoryName.git
   ```

2. **Edit the Batch File**:
   - Open the batch script using a text editor.
   - Replace `INSERT RHINO.EXE PATH HERE` with the path to your Rhino executable.

3. **Backup Your Registry**:
   ⚠️**WARNING**⚠️ Before making any changes to the Windows Registry, it's crucial to back it up to prevent potential issues. If you're unfamiliar with this process, you can [follow this guide](https://support.microsoft.com/en-us/help/322756/how-to-back-up-and-restore-the-registry-in-windows) provided by Microsoft.

4. **Edit the Windows Registry**:
   - Press `Win + R` to open the Run dialog.
   - Type `regedit` and press Enter to open the Registry Editor.
   - In the Registry Editor, navigate to `HKEY_CLASSES_ROOT`.
   - Find and select the `Rhino7.Document` key.
   - Under this key, navigate to (or create) the `shell` subkey.
   - Create a new key with the name of your context menu option, for example, `Open with Rhino and Grasshopper`.
   - Inside this new key, create another key named `command`.
   - Double-click the `(Default)` value inside the `command` key and set its data to the path to your batch file, followed by `"%1"`. For example: `"C:\Path\to\OpenRhinoAndGrasshopper.bat" "%1"`.
   
   Note: Always proceed with caution when making changes to the Windows Registry. Incorrect edits can lead to system instability or malfunctions.

5. **Verify Installation**:
   - After setting up the registry, right-click on a `.3dm` or `.gh` file to ensure the "Open with Rhino and Grasshopper" option is available in the context menu.

## Note

In some cases, depending on system configurations or other installed software, the "Open with Rhino and Grasshopper" context menu option might not appear directly in the main context menu. If you don't see the option, try clicking "Show more options" or use `Shift + Right Click` to reveal the extended context menu where the function should be available.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
