class Travel {
  String name;
  String address;
  String img;

  Travel(this.name, this.address, this.img);

  static List<Travel> generatedTravelBlog() {
    return [
      Travel('Dhaka', 'Bangladesh', 'Nature/Dhaka.jpg'),
      Travel('Chittagoan', 'Bangladesh', 'Nature/Chittagoan.jpg'),
      Travel('CoxBazar', 'Bangladesh', 'Nature/CoxsBazar.jpg'),
      Travel('Santmartin', 'Bangladesh', 'Nature/Santmartin.jpg'),
      Travel('Cumilla', 'Bangladesh', 'Nature/Cumilla.jpg'),
      Travel('Shylet', 'Bangladesh', 'Nature/Shylet.jpg')
    ];
  }
}
