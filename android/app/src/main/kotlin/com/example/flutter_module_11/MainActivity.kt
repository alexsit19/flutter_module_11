package com.example.flutter_module_11
import com.yandex.mapkit.MapKitFactory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.embedding.engine.FlutterEngine


class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("bcda53ad-8d47-49d0-86d2-4822abd4364e")
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
