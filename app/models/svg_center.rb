class SvgCenter
  def initialize(topics)
    @topics = topics
  end

  def largest_topic
    @topics.collect{|t| t.votes.count}.max.to_f
  end

  def svg_canvas_size
    largest_topic * 2
  end
end