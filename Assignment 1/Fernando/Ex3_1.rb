# Declaracao da classe Aluno
class Aluno
# Declaracao das variaveis
  @materias
  @notas
  @array_notas

# Getters e Setters de cada variavel
  def materias   # Getter
    @materias
  end

  def materias=(materias)   # Setter
    @materias = materias
  end

  def array_notas   # Getter
    @array_notas
  end

  def array_notas=(hash)   # Setter
    @array_notas = hash
  end

  def notas(materia)   # Getter
    @notas[materia]
  end

  def notas=(notas)   # Setter
    @notas = notas
  end

# Definicao do metodo que concatena os arrays em um hash
  def concatena(input_array1, input_array2)
    if(input_array1.size != input_array2.size)
      return "Erro! Arrays de tamanhos diferentes. Impossivel concatenar em um hash"
    else
      hash = Hash.new       # cria um novo hash

      for elemento in (0..input_array1.size-1)
        hash[input_array1[elemento]] = input_array2[elemento]     # coloca cada elemento de array1 como key e cada elemento de array2 como value
      end

      return hash                   # retorna a hash
    end
  end

# Definicao do metodo recebe uma nota e retorna uma string com a mencao
  def mencao(nota)
    # Logica para mencoes
    if (nota < 0)
      return "Nota Invalida"
    elsif (nota == 0)
      return "SR"
    elsif (nota < 3)
      return "II"
    elsif (nota < 5)
      return "MI"
    elsif (nota < 7)
      return "MM"
    elsif (nota < 9)
      return "MS"
    elsif (nota <= 10)
      return "SS"
    else
      return "Nota Invalida"
    end
  end

# Definicao do metodo que coloca as materias e mencoes em um hash
  def hash_mencoes
    hash = Hash.new
    self.materias.each do |elemento|
      hash[elemento] = self.mencao(self.notas(elemento))
    end
    return hash
  end
end



####################################
# Programa de fato (main) abaixo  #
##################################

aluno = Aluno.new       # Instacia um novo objeto aluno
aluno.array_notas = [7, 5, 8, 10, 3]    # Cria um array com as notas do aluno
aluno.materias = ["Calculo 1", "Fisica 1", "APC", "IEC", "PE"]    # Cria um array com as materias
aluno.notas = aluno.concatena(aluno.materias,aluno.array_notas)   # Cria o hash na forma materia => nota

#puts "array de notas: #{aluno.array_notas}"
#puts "array de materias: #{aluno.materias}"
#puts "Nota em Fisica 1: #{aluno.notas("Fisica 1")}"
puts "Mencoes do aluno: #{aluno.hash_mencoes}"      # Printa o hash na forma materia => mencao