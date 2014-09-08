require 'pry'
Dir["./**"].each_with_index do |file,i|
    target_img = "#{i}.jpg"
    File.rename(file, target_img) if file.include? "jpg" and !(File.exist? target_img)
end



