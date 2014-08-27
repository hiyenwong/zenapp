module BloodPressuresHelper
  def map(psys,pdias)
    pdias + ((psys - pdias)/3)
  end

  def ppulse(psys,pdias)
    psys - pdias
  end
end
