local_filename = File.expand_path(File.dirname(__FILE__))+'/memory.log'

loop do
  sleep(5)
  # puts File.expand_path(File.dirname(__FILE__))
  all_processes = `ps -A -o rss`
  memory = 0
  all_processes.each_line do |line|
    matched = line.match(/^ {0,19}(\d{1,19})/)
    if matched
      memory += matched[1].to_i
    end
  end 
  kylobytes = memory / 1000 # megabytes
  File.open(local_filename, 'a') {|f| 
    f.write("#{Time.new.strftime("%Y-%m-%d %H:%M:%S")}  : #{kylobytes} \n") 
  }
end
