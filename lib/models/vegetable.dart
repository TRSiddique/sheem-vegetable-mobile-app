class Vegetable {
  final String name;
  final String scientificName;
  final String season;
  final String benefits;

  Vegetable({
    required this.name,
    required this.scientificName,
    required this.season,
    required this.benefits,
  });
}

final sheem = Vegetable(
  name: "শিম",
  scientificName: "Lablab purpureus",
  season: "শীতকাল (অক্টোবর - মার্চ)",
  benefits: "শিমে ভিটামিন A, C, ক্যালসিয়াম ও লৌহ রয়েছে। এটি রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।",
);
