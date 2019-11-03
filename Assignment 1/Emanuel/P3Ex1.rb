def formHash(keys, data)
	hashArrays = {}
	if keys.length != data.length
		puts 'tamanho invalido.'
	else
		for i in 0..keys.length-1
			hashArrays[keys[i]] = data[i]
		end
	end
	return hashArrays
end

def detMencao(nota)
	nota = nota.to_f
	if nota < 0
		mencao = 'nota invalida.'
	elsif nota == 0
		mencao = 'SR.'
	elsif nota < 3
		mencao = 'II.'
	elsif nota < 5
		mencao = 'MI.'
	elsif nota < 7
		mencao = 'MM.'
	elsif nota < 9
		mencao = 'MS.'
	elsif nota <=10
		mencao = 'SS.'
	else
		mencao = 'nota invalida.'
	end
	return mencao
end

class Aluno
	@materias = Array.new(5)
	@notas = Hash.new(5)
	def setMaterias(materias_)
		@materias = materias_
	end
	def setNotas(notas_)
		@notas = formHash(@materias,notas_)
	end
	def getMaterias()
		return @materias
	end
	def getNota(materia)
		return @notas[materia]
	end
	def getMencao()
		mencao = Hash.new(5)
		for i in 0..4
			mencao[@materias[i]] = detMencao(@notas[@materias[i]])
			puts @notas[@materias[i]]
		end
		return mencao
	end
end

aluno = Aluno.new

materias = ['Fisica', 'Calculo', 'APC', 'IAL', 'SD']
notas = [-1, 10, 11, 6, 8]
materias_ = []
notas_ = []
mencao_ = {}

aluno.setMaterias(materias)
aluno.setNotas(notas)
materias_ = aluno.getMaterias()
notas_ = aluno.getNota(materias[2])
mencao_ = aluno.getMencao()

puts materias_
puts notas_
puts mencao_