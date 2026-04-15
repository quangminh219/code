class SettingsModel {
  bool soundOn;
  bool autoSave;
  bool notificationsOn;
  double volume;
  int highScore;
  bool isDarkMode;

  SettingsModel({
    this.soundOn = true,
    this.autoSave = false,
    this.notificationsOn = true,
    this.volume = 0.5,
    this.highScore = 3500,
    this.isDarkMode = false,
  });
}