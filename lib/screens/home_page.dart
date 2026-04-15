import 'package:flutter/material.dart';
import '../models/settings_model.dart';
import '../widgets/setting_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SettingsModel settings = SettingsModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.pinkAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "⚙️ Game Settings",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 20),

                    // Âm thanh
                    SettingTile(
                      title: "Âm thanh",
                      value: settings.soundOn,
                      onChanged: (val) {
                        setState(() {
                          settings.soundOn = val;
                        });
                      },
                      icon: Icons.volume_up,
                    ),

                    // Điểm cao nhất
                    ListTile(
                      leading: Icon(Icons.emoji_events, color: Colors.orange),
                      title: Text("Điểm cao nhất"),
                      trailing: Text(
                        "${settings.highScore}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),

                    // Tự động lưu game
                    SettingTile(
                      title: "Tự động lưu game",
                      value: settings.autoSave,
                      onChanged: (val) {
                        setState(() {
                          settings.autoSave = val;
                        });
                      },
                      icon: Icons.save,
                    ),

                    // Bật/Tắt thông báo
                    SettingTile(
                      title: "Thông báo",
                      value: settings.notificationsOn,
                      onChanged: (val) {
                        setState(() {
                          settings.notificationsOn = val;
                        });
                      },
                      icon: Icons.notifications,
                    ),

                    SizedBox(height: 20),

                    // Volume
                    Row(
                      children: [
                        Icon(Icons.volume_down),
                        Expanded(
                          child: Slider(
                            value: settings.volume,
                            onChanged: (val) {
                              setState(() {
                                settings.volume = val;
                              });
                            },
                          ),
                        ),
                        Icon(Icons.volume_up),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Chế độ ban đêm (Dark Mode)
                    SettingTile(
                      title: "Chế độ ban đêm",
                      value: settings.isDarkMode,
                      onChanged: (val) {
                        setState(() {
                          settings.isDarkMode = val;
                        });
                        // Thay đổi theme
                        if (settings.isDarkMode) {
                          ThemeMode.system;
                        }
                      },
                      icon: Icons.brightness_6,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}