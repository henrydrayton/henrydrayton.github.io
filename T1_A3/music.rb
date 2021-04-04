require 'ruby2d'

class KahootMusic
    
song = Music.new('kahoot_music.mp3')

# Play the music
song.play
song.loop = true

end

set title: "Hello Triangle"

Triangle.new(
  x1: 320, y1:  50,
  x2: 540, y2: 430,
  x3: 100, y3: 430,
  color: ['red', 'green', 'blue']
)

show
