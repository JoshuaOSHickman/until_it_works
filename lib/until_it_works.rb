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
