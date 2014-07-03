class Pdf2text

def pdf_to_text(file, noblank = true)
	spec = file.sub(/.pdf$/, '')
	`pdftotext #{spec}.pdf`
	file = File.new("#{spec}.txt")
	text = []
	file.readlines.each do |l|
	l.chomp! if noblank
	if l.length > 0
	text << l
	end
    end
file.close
text
end

end