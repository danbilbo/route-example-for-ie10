// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/router.dart';
import 'package:router_ie_10/app_component.dart';

main() {
  enableProdMode();

  bootstrap(AppComponent, const [
    ROUTER_PROVIDERS,
    const Provider(APP_BASE_HREF, useValue: '/'),
    const Provider(LocationStrategy, useClass: HashLocationStrategy)
  ]);
}
