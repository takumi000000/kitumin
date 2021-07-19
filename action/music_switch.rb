def music_switch
  if $music_on == true
    if $chapter == 0
      $musics[0].play()
    end
    if $sel_music == 1
      $musics[1].play()
    end
    if $sel_music == 2
      $musics[2].play()
    end
    if $sel_music == 3
      $musics[3].play()
    end
    if $sel_music == 4
      $musics[4].play()
    end
    if $sel_music == 5
      $musics[5].play()
    end
    if $sel_music == 6
      $musics[6].play()
    end
    if $sel_music == 7
      $musics[7].play()
    end
    if $sel_music == 8
      $musics[8].play()
    end
    if $sel_music == 9
      $musics[9].play()
    end
    $music_on = false
  end
end