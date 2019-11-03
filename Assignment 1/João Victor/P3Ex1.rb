class Aluno
	def setMaterias materias, materias_count
        @materias = materias
        @materias_count = materias_count
    end

    def getMaterias
		return @materias
    end
    
	def setNotas notas, notas_count
        @notas = concatena(@materias, @materias_count, notas, notas_count)
    end
    
	def getNotas
		return @notas
    end
    
    def setMencao materias, notas
        @mencao = Hash.new(5)
        
        for i in 0..4
			@mencao[materias[i]] = checagem(notas[materias[i]])
		end
    end
    
    def getMencao
        return @mencao
    end
end

def concatena chave, chave_count, dados, dados_count
    if chave_count == dados_count
        return Hash[chave.zip dados]
    else 
        return "Erro: O metodo nao pode ser executado pois os arrays possuem tamanhos diferentes"
    end
end

def checagem nota
    if (nota == 0)
        return "SR"
    elsif (nota > 0 and nota < 3)
        return "II"
    elsif (nota >= 3 and nota < 5)
        return "MI"
    elsif (nota >= 5 and nota < 7)
        return "MM"
    elsif (nota >= 7 and nota < 9)
        return "MS"
    elsif (nota >= 9 and nota <= 10)
        return "SS"
    else
        return "Nota Invalida"
    end
end

aluno = Aluno.new
materias = []
materias_count = 0
notas = []
notas_count = 0

puts "Informe as materias. Apos inserir cada materia, digite enter. Ao finalizar, digite enter novamente"

while materias_count != 5
    while true
        input = gets.chomp
        break if input.empty?
        materias.append input
        materias_count += 1
    end

    if materias_count == 5
        break
    else
        materias.clear
        materias_count = 0
        puts "Devem ser informadas cinco materias. Insira novamente de forma correta"
    end
end

aluno.setMaterias(materias, materias_count)

puts "Informe as notas. Apos inserir cada nota, digite enter. Ao finalizar, digite enter novamente"

while notas_count != 5
    while true
        input = gets.chomp
        break if input.empty?
        notas.append input.to_f
        notas_count += 1
    end

    if notas_count == 5
        break
    else
        notas.clear
        notas_count = 0
        puts "Devem ser informadas cinco notas. Insira novamente de forma correta"
    end
end

aluno.setNotas(notas, notas_count)
aluno.setMencao(aluno.getMaterias(), aluno.getNotas())

puts aluno.getMencao()