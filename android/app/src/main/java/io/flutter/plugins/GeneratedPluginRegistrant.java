package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.benzneststudios.flutter_rounded_progress_bar.FlutterRoundedProgressBarPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterRoundedProgressBarPlugin.registerWith(registry.registrarFor("com.benzneststudios.flutter_rounded_progress_bar.FlutterRoundedProgressBarPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
