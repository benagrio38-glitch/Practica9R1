// Pruebas de RecuParty (Práctica 9): barra de navegación y pestañas.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:recuparty/main.dart';

void main() {
  testWidgets('la barra de navegación tiene las cinco pestañas',
      (WidgetTester tester) async {
    tester.view.physicalSize = const Size(800, 1800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(const RecuPartyApp());

    expect(find.text('Party'), findsWidgets);
    expect(find.text('Lugares'), findsWidgets);
    expect(find.text('Bebidas'), findsWidgets);
    expect(find.text('Juegos'), findsWidgets);
    expect(find.text('Equipo'), findsWidgets);
  });

  testWidgets('la pestaña Party muestra los botones de crear y compartir',
      (WidgetTester tester) async {
    tester.view.physicalSize = const Size(800, 1800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(const RecuPartyApp());

    expect(find.text('Crear party'), findsOneWidget);
    expect(find.text('Compartir invitación'), findsOneWidget);
  });

  testWidgets('la pestaña Lugares muestra los tipos de lugar',
      (WidgetTester tester) async {
    tester.view.physicalSize = const Size(800, 1800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(const RecuPartyApp());

    await tester.tap(find.text('Lugares').last);
    await tester.pumpAndSettle();

    expect(find.text('Salones'), findsOneWidget);
    expect(find.text('Albercas'), findsOneWidget);
    expect(find.text('DJs'), findsOneWidget);
  });
}
