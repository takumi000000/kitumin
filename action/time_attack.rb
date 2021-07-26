clear_time = {"BiziTaro" => 40.00, "Matsurou" => 45.00, "Daisenko" => 48.00}

def clear_time_view
  3.times do |ct|
    Window.draw_font_ex(100,100, clear_time(1), "#{(ct + 1)}  #{clear_time(ct)}", color: C_WHITE)
    ct += 1
  end
end