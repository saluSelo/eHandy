// ignore_for_file: public_member_api_docs, sort_constructors_first
class onBoarding {
  String image;
  String title;
  String subtitle;
  onBoarding({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

final onBoardingList = [
  //created list of onBoarding object above, its not hardcoded anymore !!
  onBoarding(
      image: 'assets/images/home1.png',
      title: 'We Welcome You to eHandy ',
      subtitle: 'a place for hand-made stylish products'),
  onBoarding(
      image: 'assets/images/cart.png',
      title: 'Buy Anything You Like',
      subtitle: 'all of the products made with love '),

  onBoarding(
      image: 'assets/images/shopping.png',
      title: 'Stunning Offers',
      subtitle: 'our Offers and prices are very catchy '),

  onBoarding(
      image: 'assets/images/fast.png',
      title: 'Reilable Deleviry ',
      subtitle: 'we will get to you in no time'),
];
