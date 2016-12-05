def toggle_trace(limit=12)
  conf.back_trace_limit = limit 
end

IRB.conf[:BACK_TRACE_LIMIT] = 1
