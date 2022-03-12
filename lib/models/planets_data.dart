import "package:hack_tues_app/models/planet.dart";

List<Planet> planets = [
  Planet(
    position: 1,
    name: "Mercury",
    sub: "Swift Planet",
    iconImage: "assets/images/mercury.png",
    description:
        "Zipping around the sun in only 88 days, Mercury is the closest planet to the sun, and it's also the smallest, only a little bit larger than Earth's moon. Because its so close to the sun (about two-fifths the distance between Earth and the sun), Mercury experiences dramatic changes in its day and night temperatures: Day temperatures can reach a scorching 840  F (450 C), which is hot enough to melt lead. Meanwhile on the night side, temperatures drop to minus 290 F (minus 180 C).",
    images: [
      "https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg",
      "https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg",
      "https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png",
      "https://www.nasa.gov/sites/default/files/thumbnails/image/pia03101-mariner-10-mercury.png"
    ],
  ),
  Planet(
    position: 2,
    name: "Venus",
    sub: "Evening Star",
    iconImage: "assets/images/venus.png",
    description:
        "The second planet from the sun, Venus is Earth's twin in size. Radar images beneath its atmosphere reveal that its surface has various mountains and volcanoes. But beyond that, the two planets couldn't be more different. Because of its thick, toxic atmosphere that's made of sulfuric acid clouds, Venus is an extreme example of the greenhouse effect. It's scorching-hot, even hotter than Mercury. The average temperature on Venus' surface is 900 F (465 C). At 92 bar, the pressure at the surface would crush and kill you. And oddly, Venus spins slowly from east to west, the opposite direction of most of the other planets.",
    images: [
      'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
      'https://static.scientificamerican.com/sciam/cache/file/BF78B3E0-98F8-44B7-83773217D9B2141F.jpg',
      'https://media.wired.com/photos/5fd7d0d255d4309f339343b4/master/pass/Sec_Venus_PIA00106.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOtcLX06ZaPIKYYyTNh0ePJK84ThDFQV0xxg&usqp=CAU'
    ],
  ),
  Planet(
    position: 3,
    name: "Earth",
    sub: "Blue Planet",
    iconImage: "assets/images/earth.png",
    description:
        "The third planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).",
    images: [
      'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
      'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
      'https://cdn.mos.cms.futurecdn.net/VdW4TCfoctFYDSXNSnkoAf-1200-80.jpg'
    ],
  ),
  Planet(
    position: 4,
    name: "Mars",
    sub: "Red Planet",
    iconImage: "assets/images/mars.png",
    description:
        "The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust. This dust is made of iron oxides, giving the planet its iconic red hue. Mars shares similarities with Earth: It is rocky, has mountains, valleys and canyons, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms.",
    images: [
      'https://starwalk.space/gallery/images/mars-the-ultimate-guide/1920x1080.jpg',
      'https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2020/04/mars_landscape/21916769-2-eng-GB/Mars_landscape_pillars.jpg',
      'https://images.news18.com/ibnlive/uploads/2021/09/no-water-on-mars-16323900954x3.png',
      'https://www.openaccessgovernment.org/wp-content/uploads/2021/04/dreamstime_xxl_121672573-scaled.jpg'
    ],
  ),
  Planet(
    position: 5,
    name: "Jupiter",
    sub: "Gas Giant",
    iconImage: "assets/images/jupiter.png",
    description:
        "The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.",
    images: [
      'https://cdn.mos.cms.futurecdn.net/yyonzpUYYkQNX8corCxeyD.jpeg',
      'http://cdn.spacetelescope.org/archives/images/screen/heic2017a.jpg',
      'https://cdn.vox-cdn.com/thumbor/3hRXvyoAnTO45HJIl1_VloqMNSA=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/10842939/pia21974.jpg',
      'https://cdn.mos.cms.futurecdn.net/jnBApu9Wyk2maUjzQkuWv7.jpg'
    ],
  ),
  Planet(
    position: 6,
    name: "Saturn",
    sub: "Ringed Planet",
    iconImage: "assets/images/saturn.png",
    description:
        "The sixth planet from the sun, Saturn is known most for its rings. When polymath Galileo Galilei first studied Saturn in the early 1600s, he thought it was an object with three parts: a planet and two large moons on either side. Not knowing he was seeing a planet with rings, the stumped astronomer entered a small drawing — a symbol with one large circle and two smaller ones — in his notebook, as a noun in a sentence describing his discovery. More than 40 years later, Christiaan Huygens proposed that they were rings. The rings are made of ice and rock and scientists are not yet sure how they formed. The gaseous planet is mostly hydrogen and helium and has numerous moons.",
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/c/c7/Saturn_during_Equinox.jpg',
      'https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2019/03/saturn_at_equinox/19304018-1-eng-GB/Saturn_at_equinox_pillars.jpg',
      'https://www.refinery29.com/images/10414427.jpg?crop=40%3A21',
      'https://starwalk.space/gallery/images/saturn-planet-guide/1920x1080.jpg'
    ],
  ),
  Planet(
    position: 7,
    name: "Uranus",
    sub: "Bulls-eye Planet",
    iconImage: "assets/images/uranus.png",
    description:
        "The seventh planet from the sun, Uranus is an oddball. It has clouds made of hydrogen sulfide, the same chemical that makes rotten eggs smell so foul. It rotates from east to west like Venus. But unlike Venus or any other planet, its equator is nearly at right angles to its orbit — it basically orbits on its side. Astronomers believe an object twice the size of Earth collided with Uranus roughly 4 billion years ago, causing Uranus to tilt. That tilt causes extreme seasons that last 20-plus years, and the sun beats down on one pole or the other for 84 Earth-years at a time.",
    images: [
      'https://res.cloudinary.com/graham-media-group/image/upload/f_auto/q_auto/c_scale,w_1920/v1/media/gmg/2SCUFD6Q4FEDXKP2LIYOWIWVHM.jpg?_a=ATABlAA0',
      'http://www.nasa.gov/sites/default/files/thumbnails/image/pia18182-uranus-voyager1.png',
      'https://preview.redd.it/scrzo1bxrjf41.jpg?auto=webp&s=b9dde2ed1fd5049d478d04f943adb6c04cc6aff6',
    ],
  ),
  Planet(
    position: 8,
    name: "Neptune",
    sub: "Bulls-eye Planet",
    iconImage: "assets/images/neptune.png",
    description:
        "The seventh planet from the sun, Uranus is an oddball. It has clouds made of hydrogen sulfide, the same chemical that makes rotten eggs smell so foul. It rotates from east to west like Venus. But unlike Venus or any other planet, its equator is nearly at right angles to its orbit — it basically orbits on its side. Astronomers believe an object twice the size of Earth collided with Uranus roughly 4 billion years ago, causing Uranus to tilt. That tilt causes extreme seasons that last 20-plus years, and the sun beats down on one pole or the other for 84 Earth-years at a time.",
    images: [
      'https://res.cloudinary.com/graham-media-group/image/upload/f_auto/q_auto/c_scale,w_1920/v1/media/gmg/2SCUFD6Q4FEDXKP2LIYOWIWVHM.jpg?_a=ATABlAA0',
      'http://www.nasa.gov/sites/default/files/thumbnails/image/pia18182-uranus-voyager1.png',
      'https://preview.redd.it/scrzo1bxrjf41.jpg?auto=webp&s=b9dde2ed1fd5049d478d04f943adb6c04cc6aff6',
    ],
  ),
];
