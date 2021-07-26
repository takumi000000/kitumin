# ストーリーのセーブデータ

File.open("./action/.save", "r+", encoding: "utf-8") do |file|
  @sto = file.read
  @save = @sto.to_i
  File.open("./action/.save", "w+") do |f|
    if @save == 0
      @save = 1
    elsif @save >= 11
      @save = 1
    end
    f.puts @save.to_i
    @load = @save.to_i
    puts "セーブを完了しました。次回は#{@load}を開きます。"
end
end

# オフラインきつつきが終わった後に@autoSaveを1にする。 +++
# -----------------------------------------------------
$story = @load
@hakai = @load


def continue_y
  File.open("./action/.save", "r+", encoding: "utf-8") do |file|
    @sto = file.read
    @save = @sto.to_i + 1
    File.open("./action/.save", "w+") do |f|
      f.puts @save.to_i
      @load = @save.to_i
      $story = @load
      puts "save: #{@load}"
      @hakai += 1
    end
  end
  $sel_music = $sel_music.to_i + 1
  $music_on = true
  $chapter = 1
end

def continue_n
  File.open("./action/.save", "r+", encoding: "utf-8") do |file|
    @sto = file.read
    @save = @sto.to_i + 1
    File.open("./action/.save", "w+") do |f|
      f.puts @save.to_i
      @load = @save.to_i
      puts "save: #{@load}"
      @hakai += 1
    end
  end
  $story = @load
  $sel_music = $sel_music.to_i + 1
  $music_on = true
  $chapter = 0
end