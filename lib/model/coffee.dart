class Coffee {
  String title;
  String subtitle;
  String desc;
  String imageAsset;
  String rating;
  String price;

  Coffee({
    required this.title,
    required this.subtitle,
    required this.desc,
    required this.imageAsset,
    required this.rating,
    required this.price,
  });
}

var coffeeList = [
    Coffee(
      title: 'Americano',
      subtitle: 'With Almond Milk',
      desc: '''
            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
            when an unknown printer took a galley of type and scrambled it to make a type 
            specimen book. It has survived not only five centuries, but also the leap into 
            electronic typesetting, remaining essentially unchanged. It was popularised in 
            the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
            and more recently with desktop publishing software like Aldus PageMaker including 
            versions of Lorem Ipsum.''',
      imageAsset: 'lib/images/americano.jpg',
      rating: '4.5',
      price: '15.000'
    ),
    Coffee(
    title: 'Caffe Latte',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/caffe_latte.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Cappuccino',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/cappuccino.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Caramel Macchiato',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/caramel_macchiato.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Dolce Latte',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/dolce_latte.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Espresso',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/espresso.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Iced Americano',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/iced_americano.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Iced Caffe Latte',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/iced_caffe_latte.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Iced Caramel Macchiato',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/iced_caramel_macchiato.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Iced Dolce Latte',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/iced_dolce_latte.jpg',
    rating: '4.5',
    price: '15.000'
  ),
    Coffee(
    title: 'Iced Espresso',
    subtitle: 'With Almond Milk',
    desc: '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type 
          specimen book. It has survived not only five centuries, but also the leap into 
          electronic typesetting, remaining essentially unchanged. It was popularised in 
          the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
          and more recently with desktop publishing software like Aldus PageMaker including 
          versions of Lorem Ipsum.''',
    imageAsset: 'lib/images/iced_espresso.jpg',
    rating: '4.5',
    price: '15.000'
  ),
];