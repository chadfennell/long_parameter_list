
# A user climbs a route. This is a climb
class Climb
  # User Rating = How did this climb go for the given user?
  # Route Ratings = All the ratings of all the users.
  # Comments = comments on how the climb went
  # Route Class Level
  attr_reader :route_name, :route_ratings, :route_class_level, :climber_name,  :climb_comments, :climb_rating, :route_coordinates
  def initialize(route_name, route_ratings, route_class_level, climber_name, climb_comments, climb_rating, route_coordinates)
    @route_name        = route_name
    @route_ratings     = route_ratings
    @route_class_level = route_class_level
    @climber_name      = climber_name
    @climb_comments    = climb_comments
    @climb_rating      = climb_rating
    @route_coordinates = route_coordinates
  end

  def route_average_rating
    route_ratings.inject{ |sum, el| sum + el }.to_f / route_ratings.size
  end

  def report
    "Climber Name: #{climber_name} \n" \
    "Route Name: #{route_name} \n" \
    "Route Class: #{route_class_level} \n" \
    "Route Average Rating: #{route_average_rating} \n" \
    "Route Coordinates: #{route_coordinates} \n" \
    "Climb Rating: #{climb_rating} \n" \
    "Climb Comments: #{climb_comments}" \
  end
end