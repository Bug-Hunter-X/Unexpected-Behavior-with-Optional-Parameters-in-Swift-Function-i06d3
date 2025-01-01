# Unexpected Behavior with Optional Parameters in Swift Function

This repository demonstrates a common error related to optional parameters in Swift functions. The `calculateVolume` function has an optional `height` parameter. If the height is omitted, the function returns the area instead of handling the missing parameter gracefully.  This can lead to unexpected results if the caller doesn't explicitly check for the absence of the `height` parameter.

The `bug.swift` file contains the buggy code, and `bugSolution.swift` shows how to correct the issue by either providing a default value for the optional parameter or explicitly checking for nil.