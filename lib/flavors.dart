enum Flavor {
  JIUJITSU,
  HISTORY,
  ECT,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.JIUJITSU:
        return '지식창고';
      case Flavor.HISTORY:
        return '지식창고';
      case Flavor.ECT:
        return '지식창고';
      default:
        return 'title';
    }
  }

}
