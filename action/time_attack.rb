def count_time
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

def count_reset
  @byou = 0
  @byou_cnt = 0
  @flo1_byou = 0
  @flo1_byou_cnt = 0
  @flo2_byou = 0
  @flo2_byou_cnt = 0
  @atk_start = -1
end