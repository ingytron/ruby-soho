require 'thread'

work = Queue.new
num_consumers = 2

producer = Thread.new do
  5.times do |n|
      puts "Queuing job #{n}"
    ###count = 0
    #loop do
    #sleep 1
    #count +=1
    #puts "queueing job #{count}"
    #work << "job #{count}"
    work << "job #{n}"
    sleep 1
  end
  
  num_consumers.times { work << :done }
end

consumers = Array.new(num_consumers) do |n|
  Thread.new do
    loop do
      # job = work.deq
      job = work.pop
      break if job == :done
      puts "consumer #{n}: #{job}"
      sleep 2
    end
  end
end

producer.join
consumers.map(&:join)

