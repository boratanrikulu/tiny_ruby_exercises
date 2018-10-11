
def wait(seconds)
	puts "waiting..."
	loading(seconds)
	puts "done!"
end

def loading(seconds)
	for counter in 1..seconds*2
		print "."
		sleep 0.5
	end
	print "\n"
end

wait 5
