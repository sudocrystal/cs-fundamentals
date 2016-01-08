def split_array(a)
	if a.length % 2 == 0
		mid_index = a.length / 2 - 1
	else
		mid_index = (a.length - 2) / 2
	end
	return a[0..mid_index], a[(mid_index + 1)..(a.length - 1)]
end
