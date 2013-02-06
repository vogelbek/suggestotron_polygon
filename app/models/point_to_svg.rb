class PointToSvg
  

  def initialize(topic_xys)
    @topic_xys = topic_xys
    @topic_xys_svg = ""
    svg_convertify
  end

  def to_s
    @topic_xys_svg
  end

private
  
  def svg_convertify
    @topic_xys.each do |topic, xy|
      @topic_xys_svg += "#{xy[:x]},#{xy[:y]} "
    end
  end
end