Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: icon,
      ),
    )