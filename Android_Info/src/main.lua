SCREEN_PHONE_HEIGHT = love.graphics.getHeight()
SCREEN_PHONE_WIDTH  = love.graphics.getWidth()
OS                  = love.system.getOS( )
ratio = love.graphics.getWidth() / love.graphics.getHeight()
fps = love.timer.getFPS( )
--scale = love.window.getPixelScale( )


espaceY = 25
comp = 0

function love.load(arg)

end

function love.update(dt)
  comp = comp + dt
  
  if comp > 1 then
    fps = love.timer.getFPS( )
    comp = 0
  end
end

function love.draw()
  
  love.graphics.setColor(0, 255, 0, 255)
  love.graphics.line( 0, 0, SCREEN_PHONE_WIDTH, SCREEN_PHONE_HEIGHT )
  love.graphics.line( SCREEN_PHONE_WIDTH, 0, 0, SCREEN_PHONE_HEIGHT )
  love.graphics.line( 1, 0, 1, SCREEN_PHONE_HEIGHT )
  love.graphics.line( SCREEN_PHONE_WIDTH-1, 0, SCREEN_PHONE_WIDTH-1, SCREEN_PHONE_HEIGHT )
  
  
  love.graphics.setColor(255, 0, 0, 255)
  love.graphics.print("Screen Width  = "..SCREEN_PHONE_WIDTH,25 ,espaceY*1  ,0,2,2)
  love.graphics.print("Screen Height = "..SCREEN_PHONE_HEIGHT,25,espaceY*2  ,0,2,2)
  love.graphics.print("Ratio = "..SCREEN_PHONE_WIDTH.."/"..SCREEN_PHONE_HEIGHT.." = "..ratio,25,espaceY*3  ,0,2,2)
  --love.graphics.print("PixelScale = "..scale,10,espaceY*4  ,0,2,2)
  love.graphics.print("Fps = "..fps,25,espaceY*5  ,0,2,2)

  
  love.graphics.print("OS = "..OS,25,espaceY*6  ,0,2,2)
  
end
