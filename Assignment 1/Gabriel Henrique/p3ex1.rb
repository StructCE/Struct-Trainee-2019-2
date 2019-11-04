def mencao (nota)
  if nota < 0 or nota > 10
    puts "Nota invalida"
  elsif nota == 0
    "SR"
  elsif nota > 0 and nota < 3
    "II"
  elsif nota >= 3 and nota < 5
    "MI"
  elsif nota >=5 and nota < 7
    "MM"
  elsif nota >= 7 and nota < 9
    "MS"
  elsif nota >= 9 and nota <= 10
    "SS"
  end
end

def concatena(array1, array2)
  if array1.length != array2.length
    puts "Erro: arrays com tamanhos diferentes"
  else
    hash = Hash.new
    array1.each_with_index { |key, value| hash[key] = array2[value] }
  end
  hash
end

class Aluno
  def initialize
    @materias = Array.new(5)
    @notas = Hash.new(5)
    @mencao = Hash.new(5)
    end

    def setmaterias=(materias)  #seta as materias entrando com um array
      @materias = materias
    end

    def setnotas=(arraynotas) #seta as notas entrando com um array
      @notas = concatena(@materias, arraynotas)
    end

    def getmaterias #retorna as materias ja setadas
      @materias
    end

    def getnota(materia) #retorna uma nota dando sua materia relacionada
      if @materias.include?(materia)
      puts @notas[materia]
      else
        puts "Essa materia (#{materia}) nao foi setada"
        end
    end
    def getmencao()
      i = 0
      while i < 5
        @mencao[@materias[i]] = mencao(@notas[@materias[i]])
        i += 1
      end
      puts @mencao
    end
end

materias = ["calculo 1", "apc" , "fisica 1", "iae", "ial"]
notas = [0, 2, 4.9, 6, 9]
aluno = Aluno.new
aluno.setmaterias = materias
aluno.setnotas = notas
puts aluno.getmaterias  #Verificando retorno do GET das materias
aluno.getnota("c3") #testando GET com materia nao constatada
aluno.getnota("iae") #testando GET com materia setada
aluno.getmencao