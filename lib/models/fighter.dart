enum EventType {
  birth,
  education,
  movement,
  milestone,
  arrest,
  death,
  achievement,
}

class EventCoordinates {
  const EventCoordinates({required this.lat, required this.lng});

  final double lat;
  final double lng;
}

class TimelineEvent {
  const TimelineEvent({
    required this.id,
    required this.year,
    required this.title,
    required this.description,
    required this.type,
    this.month,
    this.location,
    this.quote,
    this.coordinates,
  });

  final String id;
  final int year;
  final String? month;
  final String title;
  final String description;
  final EventType type;
  final String? location;
  final String? quote;
  final EventCoordinates? coordinates;
}

class Chapter {
  const Chapter({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.yearRange,
    required this.events,
  });

  final String id;
  final String title;
  final String subtitle;
  final String yearRange;
  final List<TimelineEvent> events;
}

class Fighter {
  const Fighter({
    required this.id,
    required this.name,
    required this.title,
    required this.born,
    required this.died,
    required this.birthYear,
    required this.deathYear,
    required this.portraitAsset,
    required this.shortBio,
    required this.chapters,
    this.quote,
  });

  final String id;
  final String name;
  final String title;
  final String born;
  final String died;
  final int birthYear;
  final int deathYear;
  final String portraitAsset;
  final String? quote;
  final String shortBio;
  final List<Chapter> chapters;
}
