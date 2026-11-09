import 'package:flutter/material.dart';

// RecuParty R1
// Vista principal de una app para organizar fiestas.
// Todo el código está en este único archivo (Tarea 9).
// Solo es la parte visual: los datos son de ejemplo y no se guardan.

void main() => runApp(const RecuPartyApp());

// ---------------------------------------------------------------
// App
// ---------------------------------------------------------------

class RecuPartyApp extends StatelessWidget {
  const RecuPartyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecuParty R1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE91E63),
          brightness: Brightness.dark,
        ),
      ),
      home: const InicioScreen(),
    );
  }
}

// ---------------------------------------------------------------
// Datos de ejemplo
// ---------------------------------------------------------------

class Lugar {
  final String nombre;
  final String detalle;
  final String precio;
  final String imagen;
  const Lugar(this.nombre, this.detalle, this.precio, this.imagen);
}

const List<Lugar> salones = [
  Lugar(
    'Salón La Terraza',
    'Para 80 personas, con pista de baile, mesas y estacionamiento.',
    r'$3,500 por 5 horas',
    'assets/images/salon_terraza.jpg',
  ),
  Lugar(
    'Salón Luna',
    'Para 50 personas, con barra y luces. Incluye sillas.',
    r'$2,500 por 5 horas',
    'assets/images/salon_luna.jpg',
  ),
  Lugar(
    'Quinta Los Pinos',
    'Jardín grande para 120 personas, ideal para fiesta de día.',
    r'$5,000 por día',
    'assets/images/quinta_pinos.jpg',
  ),
];

const List<Lugar> albercas = [
  Lugar(
    'Alberca Sol y Agua',
    'Alberca con asadores y palapa, hasta 40 personas.',
    r'$2,800 por día',
    'assets/images/alberca_sol.jpg',
  ),
  Lugar(
    'Alberca El Oasis',
    'Alberca con chapoteadero y mesas, hasta 25 personas.',
    r'$1,800 por día',
    'assets/images/alberca_oasis.jpg',
  ),
  Lugar(
    'Terraza Splash',
    'Alberca techada con música incluida, hasta 60 personas.',
    r'$4,200 por día',
    'assets/images/terraza_splash.jpg',
  ),
];

const List<Lugar> djs = [
  Lugar(
    'DJ Chuy Beats',
    'Reggaetón, cumbia y música de antro. Incluye bocinas.',
    r'$2,000 por 4 horas',
    'assets/images/dj_chuy.jpg',
  ),
  Lugar(
    'DJ Nova',
    'Electrónica y pop. Incluye luces y humo.',
    r'$2,800 por 4 horas',
    'assets/images/dj_nova.jpg',
  ),
  Lugar(
    'DJ Kora',
    'Banda, corridos y música de rancho. Incluye bocinas.',
    r'$1,800 por 4 horas',
    'assets/images/dj_kora.jpg',
  ),
];

class Bebida {
  final String nombre;
  final String presentacion;
  final String precio;
  final IconData icono;
  const Bebida(this.nombre, this.presentacion, this.precio, this.icono);
}

const List<Bebida> bebidas = [
  Bebida('Cerveza clara', 'Caguama de 940 ml', r'$55', Icons.sports_bar),
  Bebida('Cerveza clara', 'Paquete de 12 latas', r'$260', Icons.sports_bar),
  Bebida('Tequila blanco', 'Botella de 700 ml', r'$320', Icons.local_bar),
  Bebida('Ron blanco', 'Botella de 750 ml', r'$280', Icons.local_bar),
  Bebida('Vodka', 'Botella de 750 ml', r'$260', Icons.local_bar),
  Bebida('Whisky', 'Botella de 750 ml', r'$450', Icons.local_bar),
  Bebida('Refresco de cola', 'Botella de 3 litros', r'$40', Icons.local_drink),
  Bebida('Hielo', 'Bolsa de 5 kilos', r'$35', Icons.ac_unit),
];

class Receta {
  final String nombre;
  final String imagen;
  final List<String> ingredientes;
  final String pasos;
  const Receta(this.nombre, this.imagen, this.ingredientes, this.pasos);
}

const List<Receta> recetas = [
  Receta(
    'Agua loca (versión de fiesta)',
    'assets/images/agua_loca.jpg',
    [
      '1 taza de vodka',
      '2 tazas de jugo de naranja',
      '1 taza de jugo de piña',
      '2 cucharadas de granadina',
      'Fruta picada (naranja, fresa)',
      'Mucho hielo',
    ],
    'Se mezcla todo en una jarra grande o una cubeta, se revuelve y se sirve '
        'con hielo. Para la versión sin alcohol, solo se quita el vodka.',
  ),
  Receta(
    'Cuba libre',
    'assets/images/cuba_libre.jpg',
    [
      '2 onzas (60 ml) de ron blanco',
      'Refresco de cola',
      'Jugo de medio limón',
      'Hielo',
    ],
    'Se llena el vaso con hielo, se agrega el ron y el limón, se completa con '
        'refresco de cola y se revuelve despacio.',
  ),
  Receta(
    'Michelada',
    'assets/images/michelada.jpg',
    [
      'Cerveza clara bien fría',
      'Jugo de 1 limón',
      'Salsa inglesa',
      'Salsa picante',
      'Sal para el borde del vaso',
      'Hielo',
    ],
    'Se escarcha el vaso con limón y sal, se agregan el jugo de limón y las '
        'salsas, se pone hielo y se completa con la cerveza.',
  ),
  Receta(
    'Paloma',
    'assets/images/paloma.jpg',
    [
      '2 onzas (60 ml) de tequila blanco',
      'Refresco de toronja',
      'Jugo de medio limón',
      'Sal',
      'Hielo',
    ],
    'Se escarcha el vaso con sal, se pone hielo, el tequila y el limón, y se '
        'completa con el refresco de toronja.',
  ),
];

class Dinamica {
  final String nombre;
  final String jugadores;
  final String reglas;
  final String imagen;
  const Dinamica(this.nombre, this.imagen, this.jugadores, this.reglas);
}

const List<Dinamica> dinamicas = [
  Dinamica(
    'Beer pong',
    'assets/images/beer_pong.jpg',
    '4 jugadores, 2 equipos',
    'Se ponen 10 vasos por lado en forma de triángulo. Cada equipo lanza una '
        'pelota de ping pong para meterla en un vaso del otro lado. Si cae, ese '
        'vaso se retira y el otro equipo se lo toma. Gana el equipo que deje al '
        'otro sin vasos. Se puede jugar con agua o refresco.',
  ),
  Dinamica(
    'Yo nunca nunca',
    'assets/images/yo_nunca.jpg',
    'Desde 3 jugadores',
    'Una persona dice "yo nunca nunca" y algo que nunca ha hecho. Los que sí '
        'lo han hecho toman un trago. Después sigue la siguiente persona.',
  ),
  Dinamica(
    'Verdad o reto',
    'assets/images/verdad_reto.jpg',
    'Desde 3 jugadores',
    'Se gira una botella. A quien le toque elige verdad (contesta con '
        'sinceridad) o reto (hace lo que el grupo le pida). Si no quiere '
        'cumplirlo, toma un trago.',
  ),
  Dinamica(
    'Rey de copas',
    'assets/images/rey_copas.jpg',
    'Desde 4 jugadores',
    'Se pone un vaso en el centro rodeado de cartas. Cada quien saca una carta '
        'y cada carta tiene una regla que se acuerda antes de empezar. Quien '
        'saque el cuarto rey se toma el vaso del centro.',
  ),
  Dinamica(
    'Karaoke',
    'assets/images/karaoke.jpg',
    'Todo el grupo',
    'Se arma una lista de canciones y cada quien canta una. El grupo vota '
        'quién lo hizo mejor.',
  ),
  Dinamica(
    'Charadas',
    'assets/images/charadas.jpg',
    'Dos equipos',
    'Un jugador actúa una palabra sin hablar y su equipo tiene un minuto para '
        'adivinarla. Gana el equipo con más aciertos.',
  ),
];

class Cancion {
  final String titulo;
  final String artista;
  final String genero;
  const Cancion(this.titulo, this.artista, this.genero);
}

const List<Cancion> canciones = [
  Cancion('Gasolina', 'Daddy Yankee', 'Reggaetón'),
  Cancion('Pepas', 'Farruko', 'Reggaetón'),
  Cancion('Danza Kuduro', 'Don Omar', 'Reggaetón'),
  Cancion('Mi Gente', 'J Balvin y Willy William', 'Urbano'),
  Cancion('Suavemente', 'Elvis Crespo', 'Merengue'),
  Cancion('Rayando el sol', 'Maná', 'Rock en español'),
  Cancion('La Chona', 'Los Tucanes de Tijuana', 'Norteño'),
  Cancion('Payaso de rodeo', 'Caballo Dorado', 'Banda'),
  Cancion('Ella baila sola', 'Eslabon Armado y Peso Pluma', 'Corridos'),
  Cancion('Bailando', 'Enrique Iglesias', 'Pop latino'),
];

// ---------------------------------------------------------------
// Widgets de apoyo
// ---------------------------------------------------------------

void mostrarAviso(BuildContext context, String texto) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(texto)));
}

class Titulo extends StatelessWidget {
  final String texto;
  const Titulo(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Imagen extends StatelessWidget {
  final String ruta;
  final double alto;
  final double radio;
  const Imagen(this.ruta, {super.key, this.alto = 160, this.radio = 16});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radio),
      child: Image.asset(
        ruta,
        height: alto,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          height: alto,
          color: Colors.deepPurple,
          alignment: Alignment.center,
          child: const Icon(Icons.celebration, size: 48),
        ),
      ),
    );
  }
}

class Miniatura extends StatelessWidget {
  final String ruta;
  const Miniatura(this.ruta, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        ruta,
        width: 52,
        height: 52,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: 52,
          height: 52,
          color: Colors.deepPurple,
          alignment: Alignment.center,
          child: const Icon(Icons.celebration),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------
// Pantalla principal con barra de navegación
// ---------------------------------------------------------------

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  int _tab = 0;

  static const List<Widget> _paginas = [
    PartyPage(),
    LugaresPage(),
    BebidasPage(),
    JuegosPage(),
    EquipoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RecuParty R1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            tooltip: 'Avisos',
            onPressed: () => mostrarAviso(context, 'No tienes avisos nuevos'),
          ),
        ],
      ),
      body: IndexedStack(index: _tab, children: _paginas),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _tab,
        onDestinationSelected: (i) => setState(() => _tab = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.celebration_outlined),
            selectedIcon: Icon(Icons.celebration),
            label: 'Party',
          ),
          NavigationDestination(
            icon: Icon(Icons.place_outlined),
            selectedIcon: Icon(Icons.place),
            label: 'Lugares',
          ),
          NavigationDestination(
            icon: Icon(Icons.local_bar_outlined),
            selectedIcon: Icon(Icons.local_bar),
            label: 'Bebidas',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_esports_outlined),
            selectedIcon: Icon(Icons.sports_esports),
            label: 'Juegos',
          ),
          NavigationDestination(
            icon: Icon(Icons.groups_outlined),
            selectedIcon: Icon(Icons.groups),
            label: 'Equipo',
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------
// Pestaña 1: Party (organiza tu fiesta)
// ---------------------------------------------------------------

class PartyPage extends StatefulWidget {
  const PartyPage({super.key});

  @override
  State<PartyPage> createState() => _PartyPageState();
}

class _PartyPageState extends State<PartyPage> {
  static const List<String> _tipos = ['Casa', 'Salón', 'Alberca', 'Terraza'];

  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _fecha = TextEditingController();
  final TextEditingController _invitados = TextEditingController();
  final TextEditingController _presupuesto = TextEditingController();

  String _tipo = 'Casa';
  bool _boletos = false;

  @override
  void dispose() {
    _nombre.dispose();
    _fecha.dispose();
    _invitados.dispose();
    _presupuesto.dispose();
    super.dispose();
  }

  void _crear() {
    final nombre = _nombre.text.trim();
    if (nombre.isEmpty) {
      mostrarAviso(context, 'Ponle nombre a tu party');
      return;
    }
    mostrarAviso(context, 'Party "$nombre" lista (es solo una vista de ejemplo)');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Imagen('assets/images/party.jpg', alto: 190),
        const SizedBox(height: 14),
        const Text(
          'Organiza tu party',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        const Text(
          'Lugar, bebidas, música y quién hace qué, todo en un solo lugar.',
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _nombre,
          decoration: const InputDecoration(
            labelText: 'Nombre de la fiesta',
            prefixIcon: Icon(Icons.edit),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _fecha,
          decoration: const InputDecoration(
            labelText: 'Fecha y hora',
            hintText: 'Ej. sábado 9 pm',
            prefixIcon: Icon(Icons.event),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _invitados,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Invitados',
                  prefixIcon: Icon(Icons.people),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: _presupuesto,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Presupuesto',
                  prefixIcon: Icon(Icons.attach_money),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const Titulo('¿Dónde va a ser?'),
        Wrap(
          spacing: 8,
          children: [
            for (final t in _tipos)
              ChoiceChip(
                label: Text(t),
                selected: _tipo == t,
                onSelected: (_) => setState(() => _tipo = t),
              ),
          ],
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Vender boletos'),
          subtitle: const Text('Cobra la entrada para juntar para los gastos'),
          value: _boletos,
          onChanged: (v) => setState(() => _boletos = v),
        ),
        const SizedBox(height: 8),
        FilledButton.icon(
          onPressed: _crear,
          icon: const Icon(Icons.celebration),
          label: const Text('Crear party'),
        ),
        const SizedBox(height: 8),
        OutlinedButton.icon(
          onPressed: () => mostrarAviso(context, 'Invitación copiada (ejemplo)'),
          icon: const Icon(Icons.share),
          label: const Text('Compartir invitación'),
        ),
        const SizedBox(height: 16),
        const Card(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(Icons.info_outline),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Solo para mayores de 18 años. Toma con medida y, si '
                    'tomas, no manejes.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------
// Pestaña 2: Lugares (salones, albercas y DJs)
// ---------------------------------------------------------------

class LugaresPage extends StatefulWidget {
  const LugaresPage({super.key});

  @override
  State<LugaresPage> createState() => _LugaresPageState();
}

class _LugaresPageState extends State<LugaresPage> {
  String _categoria = 'Salones';

  List<Lugar> get _lista {
    switch (_categoria) {
      case 'Albercas':
        return albercas;
      case 'DJs':
        return djs;
      default:
        return salones;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SegmentedButton<String>(
          showSelectedIcon: false,
          segments: const <ButtonSegment<String>>[
            ButtonSegment<String>(
              value: 'Salones',
              label: Text('Salones'),
              icon: Icon(Icons.meeting_room),
            ),
            ButtonSegment<String>(
              value: 'Albercas',
              label: Text('Albercas'),
              icon: Icon(Icons.pool),
            ),
            ButtonSegment<String>(
              value: 'DJs',
              label: Text('DJs'),
              icon: Icon(Icons.headphones),
            ),
          ],
          selected: {_categoria},
          onSelectionChanged: (s) => setState(() => _categoria = s.first),
        ),
        const SizedBox(height: 8),
        const Text(
          'Lugares y precios de ejemplo.',
          style: TextStyle(fontSize: 12, color: Colors.white70),
        ),
        for (final l in _lista)
          Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Imagen(l.imagen, alto: 140, radio: 0),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l.nombre,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(l.detalle),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              l.precio,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFF80AB),
                              ),
                            ),
                          ),
                          FilledButton.tonal(
                            onPressed: () => mostrarAviso(
                              context,
                              'Cotización pedida a ${l.nombre} (ejemplo)',
                            ),
                            child: const Text('Cotizar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

// ---------------------------------------------------------------
// Pestaña 3: Bebidas y recetas
// ---------------------------------------------------------------

class BebidasPage extends StatelessWidget {
  const BebidasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Imagen('assets/images/bebidas.jpg', alto: 150),
        const Titulo('Bebidas populares'),
        const Text(
          'Precios aproximados, de ejemplo.',
          style: TextStyle(fontSize: 12, color: Colors.white70),
        ),
        const SizedBox(height: 8),
        Card(
          child: Column(
            children: [
              for (final b in bebidas)
                ListTile(
                  leading: Icon(b.icono),
                  title: Text(b.nombre),
                  subtitle: Text(b.presentacion),
                  trailing: Text(
                    b.precio,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const Titulo('Recetas'),
        for (final r in recetas)
          Card(
            child: ExpansionTile(
              leading: Miniatura(r.imagen),
              title: Text(r.nombre),
              childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Imagen(r.imagen, alto: 170),
                const SizedBox(height: 12),
                const Text(
                  'Ingredientes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                for (final i in r.ingredientes) Text('• $i'),
                const SizedBox(height: 10),
                const Text(
                  'Preparación',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(r.pasos),
              ],
            ),
          ),
        const SizedBox(height: 8),
        const Text(
          'Solo para mayores de 18 años. Toma con medida.',
          style: TextStyle(fontSize: 12, color: Colors.white70),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------
// Pestaña 4: Juegos y playlist
// ---------------------------------------------------------------

class JuegosPage extends StatefulWidget {
  const JuegosPage({super.key});

  @override
  State<JuegosPage> createState() => _JuegosPageState();
}

class _JuegosPageState extends State<JuegosPage> {
  final Set<String> _agregadas = {};

  void _alternar(String titulo) {
    setState(() {
      if (_agregadas.contains(titulo)) {
        _agregadas.remove(titulo);
      } else {
        _agregadas.add(titulo);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Imagen('assets/images/juegos.jpg', alto: 150),
        const Titulo('Dinámicas para la fiesta'),
        for (final d in dinamicas)
          Card(
            child: ExpansionTile(
              leading: Miniatura(d.imagen),
              title: Text(d.nombre),
              subtitle: Text(d.jugadores),
              childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Imagen(d.imagen, alto: 170),
                const SizedBox(height: 12),
                Text(d.reglas),
              ],
            ),
          ),
        const SizedBox(height: 20),
        const Imagen('assets/images/playlist.jpg', alto: 150),
        const Titulo('Playlist de la fiesta'),
        const Text(
          'Toca el + para agregar canciones a tu playlist.',
          style: TextStyle(fontSize: 12, color: Colors.white70),
        ),
        const SizedBox(height: 8),
        Card(
          child: Column(
            children: [
              for (final c in canciones)
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.music_note)),
                  title: Text(c.titulo),
                  subtitle: Text('${c.artista} · ${c.genero}'),
                  trailing: IconButton(
                    icon: Icon(
                      _agregadas.contains(c.titulo)
                          ? Icons.check_circle
                          : Icons.add_circle_outline,
                    ),
                    onPressed: () => _alternar(c.titulo),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'En tu playlist: ${_agregadas.length} canciones',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------
// Pestaña 5: Equipo (quién organiza qué) y boletos
// ---------------------------------------------------------------

class Tarea {
  String nombre;
  String quien;
  bool hecha;
  Tarea(this.nombre, this.quien, {this.hecha = false});
}

class EquipoPage extends StatefulWidget {
  const EquipoPage({super.key});

  @override
  State<EquipoPage> createState() => _EquipoPageState();
}

class _EquipoPageState extends State<EquipoPage> {
  final TextEditingController _nueva = TextEditingController();
  final TextEditingController _precio = TextEditingController();
  final TextEditingController _cantidad = TextEditingController();

  final List<Tarea> _tareas = [
    Tarea('Conseguir el lugar', 'Ana', hecha: true),
    Tarea('Comprar las bebidas', 'Luis'),
    Tarea('Contratar DJ y hacer la playlist', 'Pepe'),
    Tarea('Hielos y vasos', 'Dani'),
    Tarea('Vender los boletos', 'Mari'),
    Tarea('Limpiar al final', 'Todos'),
  ];

  @override
  void dispose() {
    _nueva.dispose();
    _precio.dispose();
    _cantidad.dispose();
    super.dispose();
  }

  void _agregar() {
    final texto = _nueva.text.trim();
    if (texto.isEmpty) return;
    setState(() {
      _tareas.add(Tarea(texto, 'Por asignar'));
      _nueva.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Imagen('assets/images/equipo.jpg', alto: 150),
        const Titulo('¿Quién organiza qué?'),
        Card(
          child: Column(
            children: [
              for (final t in _tareas)
                CheckboxListTile(
                  secondary: CircleAvatar(child: Text(t.quien[0])),
                  title: Text(
                    t.nombre,
                    style: TextStyle(
                      decoration:
                          t.hecha ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  subtitle: Text('Responsable: ${t.quien}'),
                  value: t.hecha,
                  onChanged: (v) => setState(() => t.hecha = v ?? false),
                ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _nueva,
                decoration: const InputDecoration(
                  labelText: 'Nueva tarea',
                  prefixIcon: Icon(Icons.add_task),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (_) => _agregar(),
              ),
            ),
            const SizedBox(width: 8),
            FilledButton(onPressed: _agregar, child: const Text('Agregar')),
          ],
        ),
        const Titulo('Venta de boletos'),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFE91E63), Color(0xFF7C4DFF)],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Row(
            children: [
              Icon(Icons.confirmation_number, size: 44, color: Colors.white),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Boleto de ejemplo',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      r'RecuParty R1 · Sábado 9 pm · Entrada $80',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _precio,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Precio del boleto',
                  prefixIcon: Icon(Icons.attach_money),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: _cantidad,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Cuántos boletos',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        FilledButton.icon(
          onPressed: () => mostrarAviso(context, 'Boletos generados (ejemplo)'),
          icon: const Icon(Icons.qr_code_2),
          label: const Text('Generar boletos'),
        ),
        const SizedBox(height: 16),
        const Text(
          r'Vendidos: 18 de 50 · Recaudado: $1,440',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: 18 / 50,
          minHeight: 10,
          borderRadius: BorderRadius.circular(8),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
