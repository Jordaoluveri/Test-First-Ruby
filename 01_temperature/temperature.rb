def ftoc(f)
	c = (f-32)/1.8
	c.ceil
end

def ctof(c)
	f = (c*1.8) + 32
end