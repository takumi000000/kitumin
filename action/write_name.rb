def write_name
    # 名前入力
  # 大文字
  if Input.key_down?(K_LSHIFT)
    if Input.key_push?(K_Q)
      @userName = @userName + "Q"
    end
    if Input.key_push?(K_W)
      @userName = @userName + "W"
    end
    if Input.key_push?(K_E)
      @userName = @userName + "E"
    end
    if Input.key_push?(K_R)
      @userName = @userName + "R"
    end
    if Input.key_push?(K_T)
      @userName = @userName + "T"
    end
    if Input.key_push?(K_Y)
      @userName = @userName + "Y"
    end
    if Input.key_push?(K_U)
      @userName = @userName + "U"
    end
    if Input.key_push?(K_I)
      @userName = @userName + "I"
    end
    if Input.key_push?(K_O)
      @userName = @userName + "O"
    end
    if Input.key_push?(K_P)
      @userName = @userName + "P"
    end
    if Input.key_push?(K_A)
      @userName = @userName + "A"
    end
    if Input.key_push?(K_S)
      @userName = @userName + "S"
    end
    if Input.key_push?(K_D)
      @userName = @userName + "D"
    end
    if Input.key_push?(K_F)
      @userName = @userName + "F"
    end
    if Input.key_push?(K_G)
      @userName = @userName + "G"
    end
    if Input.key_push?(K_H)
      @userName = @userName + "H"
    end
    if Input.key_push?(K_J)
      @userName = @userName + "J"
    end
    if Input.key_push?(K_K)
      @userName = @userName + "K"
    end
    if Input.key_push?(K_L)
      @userName = @userName + "L"
    end
    if Input.key_push?(K_Z)
      @userName = @userName + "Z"
    end
    if Input.key_push?(K_X)
      @userName = @userName + "X"
    end
    if Input.key_push?(K_C)
      @userName = @userName + "C"
    end
    if Input.key_push?(K_V)
      @userName = @userName + "V"
    end
    if Input.key_push?(K_B)
      @userName = @userName + "B"
    end
    if Input.key_push?(K_N)
      @userName = @userName + "N"
    end
    if Input.key_push?(K_M)
      @userName = @userName + "M"
    end
    
  else
    # 小文字
    if Input.key_push?(K_Q)
      @userName = @userName + "q"
    end
    if Input.key_push?(K_W)
      @userName = @userName + "w"
    end
    if Input.key_push?(K_E)
      @userName = @userName + "e"
    end
    if Input.key_push?(K_R)
      @userName = @userName + "r"
    end
    if Input.key_push?(K_T)
      @userName = @userName + "t"
    end
    if Input.key_push?(K_Y)
      @userName = @userName + "y"
    end
    if Input.key_push?(K_U)
      @userName = @userName + "u"
    end
    if Input.key_push?(K_I)
      @userName = @userName + "i"
    end
    if Input.key_push?(K_O)
      @userName = @userName + "o"
    end
    if Input.key_push?(K_P)
      @userName = @userName + "p"
    end
    if Input.key_push?(K_A)
      @userName = @userName + "a"
    end
    if Input.key_push?(K_S)
      @userName = @userName + "s"
    end
    if Input.key_push?(K_D)
      @userName = @userName + "d"
    end
    if Input.key_push?(K_F)
      @userName = @userName + "f"
    end
    if Input.key_push?(K_G)
      @userName = @userName + "g"
    end
    if Input.key_push?(K_H)
      @userName = @userName + "h"
    end
    if Input.key_push?(K_J)
      @userName = @userName + "j"
    end
    if Input.key_push?(K_K)
      @userName = @userName + "k"
    end
    if Input.key_push?(K_L)
      @userName = @userName + "l"
    end
    if Input.key_push?(K_Z)
      @userName = @userName + "z"
    end
    if Input.key_push?(K_X)
      @userName = @userName + "x"
    end
    if Input.key_push?(K_C)
      @userName = @userName + "c"
    end
    if Input.key_push?(K_V)
      @userName = @userName + "v"
    end
    if Input.key_push?(K_B)
      @userName = @userName + "b"
    end
    if Input.key_push?(K_N)
      @userName = @userName + "n"
    end
    if Input.key_push?(K_M)
      @userName = @userName + "m"
    end
    if Input.key_push?(K_1)
      @userName = @userName + "1"
    end
    if Input.key_push?(K_2)
      @userName = @userName + "2"
    end
    if Input.key_push?(K_3)
      @userName = @userName + "3"
    end
    if Input.key_push?(K_4)
      @userName = @userName + "4"
    end
    if Input.key_push?(K_5)
      @userName = @userName + "5"
    end
    if Input.key_push?(K_6)
      @userName = @userName + "6"
    end
    if Input.key_push?(K_7)
      @userName = @userName + "7"
    end
    if Input.key_push?(K_8)
      @userName = @userName + "8"
    end
    if Input.key_push?(K_9)
      @userName = @userName + "9"
    end
    if Input.key_push?(K_0)
      @userName = @userName + "0"
    end
  end
  if Input.key_down?(K_BACK)
    @userName = @userName.chop!() unless @userName == " "
    sleep(0.17)
  end
end