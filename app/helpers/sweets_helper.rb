module SweetsHelper

  def price(sweet)
    if sweet.free?
      "Free"
    else
      number_to_currency(sweet.price, precision: 0)
    end
  end

  def day_and_time(sweet)
    sweet.validity.strftime("%B %d at %I:%M %P")
  end
end
