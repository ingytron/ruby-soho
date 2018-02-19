class WorkerPool
  def initialize(num_workers, scheduler_factory)
    @workers = Array.new(num_workers) { |n| 
      Worker.new("worker_#{n}") 
    }
    @scheduler = scheduler_factory.new(@workers)
  end

  def <<(job)
    if job == :done
      @workers.map { |w| w << :done }
    else
      @scheduler.schedule(job)
    end
  end

  def wait
    @workers.map(&:join)
  end
end

