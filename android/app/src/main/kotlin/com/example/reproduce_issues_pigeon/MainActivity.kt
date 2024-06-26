package com.example.reproduce_issues_pigeon

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        Pigeon.MessageApi.setUp(flutterEngine.dartExecutor.binaryMessenger, FakeMessageApiData())
    }

}
