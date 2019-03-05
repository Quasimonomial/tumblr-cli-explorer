require 'rubygems'
require 'bundler/setup'

require 'pry'
require 'ascii-image'

class ImagePresenter
  TERMINAL_WIDTH = 80

  def initialize image_path
    @image = ASCII_Image.new(image_path)
  end

  def present
    @image.build(TERMINAL_WIDTH)
  end
end
