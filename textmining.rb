class Textsimilarity

def calculateSimilarity(a,b)

	words=[]
	countx=[]
	county=[]
        x=a.split
        y=b.split
        z=x+y
	z.map! {|c| c.downcase.strip}
	y.map! {|c| c.downcase.strip}
	x.map! {|c| c.downcase.strip}

	for i in 0..z.length-1
		if (words.include?(z[i])==false)
			words.push(z[i])
			countx.push(x.count(z[i]))
			county.push(y.count(z[i]))
		end
	end


sumx=0
sumy=0
sum=0

	for j in 0..countx.length-1
		sum=sum+countx[j]*county[j]
		sumx=sumx+countx[j]*countx[j]
		sumy=sumy+county[j]*county[j]		
	end

similarity=sum/(Math.sqrt(sumx)*Math.sqrt(sumy))
similarity=(similarity*100).round(2).to_s

#puts "These two documents are "+ (similarity*100).round(2).to_s + "% similar!"

end




end

