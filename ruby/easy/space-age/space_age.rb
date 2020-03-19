class SpaceAge
  attr_reader :on_earth,
              :on_mercury,
              :on_venus,
              :on_mars,
              :on_jupiter,
              :on_saturn,
              :on_uranus,
              :on_neptune

  def initialize(space_sec)
    @space_sec = space_sec.to_f
    @on_earth = @space_sec / 31557600
    @on_mercury = @on_earth * (1 / 0.2408467)
    @on_venus = on_earth * (1 / 0.61519726)
    @on_mars = on_earth * (1 / 1.8808158)
    @on_jupiter = on_earth * (1 / 11.862615)
    @on_saturn = on_earth * (1 / 29.447498)
    @on_uranus = on_earth * (1 / 84.016846)
    @on_neptune = on_earth * (1 / 164.79132)
  end
end