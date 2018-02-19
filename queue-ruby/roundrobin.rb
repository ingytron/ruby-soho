class RoundRobinScheduler
  def initialize(workers)
    @current_worker = workers.cycle
  end

  def schedule(job)
    @current_worker.next << job
  end
end

