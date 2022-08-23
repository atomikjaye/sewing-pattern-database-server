require 'imagekitio'

IMAGE_IO_PRIVATE = ENV['image_io_key_private']
IMAGE_IO_PUBLIC = ENV['image_io_key_public']

public_key = IMAGE_IO_PUBLIC
private_key = IMAGE_IO_PRIVATE
url_endpoint = 'https://ik.imagekit.io/1y1qnkhut' # https://ik.imagekit.io/your_imagekit_id

imagekitio = ImageKitIo::Client.new(private_key, public_key, url_endpoint)