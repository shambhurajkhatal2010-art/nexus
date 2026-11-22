NEXUS — FULL WEBSITE + GBA TEST BUILD

WHAT IS INCLUDED
- index.html: the complete NEXUS dashboard with its existing tools and features.
- emulator-test.html: a separate GBA-only test page, independent of the dashboard.
- run-nexus.sh: starts a local web server on port 8000, or 8001 if 8000 is busy.
- THIRD_PARTY_NOTICES.txt: EmulatorJS attribution and license information.

TEST FIRST — PLEASE FOLLOW THIS ORDER
1. Extract this ZIP into a NEW folder. Do not use an older NEXUS folder.
2. Open the new folder in your file manager. Right-click inside it and choose Open in Terminal.
3. Run: sh run-nexus.sh
4. In Firefox, open the test-page URL printed in Terminal (normally http://localhost:8000/emulator-test.html; if port 8000 is busy, the script uses port 8001).
5. Choose a .gba file you are legally entitled to use and press Start Test.
6. Wait for the game to appear. Try the keyboard controls, hold the Fast-forward button, and check Save State / Load State in the emulator toolbar.
7. If the standalone test works, open the matching NEXUS home URL printed in Terminal (same port, without /emulator-test.html) and test the Gaming section there.

IMPORTANT HONEST LIMITATIONS
- EmulatorJS is loaded from its official stable CDN. The engine is not bundled in this ZIP, so internet access to cdn.emulatorjs.org is required on first launch.
- I verified the integration against EmulatorJS's published GBA and single-page-app documentation.
- This environment cannot resolve external CDN hosts, so I could not run a real ROM here. JavaScript syntax and package structure are checked, but gameplay is NOT claimed as verified.
- If the test page fails, it will give us a much clearer diagnosis than the old generic mGBA load() error. Send the exact status message.
- Fast-forward: hold the purple Fast-forward button below the emulator, or hold Shift.
- Controls: Arrow keys move; Z=A; X=B; Q/E=L/R; Enter=Start; V=Select.
- Save State / Load State and Quick Save / Quick Load are enabled in the emulator toolbar. Browser-based save-state storage is selected; exportable save files are also available in the toolbar.
- No ROMs or BIOS files are included. Your selected ROM is read locally by the browser and is not uploaded by NEXUS.

Official documentation:
https://emulatorjs.org/docs/systems/nintendo-game-boy-advance/
https://emulatorjs.org/docs/embed/
https://emulatorjs.org/docs/cdn/
