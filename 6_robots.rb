class Robot 
  
  attr_accessor :strength, :health, :weapon, :weapon_force
  
  def initialize()
    @strength = [1,2,3,4,5].sample
    @health = [1,2,3,4,5].sample
    @weapon = ["axe", "flame-thrower", "laser-blaster"].sample
    @weapon_force = ["axe", "flame-thrower", "laser-blaster"].index(@weapon) + 1
  end
  
  def attack(enemy_robot)
    if @strength * @weapon_force >= enemy_robot.strength * enemy_robot.weapon_force
      damage = @weapon_force
    else
      @health = @health - enemy_robot.weapon_force
      damage = 0 
    end 
  end

end 

# code starts to run here...
robot1 = Robot.new()
robot2 = Robot.new() 

damage = robot1.attack(robot2)

if damage > 0 
  puts "Robot 1 won the attack!"
  puts "Robot1 = " + robot1.inspect
  puts "Robot2 = " + robot2.inspect
else 
  puts "Robot 2 won the attack!"
  puts "Robot1 = " + robot1.inspect
  puts "Robot2 = " + robot2.inspect
end


