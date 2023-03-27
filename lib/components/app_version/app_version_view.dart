import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../constants/themes/font_manager.dart';

class AppVersionView extends HookWidget {
  const AppVersionView({super.key});

  Future<String> _appVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.version;
  }

  @override
  Widget build(BuildContext context) {
    final version = useMemoized(_appVersion);
    final appVersion = useFuture(version);

    return Text(
      appVersion.hasData ? 'v${appVersion.data}' : 'v0.0.0',
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            fontSize: FontSize.s16,
          ),
    );
  }
}
