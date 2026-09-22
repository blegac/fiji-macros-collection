// Macro to apply CLAHE to each slice of a Z-stack
macro "Z-stack CLAHE [1]" {
    if (nSlices == 1) {
        showMessage("Z-stack CLAHE", "This macro requires a Z-stack image.");
        exit();
    }

    // Hide display updates during execution to significantly speed up processing
    setBatchMode(true);
    
    // Store original slice position
    startSlice = getSlice();

    // Loop through each slice of the Z-stack
    for (i = 1; i <= nSlices; i++) {
        setSlice(i);
        run("Enhance Local Contrast (CLAHE)", "blocksize=127 histogram=256 maximum=3 mask=*None*");
        showProgress(i, nSlices);
    }

    // Restore initial slice position and re-enable display updates
    setSlice(startSlice);
    setBatchMode(false);
    updateDisplay();
}