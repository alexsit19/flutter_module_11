package com.example.flutter_module_11
import android.provider.Settings.Global.getString
import com.yandex.mapkit.MapKitFactory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.embedding.engine.FlutterEngine


class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey(getString(R.string.yandex_maps_key))
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
