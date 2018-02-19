class TopicScheduler
  TOPICS = [:service_1, :service_2, :service_3]

  def initialize(workers)
    @workers = {}
    workers_per_topic = workers / TOPICS.size
    workers.each_slice(workers_per_topic).each_with_index do | slice, index |
      topic = TOPICS[index]
      @workers[topic] = slice
    end
  end

  def schedule(job)
    worker = @workers[job.topic].sort_by(&:jobs_count).first
    worker << job
  end
end 
