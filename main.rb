require 'dxruby'
require './action/save'
require './action/musics'
require './action/write_name'
require './action/music_switch'
require './sprits/main_character'
require './story/story1'
require './story/story2'
require './story/story3'
require './story/story4'
require './story/story5'
require './story/story6'
require './story/story7'
require './story/story8'
require './story/story9'
require './story/story10'

# 画面サイズ(一応フルサイズ)
Window.height = 1080
Window.width = 1280

# 真ん中を定義
center = {:w => (Window.width / 2), :h => (Window.height / 2)}

# マウスの衝突判定
mouse = Sprite.new(0, 0, Image.new(1, 1))

# フォントサイズ
font = Font.new(160)
font2 = Font.new(50)
font3 = Font.new(100)
$font = Font.new(50)

# ユーザーネーム
@userName = " "

# 画面遷移
$chapter = 0

background0 = Sprite.new(0, 0, Image.load("images/back0.png"))

# (--1- あとでx, yを調整 -１--)
btn_story = Sprite.new(-300, 400, Image.load("images/book_manu.png"))
btn_story.scale_x = 0.3
btn_story.scale_y = 0.3
btn_story.z = +1

# (--１- あとでx, yを調整 -１--)
btn_timer = Sprite.new(-300, 650, Image.load("images/timer_manu.png"))
btn_timer.scale_x = 0.3
btn_timer.scale_y = 0.3
btn_timer.z = +1

btn_setting = Sprite.new(300, 0, Image.load("images/setting.png"))
btn_setting.scale_x = 0.3
btn_setting.scale_y = 0.3
btn_setting.z = +2

# タイムアタック
atk_start = -1

@byou = 0
@byou_cnt = 0

@flo1_byou = 0
@flo1_byou_cnt = 0

@flo2_byou = 0
@flo2_byou_cnt = 0


# ストーリー別背景
@cnt = 0

background_s1 = Sprite.new(0, 0, Image.load("images/stage1.png"))
background_s1.z = -1
background_s2 = Sprite.new(0, 0, Image.load("images/stage1.png"))
background_s2.z = -1
background_s3 = Sprite.new(0, 0, Image.load("images/背景3岩.png"))
background_s3.z = -1
background_s4 = Sprite.new(0, 0, Image.load("images/背景4住宅街.png"))
background_s4.z = -1
background_s5 = Sprite.new(0, 0, Image.load("images/背景5ビル.png"))
background_s5.z = -1
background_s6 = Sprite.new(0, 0, Image.load("images/背景6スカイツリー.png"))
background_s6.z = -1
background_s7 = Sprite.new(0, 0, Image.load("images/背景7エレベスト.png"))
background_s7.z = -1
background_s8 = Sprite.new(0, 0, Image.load("images/背景8,9宇宙.png"))
background_s8.z = -1
background_s9 = Sprite.new(0, 0, Image.load("images/背景8,9宇宙.png"))
background_s9.z = -1


# きつつき
main_char = MainCharcter.new()
main_char.z = +2


if @hakai == 1
# 破壊対象のオブジェクト ステージ1
obje_x = 250
obje_y = -50
object = Sprite.new(obje_x, obje_y, Image.load("images/stage1-1木.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage1-2木2.png"))
main_char.z = +1

elsif @hakai == 2
# 破壊対象のオブジェクト ステージ2
obje_x = 280
obje_y = 385
object = Sprite.new(obje_x, obje_y, Image.load("images/stage2-1木.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage2-2木.png"))
main_char.z = +1

elsif @hakai == 3
# 破壊対象のオブジェクト 3
obje_x = 200
obje_y = 380
object = Sprite.new(obje_x, obje_y, Image.load("images/stage3-1岩.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage3-2岩.png"))
main_char.z = +1

elsif @hakai == 4
# 破壊対象のオブジェクト 4
obje_x = 300
obje_y = 100
object = Sprite.new(obje_x, obje_y, Image.load("images/stage4-1家.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage4-2家.png"))
main_char.z = +1

elsif @hakai == 5
# 破壊対象のオブジェクト 5
obje_x = 200
obje_y = 330
object = Sprite.new(obje_x, obje_y, Image.load("images/stage5-1ビル.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage5-2ビル.png"))
main_char.z = +1

elsif @hakai == 6
# 破壊対象のオブジェクト 6
obje_x = 200
obje_y = 80
object = Sprite.new(obje_x, obje_y, Image.load("images/stage6-1スカイツリー.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage6-2スカイツリー.png"))
main_char.z = +1

elsif @hakai == 7
# 破壊対象のオブジェクト 7
obje_x = 220
obje_y = 395
object = Sprite.new(obje_x, obje_y, Image.load("images/stage7-1山.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage7-2山.png"))
main_char.z = +1

elsif @hakai == 8
# 破壊対象のオブジェクト 8
obje_x = 250
obje_y = 250
object = Sprite.new(obje_x, obje_y, Image.load("images/stage8-1地球.png"))
object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage8-2地球.png"))
main_char.z = +1

elsif @hakai == 9
  # 破壊対象のオブジェクト 9
  obje_x = 250
  obje_y = 250
  object = Sprite.new(obje_x, obje_y, Image.load("images/stage9-1隕石.png"))
  object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage9-2隕石.png"))
  main_char.z = +1
end

# 破壊対象のオブジェクト
obje_x = 100
obje_y = 250
main_char.z = +1
hp_bar = Image.new(250, 100).box_fill(0, 0, 250, 32, [250, 250, 250])

# クリックカウント
@click = 0

# $chapter 4
skin = Sprite.new(50, 300, Image.load("./images/character_select_icon.png"))
skin.z = +1


$music_on = true

$sel_music = 0

Window.loop do

  music_switch()

  mouse.x = Input.mouse_pos_x()
  mouse.y = Input.mouse_pos_y()


  # マウスカーソルのモードクリックの衝突判定
  if $chapter == 0
    if !mouse.check(btn_story).empty?
      # chapterを移動する
        $chapter = 1 if Input.mousePush?(M_LBUTTON)
    end
  
    if !mouse.check(btn_timer).empty?
      # chapterを移動する
      $chapter = 5 if Input.mousePush?(M_LBUTTON)
    end
  
    if !mouse.check(btn_setting).empty?
      # chapterを移動する
      $chapter = 4 if Input.mousePush?(M_LBUTTON)
    end
  end


  case $chapter
  when 0    # $chapter
    background0.draw()
    Window.draw_font_ex(340,100,"きつみん", font, color: C_WHITE)
    btn_story.draw()
    btn_timer.draw()
    
    # コーディング用(後で消す) +---------
    $chapter = 1 if Input.key_push?(K_1)
    $chapter = 2 if Input.key_push?(K_2)
    $chapter = 4 if Input.key_push?(K_4)
    $chapter = 5 if Input.key_push?(K_5)
    #  +--------------------------------

  when 1    # $chapter
    case $story
    when 1    # $story
      main_char.hp = 100.0 # 破壊オブジェクトのHP
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end

    background_s1.draw()
      
    story1()

      $chapter = 2 if @cnt == 4
      @cnt = 0 if @cnt == 4
      $musics[$sel_music].stop() if @cnt == 4

      obje_x = 250
      obje_y = -50
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage1-1木.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage1-2木2.png"))
      main_char.z = +1

  when 2    # $story
    main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end

    background_s1.draw()

    story2()
      

      $chapter = 2 if @cnt == 5
      @cnt = 0 if @cnt == 5
      $musics[$sel_music].stop() if @cnt == 5

      obje_x = 280
      obje_y = 385
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage2-1木.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage2-2木.png"))
      main_char.z = +1
      
    when 3    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
      @cnt += 1
      end

    background_s3.draw()

    story3()

      $chapter = 2 if @cnt == 7
      @cnt = 0 if @cnt == 7
      $musics[$sel_music].stop() if @cnt == 7

      obje_x = 200
      obje_y = 380
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage3-1岩.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage3-2岩.png"))
      main_char.z = +1
      
    when 4    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end
      
    background_s4.draw()

    story4()

      $chapter = 2 if @cnt == 8
      @cnt = 2 if @cnt == 8
      $musics[$sel_music].stop() if @cnt == 8
      
      obje_x = 300
      obje_y = 100
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage4-1家.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage4-2家.png"))
      main_char.z = +1
      
    when 5    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end

    background_s5.draw()

    story5()

      $chapter = 2 if @cnt == 3
      $musics[$sel_music].stop() if @cnt == 3

      obje_x = 200
      obje_y = 330
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage5-1ビル.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage5-2ビル.png"))
      main_char.z = +1


      
    when 6    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end

    background_s6.draw()

    story6()
      
      $chapter += 1 if @cnt == 14
      $musics[$sel_music].stop() if @cnt == 14

      obje_x = 200
      obje_y = 80
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage6-1スカイツリー.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage6-2スカイツリー.png"))
      main_char.z = +1
      
    when 7    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end

    background_s7.draw()

    story7()

      $chapter = 2 if @cnt == 8
      @cnt = 0 if @cnt == 8
      $musics[$sel_music].stop() if @cnt == 8

      obje_x = 220
      obje_y = 395
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage7-1山.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage7-2山.png"))
      main_char.z = +1
      
    when 8    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end
      
    background_s8.draw()
      
    story8()

      $chapter = 2 if @cnt == 2
      @cnt = 0 if @cnt == 2
      $musics[$sel_music].stop() if @cnt == 2

      obje_x = 250
      obje_y = 250
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage8-1地球.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage8-2地球.png"))
      main_char.z = +1
      
    when 9    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end

    background_s9.draw()
      
    story9()
     
      $chapter = 2 if @cnt == 8
      @cnt = 0 if @cnt == 8
      $musics[$sel_music].stop() if @cnt == 8
      
      obje_x = 250
      obje_y = 250
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage9-1隕石.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage9-2隕石.png"))
      main_char.z = +1

    when 10    # $story
      main_char.hp = 100.0
      if Input.mousePush?(M_LBUTTON)
        @cnt += 1
      end

    background_s9.draw()

    story10()

      $chapter = 0 if @cnt == 7
      $musics[$sel_music].stop() if @cnt == 6

      obje_x = 250
      obje_y = 250
      object = Sprite.new(obje_x, obje_y, Image.load("images/stage9-1隕石.png"))
      object2 = Sprite.new(obje_x, obje_y, Image.load("images/stage9-2隕石.png"))
      main_char.z = +1

    end

    # コーディング用(後で消す) +----------
    $chapter = 0 if Input.key_push?(K_0)
    $chapter = 2 if Input.key_push?(K_2)
    $chapter = 4 if Input.key_push?(K_4)
    $chapter = 5 if Input.key_push?(K_5)
    # +---------------------------------

  when 2    # $chapter
    @cnt = 0
    main_char.move()

    background_s1.draw() if $story == 1
    background_s2.draw() if $story == 2
    background_s3.draw() if $story == 3
    background_s4.draw() if $story == 4
    background_s5.draw() if $story == 5
    background_s6.draw() if $story == 6
    background_s7.draw() if $story == 7
    background_s8.draw() if $story == 8
    background_s9.draw() if $story == 9
    background_s9.draw() if $story == 10

    # 250 == 横幅 ＝＞ 小さくしていってサイズを短くしていく
    Window.draw(0, 0, hp_bar)
    Window.draw_box_fill(0, 0, 250 * (main_char.hp / main_char.defhp.to_f), 32, [255, 0, 0])
    if main_char.hp / main_char.defhp.to_f < 0
      object2.draw
      @click += 1 if Input.mousePush?(M_LBUTTON)
        if @click == 2
          sleep(3)
          $chapter = 3
          @click = 0
        end
    else
      object.draw
    end

    # コーディング用(後で消す) +---------
    $chapter = 0 if Input.key_push?(K_0)
    $chapter = 1 if Input.key_push?(K_1)
    $chapter = 4 if Input.key_push?(K_4)
    $chapter = 5 if Input.key_push?(K_5)
    # +---------------------------------

  when 3    # $chapter
    $musics[$sel_music].stop()
    Window.draw_font_ex(200,950, "続けますか？「y」or「n」", font2, color: C_WHITE)
    if Input.key_push?(K_Y)
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
    if Input.key_push?(K_N)
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
  
  when 4    # $chapter
  main_char.x = 1350
  main_char.y = 430
  skinfont = Font.new(60)
  Window.draw_font_ex(1180, 200, "現在適用されているスキン", skinfont)

  # 画面に画像を配置
  skin = Image.loadTiles("./images/main_character5.png", 3, 4)

  # Spriteを使って表示する
  skins = [Sprite.new(400, 0, skin[3]), Sprite.new(400, 400, skin[6]), Sprite.new(400, 750, skin[9])]
  Sprite.draw(skins)
  main_char.draw()
  selected_skin = mouse.check(skins)
  if !selected_skin.empty? && Input.mouse_push?(M_LBUTTON)
    main_char.change_skin(skins.index(selected_skin.first))
  end
    
    # コーディング用(後で消す) +---------
    $chapter = 1 if Input.key_push?(K_1)
    $chapter = 2 if Input.key_push?(K_2)
    $chapter = 3 if Input.key_push?(K_3)
    $chapter = 5 if Input.key_push?(K_5)
    #  +--------------------------------

  when 5    # $chapter

  write_name()
    
  if Input.key_push?(K_RETURN)
  File.open("./action/username", "w+", encoding: "utf-8") do |f|
    f.puts @userName
  end
  File.open("./action/username", "r") do |f|
    name = f.read
    print "#{name} としてログイン"
  end
  main_char.hp = 1000.0
  $chapter = 6
  end
    Window.draw_font_ex(100,100, "名前を入力してください", font2, color: C_WHITE)
    Window.draw_font_ex(100,150, "Enterで決定", font2, color: C_WHITE)
    if @userName == " "
      Window.draw_font_ex(740,100, "なまえ", font2, color: C_GREEN)
    else
      Window.draw_font_ex(740,100, @userName, font2, color: C_GREEN)
    end

  when 6    # $chapter

    # タイムアタック
    if atk_start == -1
      atk_start = 0
    elsif atk_start == 0
      Window.draw_font_ex(500,150, "3", font, color: C_WHITE)
      sleep(1)
      atk_start = 1
      elsif atk_start == 1
        Window.draw_font_ex(500,150, "2", font, color: C_WHITE)
        sleep(1)
        atk_start = 2
        elsif atk_start == 2
          Window.draw_font_ex(500,150, "1", font, color: C_WHITE)
          sleep(1)
          atk_start = 3
          elsif atk_start == 3
            Window.draw_font_ex(500,150, "スタート", font, color: C_WHITE)
            sleep(1)
            atk_start = 4
    end

    @cnt = 0
    main_char.move()
    object.draw

    if atk_start == 4
      unless main_char.hp / main_char.defhp.to_f < 0
        @byou_cnt += 1
        if @byou_cnt == 60
          @byou += 1
          @byou_cnt = 0
        end

        @flo1_byou_cnt += 1
        if @flo1_byou_cnt == 6
          @flo1_byou += 1
          @flo1_byou_cnt = 0
          if @flo1_byou == 10
            @flo1_byou = 0
          end
        end

        @flo2_byou_cnt += 6
        if @flo2_byou_cnt / 10 == 1
          @flo2_byou += 1
          @flo2_byou_cnt = 0
          if @flo2_byou == 10
            @flo2_byou = 0
          end
        end
      end

      Window.draw_font_ex(800,150, "#{@byou}.#{@flo1_byou}#{@flo2_byou}", font3, color: C_WHITE)

      # 250 == 横幅 ＝＞ 小さくしていってサイズを短くしていく
      main_char.hp -= 10 if Input.mousePush?(M_LBUTTON)
      Window.draw(0, 0, hp_bar)
      Window.draw_box_fill(0, 0, 250 * (main_char.hp / main_char.defhp.to_f), 32, [255, 0, 0])
    end

    if main_char.hp / main_char.defhp.to_f < 0
    Window.draw_font_ex(100,100, "終了", font2, color: C_WHITE)
    Window.draw_font_ex(100,150, "クリアタイムは#{@byou}.#{@flo1_byou}#{@flo2_byou}です。", font2, color: C_WHITE)
    atk_start == -1
    end
  end

  # ESCキーが押されると終了
  break if Input.key_push?(K_ESCAPE)
end
