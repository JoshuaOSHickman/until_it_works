def until_it_works(danger=false, opts = {}, &blk)
  exception_class = danger ? Exception : StandardError
  exceptions = []
  blkval = nil
  while true
    begin
      blkval = blk.call
      break
    rescue exception_class => e
      exceptions << e
    end
  end
  if opts[:return_errors]
    return exceptions
  else
    return blkval
  end
end

def try_for(time, &blk)
  t = Time.now
  exceptions = []
  while true
    if Time.now > t + time
      if exceptions.first
        raise exceptions.first
       else
        raise ArgumentError, "Timed out without even being able to try"
      end
    end
    begin
      return blk.call
    rescue => e
      exceptions << e
    end
  end
end
