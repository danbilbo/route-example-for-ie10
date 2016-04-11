// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [
      ROUTER_DIRECTIVES]
)
@RouteConfig(const [
  const Route(path: '/a',
      component: AComponent,
      useAsDefault: true,
      name: 'ARoute'),
  const Route(path: '/b',
      component: BComponent,
      name: 'BRoute'),
  const Route(path: '/c',
      component: CComponent,
      name: 'CRoute'),
])
class AppComponent {}

@Component(selector: 'a-cmp', template: '<p>A Route</p>')
class AComponent {
}

@Component(selector: 'b-cmp', template: '<p>B Route</p>')
class BComponent {
}

@Component(selector: 'c-cmp', template: '<p>C Route</p>')
class CComponent {
}
