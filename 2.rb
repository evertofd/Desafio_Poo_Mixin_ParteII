module Formula
  def perimetro(largo, ancho)
    2*(largo + ancho)
  end
  def area(largo, ancho)
    largo * ancho
  end
end


class Rectangulo
  include Formula
  attr_accessor :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    puts "los lados son #{@largo} y #{@ancho}"
  end
  def miarea
    area(@largo,@ancho)
  end
end

class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
      puts "los lado es #{@lado}"
  end
  def miarea
    area(@lado,@lado)
  end
end

r = Rectangulo.new(5,6)
c = Cuadrado.new(3)

c.lados
puts "el area del cuadrado es #{c.miarea}"
puts "el perimetro del cuadrado es #{c.perimetro(c.lado, c.lado)}"

r.lados
puts "el area del rectangulo es #{r.miarea}"
puts "el perimetro del cuadrado es #{r.perimetro(r.largo, r.ancho)}"
