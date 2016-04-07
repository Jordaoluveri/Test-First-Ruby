def measure(n = 1)
	start_time = Time.now
	n.times { yield }
	finish_time = Time.now
	average = 0
	if n > 1
		average = (finish_time - start_time)/n
	else
		finish_time - start_time
	end
end