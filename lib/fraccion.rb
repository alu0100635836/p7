require "gcd.rb"

class Fraccion
  attr_reader :n,:d
  
  def initialize(n,d)
    @n, @d = n, d
  end
  
  #metodo reducir
  def reducir
    mcd = gcd(@n,@d)
    @n = (@n/mcd)
    @d = (@d/mcd)
  end
  
  #metodo num
  def num
    @n
  end
  
  #metodo denom
  def denom
    @d
  end
  
  #metodo mostrar
  def mostrar
    "#{@n}/#{@d}"
  end
  
  #metodo flotante
  def flotante
    @n/@d
  end
  
  #metodo == --> para comparar 2 fracciones
  def ==(fraccion2)
    if @n==fraccion2.n && @d==fraccion2.d then
      true
    else
      false
    end
  end
  
  #metodo abs --> Valor absoluto
  def abs
    #Si el numerador es menor que 0, le quitamos lo negativo multiplicando por -1
    if @n < 0 then 
      @n = @n * -1 
    end
    #Si el denominador es menor que 0, le quitamos lo negativo multiplicando por -1
    if @d < 0 then
      @d = @d * -1
    end
  end
  
  #metodo reciprocal --> invertir numerador por denominador y viceversa
  def reciprocal
    x = @n
    @n = @d
    @d = x
  end
  
  #metodo multiplicacion de dos fracciones
  def *(fraccion2)
    @n = @n * fraccion2.n
    @d = @d * fraccion2.d
    reducir
  end
  
  #metodo de division de dos fracciones
  def /(fraccion2)
    @n = @n * fraccion2.d
    @d = @d * fraccion2.n
    reducir
  end
  
  #metodo para ver si nuestra fraccion es menor que fraccion2
  def menor(fraccion2) 
      mcm = (@d * fraccion2.d)/gcd(@d, fraccion2.d)
      a = (mcm/@d*@n)
      b = (mcm/fraccion2.d*fraccion2.n)
      return @n < fraccion2.n
      false
  end
  
    #metodo de suma de dos fracciones
  def +(fraccion2)
    mcm = (@d * fraccion2.d)/gcd(@d, fraccion2.d)
    @n = ((mcm/@d) * @n) + ((mcm/fraccion2.d) * fraccion2.n) 
    @d = mcm
    reducir
  end

    #metodo de resta de dos fracciones
  def -@(fraccion2)
    mcm = (@d * fraccion2.d)/gcd(@d, fraccion2.d)
    @n = ((mcm/@d) * @n) - ((mcm/fraccion2.d) * fraccion2.n)
    @d = mcm
    reducir
  end

    #metodo para ver si nuestra fraccion es mayor que fraccion2
  def mayor(fraccion2)
      mcm = (@d * fraccion2.d)/gcd(@d, fraccion2.d)
      a = (mcm/@d*@n)
      b = (mcm/fraccion2.d*fraccion2.n)
      return @n > fraccion2.n
      false
  end
    #metodo para ver si nuestra fraccion es menorigual que fraccion2
  def menorigual(fraccion2)
      mcm = (@d * fraccion2.d)/gcd(@d, fraccion2.d)
      a = (mcm/@d*@n)
      b = (mcm/fraccion2.d*fraccion2.n)
      return @n <= fraccion2.n
      false
  end
    #metodo para ver si nuestra fraccion es mayorigual que fraccion2
  def mayorigual(fraccion2)
      mcm = (@d * fraccion2.d)/gcd(@d, fraccion2.d)
      a = (mcm/@d*@n)
      b = (mcm/fraccion2.d*fraccion2.n)
      return @n >= fraccion2.n
      false
  end


end