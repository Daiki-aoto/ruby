require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

 memo_type = gets.to_i
 #.1(新規でメモを作成)を出力するプログラム
 
   if memo_type == 1
      puts "拡張子を除いたファイルを入力してください"
      file_name = gets.to_s
      file = File.open("#{file_name}.csv", "a")
      puts "メモしたい内容を記入してください"
      puts "完了したらCtrl + Dを押します"
      memo_type = readline
      file.puts "#{memo_type}"
   
   #.2(既存のメモ編集する)を出力するプログラム
  else memo_type == 2
     puts "既存のcsvファイル名(file.csv)に追記します"
     puts "追記したい内容を入力してください"
     puts "完了したら Ctrl+D　を入力します"
     memo_type = readlines
     file = File.open("#{file_name}.csv", "a")
     csv << ["#{memo_type}"]
   end
 