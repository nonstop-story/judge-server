# -*- coding: utf-8 -*

white_str = []
white_str[0] = "ぺこ"
white_str[1] = "待機"
white_str[2] = "待机"
white_str[3] = "O"
white_str[4] = "o"
white_str[5] = "k"
white_str[6] = "K"
white_str[7] = "草"
white_str[8] = "8888"
white_str[9] = "114"
white_str[10] = "大丈夫"
white_str[11] = "理解"
white_str[12] = "辛苦了"
white_str[13] = "WW"
white_str[14] = "ww"
white_str[15] = "ペコ"
white_str[16] = "导游"
white_str[17] = "房管"
white_str[18] = "完全一致"
white_str[19] = "复刻"
white_str[20] = "い"
white_str[21] = "天才"
white_str[22] = "上手"
white_str[23] = "回线"
white_str[24] = "网络"
white_str[25] = "来了"
white_str[26] = "\\"
white_str[27] = "/"
white_str[28] = "晚安"
# 白名单列表

file = File.open("file2.txt", "rb")
new_file = File.new("file2.txt", "wb")

if file
  file.each_line do
  |i|
    i.force_encoding("UTF-8")
    # 保险起见进行强制编码一次

    if_skip = false
    # 每一行
    # 都会令 skip 先为 false
    white_str.each do
    |j|
      if i.include? j
        if_skip = true
        # 如果这行弹幕包括以上任意一个字符
        # 设定skip为true
        # 删除掉这行弹幕
        # 减少负担
      end
    end
    unless if_skip
      puts i
      new_file.syswrite(i)
    end
  end
end