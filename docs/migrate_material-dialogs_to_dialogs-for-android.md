# How to migrate material-dialogs 0.9.x to dialogs-for-android

 1. **Ensure your min SDK is 16 or above**
 2. **Ensure all calls to setProgress, getMaxProgress, setMaxProgress, getCurrentProgress,
    incrementProgress, isIndeterminateProgress, setProgressPercentFormat, setProgressNumberFormat
    are made on the UI thread.**
    material-dialogs claimed these methods are thread-safe but they have not been implementes thread-safe.
    When using Android Studio, support annotations might help finding spots where you call
    the methods from background threads. However, this only works when the caller methods are
    annotated as background threads.
 3. **Rename package from com.afollestad.materialdialogs to io.github.dialogsforandroid**
 4. **Replace DialogUtils.setBackgroundCompat with View.setBackground**
 5. **Replace MaterialDialog.Builder.itemColor -> MaterialDialog.Builder.itemsColor**
 6. **Replace MaterialDialog.Builder.itemColorRes -> MaterialDialog.Builder.itemsColorRes**
 7. **Replace MaterialDialog.Builder.itemColorAttr -> MaterialDialog.Builder.itemsColorAttr**
 8. **Replace MaterialDialog.Builder.forceStacking(true/false) -> MaterialDialog.Builder.stackingBehavior(StackingBehavior.ALWAYS/StackingBehavior.ADAPTIVE)**
 9. **Replace MaterialDialog.Builder.inputMaxLength(int) -> MaterialDialog.Builder.inputRange(0, int)**
 10. **Replace MaterialDialog.Builder.inputMaxLength(int, int) -> MaterialDialog.Builder.inputRange(0, int, int)**
 11. **Replace MaterialDialog.Builder.inputMaxLengthRes(int, int) -> MaterialDialog.Builder.inputRangeRes(0, int, int)**
 12. **Replace MaterialDialog.setMessage -> MaterialDialog.setContent**
 13. **Replace Builder.callback(ButtonCallback) -> Builder.onPositive/onNegative/onNeutral/onAny**
