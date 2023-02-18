

class Location {

  final double lat;
  final double lng;

 const Location ( this.lat, this.lng);
}

main(List<String> args) {

  final sanFrancisco1 = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

  // print( sanFrancisco2 == sanFrancisco3); 

  const sanFrancisco4 = const Location(18.2323, 39.9000);
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);

  const berlin = const Location(18.2323, 39.9001);

  print( sanFrancisco5 == sanFrancisco6); 
  print( berlin == sanFrancisco6); 
}