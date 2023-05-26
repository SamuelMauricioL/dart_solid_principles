class DetailEntity {
  final String id;
  final String title;
  final String description;
  final String thumbnail;

  DetailEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnail,
  });
}

abstract class DetailRepository {
  Future<List<DetailEntity>> getComics(String id);
  Future<List<DetailEntity>> getEvents(String id);
  Future<List<DetailEntity>> getSeries(String id);
  Future<List<DetailEntity>> getStories(String id);
}

class DetailRepositoryImpl implements DetailRepository {
  @override
  Future<List<DetailEntity>> getComics(String id) {
    // TODO: implement getComics
    throw UnimplementedError();
  }

  @override
  Future<List<DetailEntity>> getEvents(String id) {
    // TODO: implement getEvents
    throw UnimplementedError();
  }

  @override
  Future<List<DetailEntity>> getSeries(String id) {
    // TODO: implement getSeries
    throw UnimplementedError();
  }

  @override
  Future<List<DetailEntity>> getStories(String id) {
    // TODO: implement getStories
    throw UnimplementedError();
  }
}
