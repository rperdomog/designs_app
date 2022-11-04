import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/bariloche.jpg')),
        const Title(),
        const _ButtonSection(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: const Text(
            'Ex irure mollit qui quis in velit exercitation minim adipisicing dolore minim elit dolor et. Excepteur fugiat fugiat ea non dolor commodo amet laboris exercitation ullamco ex aliqua Lorem. Officia aliquip ad sit dolor dolor officia sint voluptate et sint esse dolor minim. Aute ex veniam culpa pariatur et non cillum reprehenderit ut sunt.',
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Bariloche, Argentine Patagonia',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              Text(
                'Lopez Mountain, hiking destiny',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star_outlined,
            color: Colors.green,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CustomButton(
            icon: Icons.phone,
            text: 'Call',
          ),
          CustomButton(
            icon: Icons.location_pin,
            text: 'Location',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(text),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.green,
          ),
          const SizedBox(height: 5),
          Text(text, style: const TextStyle(color: Colors.black45))
        ],
      ),
    );
  }
}
