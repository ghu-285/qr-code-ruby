# Write your solution here!
require "rqrcode"

i = 1
txt = ""
while txt != "bye"
  txt = gets.chomp
  # Use the RQRCode::QRCode class to encode some text
  qrcode = RQRCode::QRCode.new("SMSTO:8576544025:#{txt}")

  # Use the .as_png method to create a 500 pixels by 500 pixels image
  png = qrcode.as_png({ :size => 500 })

  # Write the image data to a file
  IO.binwrite("sometext#{i}.png", png.to_s)
  i+=1
end
