# RecuParty R1

Tarea 9: implementación de vista para proyecto (Flutter).

- Alumno: Oscar Manuel Ayala Ortiz
- N.C. 1225100784, grupo GTID244
- Materia: Desarrollo de Aplicaciones Móviles
- Docente: Anastacio Rodríguez García

## Qué es

RecuParty R1 es una app para organizar fiestas. El nombre junta "recuperación 1" con "party". Esta tarea es solo la parte visual de la pantalla principal. Los datos son de ejemplo, no hay base de datos ni lógica de fondo.

La idea se va a seguir desarrollando más adelante.

## La pantalla

Es una sola pantalla con barra de navegación abajo y cinco pestañas:

1. **Party:** formulario para organizar la fiesta (nombre, fecha, invitados, presupuesto, tipo de lugar, venta de boletos).
2. **Lugares:** salones, albercas y DJs con su precio.
3. **Bebidas:** bebidas populares con precio aproximado y recetas (agua loca, cuba libre, michelada y paloma).
4. **Juegos:** dinámicas como beer pong, yo nunca nunca y karaoke, y una playlist de canciones populares.
5. **Equipo:** quién organiza qué, con casillas, y la venta de boletos.

## Lo que pide la tarea

- Botones: crear party, compartir, cotizar, agregar, generar boletos.
- Campos de texto: nombre, fecha, invitados, presupuesto, nueva tarea, precio del boleto.
- Imágenes: una por pestaña, en `assets/images/`.
- Barra de navegación: `NavigationBar` con las cinco pestañas.
- Listas: lugares, bebidas, recetas, dinámicas, canciones y tareas.

Todo el código está en un solo archivo: `lib/main.dart`.

## Evidencia de funcionamiento

| Party | Lugares | Bebidas |
|---|---|---|
| ![Party](evidencia/01_party.png) | ![Lugares](evidencia/02_lugares.png) | ![Bebidas](evidencia/03_bebidas.png) |

| Juegos | Equipo |
|---|---|
| ![Juegos](evidencia/04_juegos.png) | ![Equipo](evidencia/05_equipo.png) |

## Aviso

La app es solo para mayores de 18 años. Los precios y lugares son inventados, de ejemplo.

## Cómo correrlo

```
flutter pub get
flutter run -d chrome
```

## Pruebas autom�ticas

`flutter test` pasa las 3 pruebas de `test/widget_test.dart`: la barra de navegaci�n con las cinco pesta�as, los botones de la pesta�a Party y los tipos de lugar de la pesta�a Lugares.

![flutter test](evidencia/06_flutter_test.png)
