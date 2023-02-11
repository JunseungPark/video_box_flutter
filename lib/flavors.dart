enum Flavor {
  JIUJITSU,
  HISTORY,
  ETC,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.JIUJITSU:
        return '지식의 창고';
      case Flavor.HISTORY:
        return '지식의 창고';
      case Flavor.ETC:
        return '지식의 창고';
      default:
        return 'title';
    }
  }

}
