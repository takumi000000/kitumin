#++
#操作キャラクタークラス
#
#+----------------------------++
class MainCharcter < Sprite
  attr_accessor :power, :defhp, :hp 
  # <!>きつつき画像(スキン変更で[a..b]を変更できる機能を追加する)↓<!>
  @@images_w = Image.loadTiles("./images/main_character5.png", 3, 4)[9..10] # 4.png[ism=3..5,  inou=6..8, ryo=9..10]

  #++
  #コンストラクタ
  #+----------------------------++
  def initialize()
    # <!>きつつきの位置調整をする↓<!>
      self.x = 500
      self.y = 500

      @animation = 0
      self.image = @@images_w[@animation]
      @power = 1.0
      @hp = 100
      @defhp = 1000
  end

  def move()
      self.draw

      if Input.mousePush?(M_LBUTTON)
      @animation += 1
      self.image = @@images_w[@animation % 2] # 2枚スキンは「2」、3枚スキンは「3」
      st_time = Time.now if Input.key_push?(K_S)
      @hp -= 10
      end
  end
  def change_skin(selected)
    case selected
    when 0
      @@images_w = Image.loadTiles("./images/main_character5.png", 3, 4)[3..4] # 4.png[ism=3..5,  inou=6..8, ryo=9..10]
    when 1
      @@images_w = Image.loadTiles("./images/main_character5.png", 3, 4)[6..8] # 4.png[ism=3..5,  inou=6..8, ryo=9..10]
    when 2
      @@images_w = Image.loadTiles("./images/main_character5.png", 3, 4)[9..10] # 4.png[ism=3..5,  inou=6..8, ryo=9..10]
    end
    self.image = @@images_w[@animation]
  end
end

