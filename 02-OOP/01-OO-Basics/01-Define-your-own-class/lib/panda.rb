class Panda
  attr_accessor :weight, :height

  def initialize(weight, height, eye_color)
    @panda_died = true
    @panda_weight = weight
    @panda_height = height
    @panda_eye = eye_color
  end
  def crucified?
    return @panda_died
  end
  def born_again
    @panda_died = false
  end
end

jojo = Panda.new(80, 180, "red")

jojo.crucified?
